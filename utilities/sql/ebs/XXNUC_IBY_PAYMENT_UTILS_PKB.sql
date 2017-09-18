CREATE OR REPLACE
PACKAGE BODY XXNUC_IBY_PAYMENT_UTILS_PKG as


gc_pkg_name VARCHAR2(200) := 'XXNUC_IBY_PAYMENT_UTILS_PKG';
gc_debug_enabled     VARCHAR2(1) := nvl(fnd_profile.value('AFLOG_ENABLED'),'N');



PROCEDURE log_message(p_text            IN VARCHAR2
                      ,p_log_level      IN NUMBER   DEFAULT FND_LOG.LEVEL_STATEMENT
                      ,p_module_name    IN VARCHAR2 DEFAULT NULL
                     )
IS

lc_module_name   VARCHAR2(250);
BEGIN
 
   IF (gc_debug_enabled = 'Y')
   THEN
       lc_module_name := 'xxnuc.'||p_module_name;
     IF FND_global.conc_request_id <> -1
     THEN
      fnd_file.put_line(fnd_file.log,'DEBUG INFO: '||lc_module_name||' - '||p_text);
      RETURN;
     ELSE
      FND_LOG.STRING(p_log_level, lc_module_name, p_text);    
     END IF;
   END IF;
END log_message;


PROCEDURE publish_void_payment(x_retmsg OUT VARCHAR2
                              ,x_retcode OUT VARCHAR2
			      ,p_run_date IN VARCHAR2 DEFAULT NULL
			      )
IS
 CURSOR c_get_voided_checks (cp_from_date IN DATE, cp_to_date IN DATE) 
 IS
 SELECT apc.check_id, apc.org_id FROM iby_payments_all pay, ap_checks_all apc
 WHERE TRUNC(pay.void_date) between cp_from_date AND cp_to_date
 AND apc.payment_id = pay.payment_id
 AND pay.payment_status = 'VOID'
 ;
  -- Simple Type Variable declaration

 lc_proc_name             VARCHAR2(200) := 'publish_void_payment';
 ld_run_from_date              DATE;
 ld_run_to_date              DATE;
 lb_save              boolean;
BEGIN

 x_retcode := '0';
 x_retmsg := '';
 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 

    log_message(p_text => lc_proc_name||' (+) '
                                     ,p_module_name => lc_proc_name       
                                        );  
 --ld_run_to_date := TRUNC(SYSDATE - 1);

IF p_run_date IS NULL
THEN

  ld_run_from_date := NVL(TO_DATE(fnd_profile.value('XXNUC_AP_VOID_CHECK_PUBLISH_LAST_RUNDATE'),'YYYY/MM/DD HH24:MI:SS'),TRUNC(SYSDATE-1));
  --ld_run_to_date := TRUNC(SYSDATE - 1);
  
  IF ld_run_from_date > TRUNC(SYSDATE - 1)
  THEN
    ld_run_to_date := ld_run_from_date;
  ELSE 
    ld_run_to_date := TRUNC(SYSDATE - 1);
  END IF;

   lb_save := fnd_profile.SAVE('XXNUC_AP_VOID_CHECK_PUBLISH_LAST_RUNDATE',TO_CHAR(ld_run_to_date,'YYYY/MM/DD HH24:MI:SS'),'SITE');
ELSE 
  ld_run_from_date := TO_DATE(p_run_date,'YYYY/MM/DD HH24:MI:SS');
  ld_run_to_date := TO_DATE(p_run_date,'YYYY/MM/DD HH24:MI:SS');
END IF;




  -- This procedure to be called from the TRIGGER ON 
  -- IBY_PAY_INSTRUCTIONS_ALL table.
  -- Triggers upon the payment_instruction_status changes to "FORMATTED_ELECTRONIC"
  -- IF :NEW.payment_instruction_status ='FORMATTED_ELECTRONIC'
  -- and :OLD.payment_instruction_status <> 'FORMATTED_ELECTRONIC'

    log_message(p_text => lc_proc_name||' From Run Date '||TO_CHAR(ld_run_from_date,'yyyy/mm/dd')||' To Run Date '
                        ||TO_CHAR(ld_run_to_date,'yyyy/mm/dd')
                                     ,p_module_name => lc_proc_name       
                                        );  

  FOR i IN c_get_voided_checks(ld_run_from_date,ld_run_to_date)
  LOOP 
    log_message(p_text => lc_proc_name||' CHECK_ID => '||i.check_id
                                     ,p_module_name => lc_proc_name       
                                        );  
    publish_check_info (x_retmsg,x_retcode,i.org_id,i.check_id);
    IF x_retmsg <> 0 THEN
      RETURN;
    END IF;
  END LOOP;

    log_message(p_text => lc_proc_name||' (-)  '
                                     ,p_module_name => lc_proc_name       
                                        );  

EXCEPTION
WHEN OTHERS THEN
   x_retmsg := 'Unexpected Error in Execution of publish_void_payment '|| SQLERRM;
   x_retcode := 2; 
   ROLLBACK;
   FND_FILE.put_line(fnd_file.LOG,'UnExpected Error while running '||lc_proc_name||x_retmsg);
END publish_void_payment;

  

  PROCEDURE publish_check_info  (x_retmsg OUT VARCHAR2
                                ,x_retcode OUT VARCHAR2
                                 ,p_org_id    in  NUMBER
				 ,p_check_id  in  NUMBER) is

   i_para                         wf_parameter_t;
   l_parameter_list               wf_parameter_list_t := wf_parameter_list_t();
   l_parameter_t wf_parameter_t:= wf_parameter_t(null, null);

   l_event_key       NUMBER;
   lc_proc_name             VARCHAR2(200) := 'publish_check_info';
  BEGIN
   x_retcode := '0';
   x_retmsg := '';
   lc_proc_name := gc_pkg_name||'.'||lc_proc_name;

   log_message(p_text => lc_proc_name||' Check Id => '||p_check_id
                                     ,p_module_name => lc_proc_name       
                                        );
     select ap_payment_event_s.nextval
     into   l_event_key
     from   sys.dual;

   log_message(p_text => lc_proc_name||' Event Key  '||l_event_key
                                     ,p_module_name => lc_proc_name       
                                        );
     l_parameter_t.setName('CHECK_ID');
     l_parameter_t.setVALUE(p_check_id);
     l_parameter_list.extend;
     l_parameter_list(1) := l_parameter_t;

     l_parameter_t.setName('ORG_ID');
     l_parameter_t.setVALUE(p_org_id);
     l_parameter_list.extend;
     l_parameter_list(2) := l_parameter_t;

   log_message(p_text => lc_proc_name||' Raising Event oracle.apps.ap.payment  '
                                     ,p_module_name => lc_proc_name       
                                        );
      wf_event.raise(
                p_event_name => 'oracle.apps.ap.payment',
                p_event_key => l_event_key,
                p_event_data => null,
                p_parameters => l_parameter_list
                );

      l_parameter_list.DELETE;
   log_message(p_text => lc_proc_name||' (-) '
                                     ,p_module_name => lc_proc_name       
                                        );

EXCEPTION
WHEN OTHERS THEN
   x_retmsg := 'Unexpected Error in Execution of create_osr '|| SQLERRM;
   x_retcode := 2; 
   FND_FILE.put_line(fnd_file.LOG,'UnExpected Error while running '||lc_proc_name||x_retmsg);
   ROLLBACK;
 END publish_check_info;

-- SUBSCRIPTION procedure
-- Attach a Custom Workflow (Triggering on the above event) 
-- Attach the below PLSQL rule function to the above business event
-- This subscription rule will ensure that the workflow is triggered only on certain conditions
 FUNCTION subcribe_payment_formatted  (p_subscription in RAW,
                         p_event        in out NOCOPY WF_EVENT_T) return VARCHAR2
IS

 l_rule                  VARCHAR2(20);
 l_parameter_list        wf_parameter_list_t := wf_parameter_list_t();
 l_parameter_t           wf_parameter_t:= wf_parameter_t(null, null);
 i_parameter_name        l_parameter_t.name%type;
 i_parameter_value       l_parameter_t.value%type;
 i                       pls_integer;

 l_payment_instruction_id  NUMBER; 
 l_org_id                  NUMBER;  
 lc_proc_name             VARCHAR2(200) := 'subcribe_payment_formatted';
BEGIN

   lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
  -- This procedure to be called from the TRIGGER ON 
  -- IBY_PAY_INSTRUCTIONS_ALL table.
  -- Triggers upon the payment_instruction_status changes to "FORMATTED_ELECTRONIC"
  -- IF :NEW.payment_instruction_status ='FORMATTED_ELECTRONIC'
  -- and :OLD.payment_instruction_status <> 'FORMATTED_ELECTRONIC'

    log_message(p_text => lc_proc_name||' (+)'
                                     ,p_module_name => lc_proc_name       
                                        );  


    l_parameter_list := p_event.getParameterList();
       
	if l_parameter_list is not null
        then
                i := l_parameter_list.FIRST;
                while ( i <= l_parameter_list.LAST )
                loop
                   log_message(p_text => lc_proc_name||' '||l_parameter_list(i).getName() ||'  => '||l_parameter_list(i).getValue()
                                     ,p_module_name => lc_proc_name       
                                        );  
                        i := l_parameter_list.NEXT(i);
                end loop;
          end if;

   --commit;
   
  -- mo_global.set_policy_context('S',l_org_id);

   -- PLEASE NOTE: PUT condition that you may want to be evaluated
   -- like presence of already an approval workflow for this payment instruction id (user item key)
   -- If condition satisifies then call the wf_rule.default_rule. This will ensure that the workflow attached the subscription
   -- is triggered
   -- If false, then no workflow is spanned.
   IF TRUE THEN
     l_rule :=  wf_rule.default_rule(p_subscription,p_event);
   END if;

    log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        );  
   return ('SUCCESS');

END subcribe_payment_formatted; 


END XXNUC_IBY_PAYMENT_UTILS_PKG;
/
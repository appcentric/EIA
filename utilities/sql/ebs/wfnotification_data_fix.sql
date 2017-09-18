-- 3/4/2011
-- Vivek Srinivasan
-- Mass Abort or Cancel Response notifications (Event Error Notifications)
-- Check the variable declared to modify

SET serveroutput on
DECLARE
lc_response_type varchar2(200) := 'RESPOND' ; --Othe valid value is 'CANCEL'
lc_response_code varchar2(200) := 'ABORT'; --If the valuee of response type is RESPOND, then -- other valid values are 'RAISE_KEY',REASSIGN,'RAISE_KEY_DATA'
lc_commit_size number := 50;
ld_date_cutoff  DATE := TRUNC(SYSDATE) - 1;
lc_event_name VARCHAR2(240) :=  'oracle.apps.ap.payment'; --'oracle.apps.ar.hz.OrgBO.update';
cursor lcu_nids (cp_event_name IN VARCHAR2) 
IS
select wn.notification_id from wf_notifications wn
where wn.status='OPEN' and 
exists (select 1 from wf_notification_attributes wna
 where wna.name='EVENT_NAME' and wna.text_value = lc_event_name and wna.notification_id = wn.notification_id)
AND wn.begin_date <= ld_date_cutoff 
;
ln_cntr NUMBER := 0;
BEGIN
FOR i IN lcu_nids(lc_event_name)
LOOP
ln_cntr := ln_cntr +1;
IF lc_response_type = 'RESPOND'
THEN 
   WF_NOTIFICATION.SetAttrText(nid => i.notification_id, aname => 'RESULT', avalue => 'ABORT');
   wf_notification.Respond(nid             => i.notification_id);
ELSIF lc_response_type = 'CANCEL'
THEN
   wf_notification.cancel(nid             => i.notification_id);
ELSE 
  null;
END IF;
--dbms_output.put_line('Inside Loop '||lc_response_type||':'||lc_response_code||':'||i.notification_id);
IF ln_cntr = lc_commit_size
THEN
  commit;
  ln_cntr := 0;
END IF;
END LOOP;
COMMIT;
END ;                  
/
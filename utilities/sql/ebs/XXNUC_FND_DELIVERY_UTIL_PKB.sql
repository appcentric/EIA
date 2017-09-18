create or replace package body XXNUC_FND_DELIVERY_UTIL
IS

gc_pkg_name VARCHAR2(200) := 'XXNUC_FND_DELIVERY_UTIL';
gc_debug_enabled     VARCHAR2(1) := 'Y' ; --nvl(fnd_profile.value('AFLOG_ENABLED'),'N');

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

 procedure launch_opp_delivery (x_retmsg  OUT VARCHAR2
                               ,x_retcode  OUT VARCHAR2
			      			   ,request_id IN NUMBER
							   ,argument1  IN VARCHAR2
							   ,argument2  IN VARCHAR2
							   ,argument3  IN VARCHAR2
							   ,argument4  IN VARCHAR2
							   ,argument5  IN VARCHAR2
							   ,argument6  IN VARCHAR2
							   ,argument7  IN VARCHAR2
							   ,argument8  IN VARCHAR2
							   ,argument9  IN VARCHAR2
							   ,argument10  IN VARCHAR2
							   ,nls_language  IN VARCHAR2			      			   
                               )
IS
l_wait_interval    NUMBER         DEFAULT 10;
l_max_wait         NUMBER         DEFAULT 1000;
l_request_phase    VARCHAR2 (100);
l_request_status   VARCHAR2 (100);
l_dev_phase        VARCHAR2 (100);
l_dev_status       VARCHAR2 (100);
l_req_mesg         VARCHAR2 (100);
l_req_status       BOOLEAN;
lc_proc_name             VARCHAR2(200) := 'launch_opp_delivery';

l_delivery_opts_obj xxnuc_delivery_opts_obj;
l_delivery_opts_tbl xxnuc_delivery_opts_tbl := xxnuc_delivery_opts_tbl();
l_messages_tbl  oe_message_obj_t;
l_request_id      NUMBER := 0; 

cursor c_get_child_requests (cp_request_id IN NUMBER)
IS
select fcr.request_id from fnd_concurrent_requests fcr  
where fcr.parent_request_id = cp_request_id
--and is_sub_request = 'Y'
;
ln_request_count NUMBER := 0;
has_more_requests BOOLEAN := false;
l_file_size      NUMBER := 0;

BEGIN

 x_retcode := '0';
 x_retmsg := '';
 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 

    log_message(p_text => lc_proc_name||' (+) request_id = >'||request_id||chr(10)
                                       ||' argument1 => '||argument1||chr(10)
                                       ||' argument2 => '||argument2||chr(10)
                                       ||' argument3 => '||argument3||chr(10)
                                       ||' argument4 => '||argument4||chr(10)
                                       ||' argument5 => '||argument5||chr(10)
                                       ||' argument6 => '||argument6||chr(10)
                                       ||' argument7 => '||argument7||chr(10)
                                       ||' argument8 => '||argument8||chr(10)
                                       ||' argument9 => '||argument9||chr(10) 
                                       ||' argument10 => '||argument10||chr(10)  
                                       ||' nls_language => '||nls_language                                                                                                                                                                                                                                                                                                                                                                                                    
                                     ,p_module_name => lc_proc_name       
                                        );  
 
     log_message(p_text => lc_proc_name||' Setting the delivery options... '
                                     ,p_module_name => lc_proc_name       
                                        );  
	l_delivery_opts_obj := xxnuc_delivery_opts_obj(argument1,argument2,argument3
												,argument4,argument5,argument6
												,argument7,argument8
												,argument9,argument10,nls_language);
	l_delivery_opts_tbl.extend(1);
	l_delivery_opts_tbl(l_delivery_opts_tbl.last) := l_delivery_opts_obj;
 
   select count(1) into ln_request_count 
   from fnd_concurrent_requests fcr 
   where fcr.request_id = launch_opp_delivery.request_id
   ;
   IF (ln_request_count = 0)
   THEN
     x_retmsg := 'Not a valid Request ID '||launch_opp_delivery.request_id;
     x_retcode := '2';
     return;
   END IF;
   
   
   l_request_id := launch_opp_delivery.request_id;

   

        log_message(p_text => lc_proc_name||' Valid Request ID  '||l_request_id
                                        ||'. Waiting for the request to complete.. '
                                     ,p_module_name => lc_proc_name       
                                        );  
          
         l_req_status := fnd_concurrent.wait_for_request (l_request_id,
                                                     l_wait_interval,
                                                     l_max_wait,
                                                     l_request_phase,
                                                     l_request_status,
                                                     l_dev_phase,
                                                     l_dev_status,
                                                     l_req_mesg );


        select ofile_size into l_file_size 
        from fnd_concurrent_requests where request_id = l_request_id
        ;


        log_message(p_text => lc_proc_name||' Request Phase  '||l_request_phase||', Request Status '||l_request_status||', Output File Size '||l_file_size
                                     ,p_module_name => lc_proc_name       
                                        );  
                                                                                        
        IF UPPER (l_request_phase) = 'COMPLETED' AND l_file_size <> 0
        THEN

          log_message(p_text => lc_proc_name||' Invoking the set_delivery_options'
                                     ,p_module_name => lc_proc_name       
                                        );  
			set_delivery_options (p_request_id       => request_id
                                 ,p_delivery_options => l_delivery_opts_tbl
                        	     ,x_retmsg          => x_retmsg
                                 ,x_retcode         => x_retcode
                                 );
        END IF;

        log_message(p_text => lc_proc_name||' Fetching Child Requests for Request Id '||l_request_id
                                     ,p_module_name => lc_proc_name       
                                        );  
                                                      
        FOR j in c_get_child_requests(l_request_id)
        LOOP

        log_message(p_text => lc_proc_name||' Child Requests exists for Request Id '||l_request_id||' launch_opp_delivery for '||j.request_id
                                     ,p_module_name => lc_proc_name       
                                        );  
		   launch_opp_delivery (x_retmsg  => x_retmsg
                               ,x_retcode => x_retcode
			      			   ,request_id => j.request_id
							   ,argument1  => argument1
							   ,argument2  => argument2
							   ,argument3  => argument3
							   ,argument4  => argument4
							   ,argument5  => argument5
							   ,argument6 => argument6
							   ,argument7 => argument7
							   ,argument8  => argument8
							   ,argument9  => argument9
							   ,argument10 => argument10
							   ,nls_language  => nls_language			      			   
                               );       
           IF   x_retcode <> 0
           THEN
             return;
           END IF;                             
        END LOOP;
       
     log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        ); 

EXCEPTION
 WHEN OTHERS THEN
  x_retmsg := 'Unexpected Error encountered while executing the procedure XXNUC_FND_DELIVERY_UTIL.launch_opp_delivery. Error - '||SQLERRM;
  x_retcode := '2';
   FND_FILE.put_line(FND_FILE.log, x_retmsg);

     log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        ); 
END launch_opp_delivery; 
 			                  


procedure set_delivery_options (p_request_id        in fnd_concurrent_requests.request_id%type
                                 ,p_delivery_options in xxnuc_delivery_opts_tbl
                      			 ,x_retmsg  OUT VARCHAR2
                                 ,x_retcode  OUT VARCHAR2
                                 )
 is 
 
l_success_flag varchar2(1);
lc_proc_name             VARCHAR2(200) := 'launch_opp_delivery';
l_group_id     varchar2(240);    
begin

 x_retcode := '0';
 x_retmsg := '';
 lc_proc_name := gc_pkg_name||'.'||lc_proc_name;
 

    log_message(p_text => lc_proc_name||' (+) Request Id => '||p_request_id
                                      ||' Total number of Delivery Options => '||p_delivery_options.count
                                     ,p_module_name => lc_proc_name       
                                        );  
 


  FOR i IN nvl(p_delivery_options.first,1)..NVL(p_delivery_options.last,0)
  loop

    log_message(p_text => lc_proc_name||' Inserting into fnd_conc_pp_actions with the following data '||chr(10)
    								    ||'request_id = >'||p_request_id||chr(10)
                                       ||' argument1 => '||p_delivery_options(i).argument1||chr(10)
                                       ||' argument2 => '||p_delivery_options(i).argument2||chr(10)
                                       ||' argument3 => '||p_delivery_options(i).argument3||chr(10)
                                       ||' argument4 => '||p_delivery_options(i).argument4||chr(10)
                                       ||' argument5 => '||p_delivery_options(i).argument5||chr(10)
                                       ||' argument6 => '||p_delivery_options(i).argument6||chr(10)
                                       ||' argument7 => '||p_delivery_options(i).argument7||chr(10)
                                       ||' argument8 => '||p_delivery_options(i).argument8||chr(10)
                                       ||' argument9 => '||p_delivery_options(i).argument9||chr(10) 
                                       ||' argument10 => '||p_delivery_options(i).argument10||chr(10)  
							           ||' nls_language => '||p_delivery_options(i).nls_language                                                                                                                                                                                                                                                                                                                                                                                                    
                                     ,p_module_name => lc_proc_name       
                                        );  
        delete from fnd_conc_pp_actions where concurrent_request_id = p_request_id
        --and action_type='7' and argument1 = p_delivery_options(i).argument1
        ;
        
        INSERT INTO fnd_conc_pp_actions
             (concurrent_request_id,action_type,
	      status_s_flag, status_w_flag, status_f_flag,
	      last_update_date, last_updated_by, creation_date,
	      last_update_login, created_by,
	      completed, sequence,
	      argument1, argument2, argument3, argument4, argument5,
	      argument6, argument7, argument8, argument9, argument10,
	      ops_instance)
          values
              (p_request_id, 7,
               'Y', 'Y', 'N',
	       sysdate, fnd_global.user_id, sysdate,
	       (select last_update_login from fnd_concurrent_requests where request_id = p_request_id), fnd_global.user_id,
	       'N', i,
	       p_delivery_options(i).argument1, p_delivery_options(i).argument2,
	       p_delivery_options(i).argument3, p_delivery_options(i).argument4,
	       p_delivery_options(i).argument5, p_delivery_options(i).argument6,
	       p_delivery_options(i).argument7, p_delivery_options(i).argument8,
	       p_delivery_options(i).argument9, p_delivery_options(i).argument10,
	       (select ops_instance from fnd_concurrent_requests where request_id = p_request_id));
	       
   END LOOP;   
   
   COMMIT;

    log_message(p_text => lc_proc_name||' Calling the OPP Request fnd_cp_opp_req.select_postprocessor... '
                                     ,p_module_name => lc_proc_name       
                                        );  

    fnd_cp_opp_req.select_postprocessor(opp_name  => l_group_id,
										errcode   => x_retcode,
			 							requestid => p_request_id);

    log_message(p_text => lc_proc_name||' Post Processor Name.. '||l_group_id
                                     ,p_module_name => lc_proc_name       
                                        ); 

    if l_group_id is not null and x_retcode = 0
    then 	 	
        log_message(p_text => lc_proc_name||' Calling the OPP Request fnd_cp_opp_req.postprocess '
                                     ,p_module_name => lc_proc_name       
                                        );                                                 
		fnd_cp_opp_req.postprocess(reqid         => p_request_id,
								groupid      => l_group_id, --'OPP'||fnd_cp_opp_ipc.select_random_subscriber,
								success_flag => l_success_flag,
								errmsg       => x_retmsg);
    log_message(p_text => lc_proc_name||' Return flag ... '||l_success_flag||' Return Message '||x_retmsg
                                     ,p_module_name => lc_proc_name       
                                        );  
			 												
		 IF l_success_flag = 'N' THEN
			 x_retcode := 2;
		 END IF;									
    else
              log_message(p_text => lc_proc_name||' Unable to select a Post Processor ensure that the OPP is running..'
                                     ,p_module_name => lc_proc_name       
                                        );     

		 IF l_success_flag = 'N' THEN
			 x_retcode := 2;
			 x_retmsg := ' Unable to select a Post Processor ensure that the OPP is running..';
		 END IF;	                                           								
    end if;

     log_message(p_text => lc_proc_name||' (-)'
                                     ,p_module_name => lc_proc_name       
                                        );    		 				
END set_delivery_options;
                          
                                 
END XXNUC_FND_DELIVERY_UTIL;
/
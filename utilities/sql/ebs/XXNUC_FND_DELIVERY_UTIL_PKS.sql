create or replace package XXNUC_FND_DELIVERY_UTIL
AUTHID current_user 
is 
procedure set_delivery_options (p_request_id        in fnd_concurrent_requests.request_id%type
                                 ,p_delivery_options in xxnuc_delivery_opts_tbl
                      			 ,x_retmsg  OUT VARCHAR2
                                 ,x_retcode  OUT VARCHAR2
                                 );
                                 
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
                               );
                                                                
END XXNUC_FND_DELIVERY_UTIL;
/
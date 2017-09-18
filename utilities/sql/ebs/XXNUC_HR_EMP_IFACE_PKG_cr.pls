create or replace 
package XXNUC_HR_EMP_IFACE_PKG
AUTHID current_user 
is 



TYPE emp_rec IS RECORD  (last_name                     VARCHAR2(40)  
						,first_name                    VARCHAR2(40)  
						,middle_initial                VARCHAR2(40)  
						,suffix                        VARCHAR2(30)  
						,source_system_employee_number VARCHAR2(50)  
						,gender                        CHAR(1)       
						,ledger                        VARCHAR2(30)  
						,employment_date               DATE          
						,employment_end_date           DATE          
						,email_address                 VARCHAR2(50)  
						,address_line1                 VARCHAR2(50)  
						,address_line2                 VARCHAR2(50)  
						,address_line3                 VARCHAR2(50)  
						,city                          VARCHAR2(25)  
						,county                        VARCHAR2(25)  
						,state                         VARCHAR2(25)  
						,zip_code                      VARCHAR2(25)  
						,country                       VARCHAR2(25)  
						,telephone                     NUMBER(15)    
						,job                           VARCHAR2(50)  
						,supervisor                    VARCHAR2(40)  
						,dept                          VARCHAR2(50)  
						,set_of_books_id               NUMBER(5)     
						,segment1                      VARCHAR2(10)  
						,segment2                      VARCHAR2(10)  
						,segment3                      VARCHAR2(10)  
						,segment4                      VARCHAR2(10)  
						,segment5                      VARCHAR2(10)  
						,segment6                      VARCHAR2(10)  
						,segment7                      VARCHAR2(10)  
						,status                        VARCHAR2(25)  
						,request_id                    NUMBER        
						,process_status                VARCHAR2(30)  
						,process_date                  DATE          
						,error_msg                     VARCHAR2(240)
						,legacy_employee_number        VARCHAR2(15)
						); 


 gc_process_status_NEW        CONSTANT VARCHAR2(10)  := 'New';
 gc_process_status_PROCESSED  CONSTANT VARCHAR2(10)  := 'PROCESSED';
 gc_process_status_ERROR      CONSTANT VARCHAR2(10)    := 'ERROR';
 gc_appl_short_name_SQLGL     CONSTANT VARCHAR2(10)    := 'SQLGL';
 gc_key_flex_code_GL          CONSTANT VARCHAR2(10)    := 'GL#';
 
 gc_mode_Interface  CONSTANT VARCHAR2(20)    := 'Interface';
 gc_mode_Conversion  CONSTANT VARCHAR2(20)   := 'Conversion';
    
 gc_def_business_group        per_business_groups.name%TYPE :='Nucor Steel Business Group';

 gn_job_group_id                CONSTANT NUMBER := 21;
 
 gc_Employee_person_type        CONSTANT VARCHAR2(20)  := 'Employee';
 gc_ExEmployee_person_type      CONSTANT VARCHAR2(20)  := 'Ex-employee';
  
 gc_emp_status_CREATE           CONSTANT VARCHAR2(10)  := 'CREATE';
 gc_emp_status_UPDATE           CONSTANT VARCHAR2(10)  := 'UPDATE'; 
 gc_emp_status_TERMINATE        CONSTANT VARCHAR2(10)  := 'TERMINATE';
 gc_emp_status_REHIRE           CONSTANT VARCHAR2(10)  := 'REHIRE'; 
  
gc_primary_flag_Y                CONSTANT VARCHAR2(1)  := 'Y';
gc_primary_flag_N                CONSTANT VARCHAR2(1)  := 'N';
gc_emp_address_style             CONSTANT VARCHAR2(10)  := 'US';


 -- Validation Messages
 gc_business_group_invalid_msg    CONSTANT VARCHAR2(2000) := 'No business group available with name Nucor SPS Business Group.';
 gc_employee_type_invalid_msg     CONSTANT VARCHAR2(2000) := 'No person type available for employee number.';
 gc_employee_status_invalid_msg   CONSTANT VARCHAR2(2000) := 'Invalid Employee Status.';
 gc_invalid_ledger_msg            CONSTANT VARCHAR2(2000) := 'Invalid Ledger Name.';
 gc_ccid_gen_err_msg              CONSTANT VARCHAR2(2000) := 'Error in generating CODE_COMBINATION_ID ';
 gc_unexp_exc_msg                 CONSTANT VARCHAR2(2000) := 'UNEXPECTED ERROR';
 gc_invalid_exemp_msg             CONSTANT VARCHAR2(2000) := 'Invalid Ex-employee record. Unable to obtain the Ex-employee record';
 gc_invalid_emp_msg               CONSTANT VARCHAR2(2000) := 'Invalid Employee record. Unable to obtain the Employee record';
 
 procedure process_employees   (x_retmsg  OUT VARCHAR2
                               ,x_retcode  OUT VARCHAR2
                               ,p_mode          IN     VARCHAR2
                               ,p_ledger_name   IN     VARCHAR2
                               ,p_create_missing_jobs IN VARCHAR2 DEFAULT 'N'
                               );
                               
 -- This procedure can be called standalone. Also inovked from process_employees based on the p_create_missing_jobs parameter                              
 PROCEDURE create_missing_jobs(x_retmsg  OUT VARCHAR2
                      ,x_retcode  OUT VARCHAR2
                      ,p_request_id   IN     NUMBER DEFAULT -1
                   );  
                                                                                 
END XXNUC_HR_EMP_IFACE_PKG;
/
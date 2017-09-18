CREATE OR REPLACE PACKAGE BODY APPS.XXNUC_GL_INTERFACE_WRAPPER_PK
AS 

  PROCEDURE submit_gl_import(request_id OUT NUMBER
                              ,return_code OUT VARCHAR2
                             ,return_message OUT VARCHAR2
                             ,application IN VARCHAR2 DEFAULT NULL
                             ,program     IN VARCHAR2 DEFAULT NULL
                             ,description IN VARCHAR2 DEFAULT NULL
                             ,start_time  IN VARCHAR2 DEFAULT NULL
                             ,sub_request IN INTEGER
			     ,je_source_name      IN VARCHAR2 default NULL
			     ,group_id            IN NUMBER default NULL
                             ,interface_run_id    IN NUMBER default NULL
                             ,set_of_books_id     IN NUMBER default NULL
                             ,suspense_flag        IN varchar2 default NULL  
                             ,from_accouting_date IN DATE default NULL
                             ,to_accounting_date  IN DATE default NULL
                             ,summary_flag        IN varchar2 default NULL
			     ,import_desc_flex_flag IN VARCHAR2 default NULL
                             ,data_security_flag  IN varchar2 default NULL
)
IS 

BEGIN 

      GL_INTERFACE_CONTROL_PKG.insert_row(interface_run_id,je_source_name,set_of_books_id,group_id);

      XXNUC_FND_REQUEST_WRAPPER_PK.submit_request(request_id
					       ,return_code
                                               ,return_message 
                                               ,application
					       ,program
					       ,description
					       ,start_time
					       ,sub_request
					       ,interface_run_id
					       ,set_of_books_id
					       ,suspense_flag
					       ,from_accouting_date
					       ,to_accounting_date
					       ,summary_flag
					       ,import_desc_flex_flag
					       ,data_security_flag
					      );
    
END submit_gl_import;
END XXNUC_GL_INTERFACE_WRAPPER_PK;
/
 /*=======================================================================+
  | FILENAME XXNUC_AR_POST_INVOICE_PKS.sql                                |
  | 								          |
  | Created By:  Kumar.S						  |
  | Description: This program is used to populate the custom table after  |
  |              after the auto invoice programs completes.               |
  | History								  |
  |	    Date :12-AUG-2013						  |
  |                                                                       |
  =======================================================================*/
 CREATE OR REPLACE PACKAGE XXNUC_AR_POST_INVOICE_PKG AS
  
  -- =======================================================================
  -- Procedure Name: populate_attributes
  -- Usage: Call this conc procedure after the Auto invoice Process
  -- =======================================================================
  PROCEDURE populate_attributes( p_error_buf         OUT VARCHAR2
                               , p_ret_code          OUT NUMBER );
                               
 END XXNUC_AR_POST_INVOICE_PKG;
 /
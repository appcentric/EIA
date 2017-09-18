  /*=======================================================================+
   | FILENAME XXNUC_AR_POST_INVOICE_PKB.sql                                |
   | 								           |
   | Created By:  Kumar.S						   |
   | Description: This program is used to populate the custom table after  |
   |              after the auto invoice programs completes.               |
   | History								   |
   |	    Date :12-AUG-2013						   |
   |                                                                       |
  =======================================================================*/
 CREATE OR REPLACE PACKAGE BODY XXNUC_AR_POST_INVOICE_PKG AS
 
 -- =======================================================================
 -- Procedure Name: populate_attributes
 -- Usage: Call this conc procedure after the Auto invoice Process
 -- =======================================================================
 PROCEDURE populate_attributes( p_error_buf         OUT VARCHAR2
                              , p_ret_code          OUT NUMBER )IS
                        
 
   CURSOR stg_cur IS
     SELECT STG.ROWID ROW_ID,
	    RCTL.INTERFACE_LINE_ATTRIBUTE1,
		   RCTA.CUSTOMER_TRX_ID,
		   RCTL.CUSTOMER_TRX_LINE_ID
	    FROM XXNUC.XXNUC_AR_INV_LINE_ATTRIBUTES STG,
	  RA_CUSTOMER_TRX RCTA,
	  RA_CUSTOMER_TRX_LINES RCTL
     WHERE   1 = 1
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE1, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE1, 'X')
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE2, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE2, 'X')
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE3, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE3, 'X')
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE4, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE4, 'X')
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE5, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE5, 'X')
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE6, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE6, 'X')
       AND NVL (STG.INTERFACE_LINE_ATTRIBUTE7, 'X')    = NVL (RCTL.INTERFACE_LINE_ATTRIBUTE7, 'X')
       AND STG.INTERFACE_LINE_ATTRIBUTE1               = RCTA.TRX_NUMBER
       AND RCTA.CUSTOMER_TRX_ID                        = RCTL.CUSTOMER_TRX_ID
       AND STG.CUSTOMER_TRX_ID is null;
	  
 TYPE fetch_array IS TABLE OF stg_cur%ROWTYPE;
	   stg_array fetch_array;

 l_start_time     date;
 l_end_time       date;
 
 BEGIN
 l_start_time     :=sysdate;
 
 OPEN stg_cur;
    LOOP
      FETCH stg_cur BULK COLLECT INTO stg_array LIMIT 1000;
      FORALL i IN 1..stg_array.COUNT
	UPDATE XXNUC.XXNUC_AR_INV_LINE_ATTRIBUTES
	SET CUSTOMER_TRX_ID  =  stg_array(i).CUSTOMER_TRX_ID
       ,CUSTOMER_TRX_LINE_ID = stg_array(i).CUSTOMER_TRX_LINE_ID
	WHERE ROWID = stg_array(i).ROW_ID;
      EXIT WHEN stg_cur%NOTFOUND;
    END LOOP;

    CLOSE stg_cur;
    COMMIT;
    l_end_time   := sysdate;
 
   Fnd_File.PUT_LINE( Fnd_File.OUTPUT, '===========================================');
   Fnd_File.PUT_LINE( Fnd_File.OUTPUT, 'Start Time            = '|| to_char(l_end_time,'DD-MON-RRRR HH:MI:SS'));
   Fnd_File.PUT_LINE( Fnd_File.OUTPUT, 'End Time              = '|| to_char(l_end_time,'DD-MON-RRRR HH:MI:SS'));
 
 Fnd_File.PUT_LINE( Fnd_File.OUTPUT, '===========================================');

 EXCEPTION
 
 WHEN OTHERS THEN
 
   Fnd_File.PUT_LINE( Fnd_File.OUTPUT, '===========================================');
   Fnd_File.PUT_LINE( Fnd_File.OUTPUT, 'Error: '|| sqlerrm );
   Fnd_File.PUT_LINE( Fnd_File.OUTPUT, '===========================================');
 
 END populate_attributes;
   
 END XXNUC_AR_POST_INVOICE_PKG;
 /
 
 
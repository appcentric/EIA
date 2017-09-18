/*=======================================================================+
   | FILENAME XXNUC_AR_INV_LINE_ATTRIBUTES_IDX.sql                         |
   | 								           |
   | Created By:  Kumar.S						   |
   | Description: Indexes						   |
   | History								   |
   |	    Date :12-AUG-2013						   |
   |                                                                       |
=======================================================================*/

CREATE INDEX XXNUC.XXNUC_AR_INV_LINE_ATTRIB_N1 ON XXNUC.XXNUC_AR_INV_LINE_ATTRIBUTES ( CUSTOMER_TRX_ID);

CREATE INDEX XXNUC.XXNUC_AR_INV_LINE_ATTRIB_N2 ON XXNUC.XXNUC_AR_INV_LINE_ATTRIBUTES ( INTERFACE_LINE_ATTRIBUTE1);

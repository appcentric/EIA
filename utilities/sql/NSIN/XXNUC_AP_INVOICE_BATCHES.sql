--------------------------------------------------------
--  File created - Wednesday-September-10-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XXNUC_AP_INVOICE_BATCHES
--------------------------------------------------------
DROP TABLE XXNUC_AP_INVOICE_BATCHES CASCADE CONSTRAINTS;
  CREATE TABLE "XXNUC"."XXNUC_AP_INVOICE_BATCHES" 
   (	"BATCH_KEY" NUMBER, 
	"BATCH_NAME" VARCHAR2(120 BYTE), 
	"CREATION_DATE" DATE, 
	"LAST_UPDATE_DATE" DATE, 
	"CREATED_BY" VARCHAR2(240 BYTE), 
	"LAST_UPDATED_BY" VARCHAR2(240 BYTE), 
	"PROCESS_DATE" DATE, 
	"PROCESS_STATUS" VARCHAR2(100 BYTE), 
	"ERROR_MSG" VARCHAR2(2000 BYTE), 
	"REQUEST_ID" VARCHAR2(100 BYTE)
   )  ;

-------------------------------------------------------------
--  SEQUENCE for Table XXNUC_AP_INVOICE_BATCHES
--------------------------------------------------------
DROP SEQUENCE XXNUC_AP_INVOICE_BATCHES_S ;

CREATE SEQUENCE  XXNUC_AP_INVOICE_BATCHES_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_AP_INVOICE_BATCHES_N1 ON XXNUC_AP_INVOICE_BATCHES ( BATCH_KEY);
--------------------------------------------------------
--  File created - Wednesday-September-10-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XXNUC_AR_BATCH_STG
--------------------------------------------------------
DROP TABLE XXNUC_AR_BATCH_STG CASCADE CONSTRAINTS;
  CREATE TABLE "XXNUC"."XXNUC_AR_BATCH_STG" 
   (	"RECORD_ID" NUMBER, 
	"BATCH_NUMBER" VARCHAR2(30 BYTE), 
	"BATCH_DATE" DATE, 
	"REQUEST_ID" NUMBER, 
	"PROCESS_STATUS" VARCHAR2(30 BYTE), 
	"PROCESS_DATE" DATE, 
	"ERROR_MSG" VARCHAR2(240 BYTE)
   ) ;
--------------------------------------------------------
--  Constraints for Table XXNUC_AR_BATCH_STG
--------------------------------------------------------

  ALTER TABLE "XXNUC"."XXNUC_AR_BATCH_STG" MODIFY ("BATCH_NUMBER" NOT NULL ENABLE);

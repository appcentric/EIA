--------------------------------------------------------
--  File created - Wednesday-September-10-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XXNUC_GL_JE_BATCHES
--------------------------------------------------------
DROP TABLE XXNUC_GL_JE_BATCHES CASCADE CONSTRAINTS;
  CREATE TABLE XXNUC_GL_JE_BATCHES 
   (	"BATCH_KEY" NUMBER, 
	"BATCH_NAME" NUMBER,
	"USER_JE_SOURCE_NAME" VARCHAR2(25 BYTE),	
	"BATCH_DATE" DATE, 
	"PROCESS_STATUS" VARCHAR2(30 BYTE), 
	"PROCESS_DATE" DATE, 
	"CREATION_DATE" DATE,
    "LAST_UPDATE_DATE" DATE, 
    "CREATED_BY" VARCHAR2(240 BYTE),  
    "LAST_UPDATED_BY"  VARCHAR2(240 BYTE),
  	"ERROR_MSG" VARCHAR2(240 BYTE),
	"REQUEST_ID" NUMBER
   ) ;
--------------------------------------------------------
--  Constraints for Table XXNUC_GL_JE_BATCHES
--------------------------------------------------------

DROP SEQUENCE XXNUC_GL_JE_BATCHES_S ;

CREATE SEQUENCE  XXNUC_GL_JE_BATCHES_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_GL_JE_BATCHES_N1 ON XXNUC_GL_JE_BATCHES ( BATCH_KEY);
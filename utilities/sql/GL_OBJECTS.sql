DROP TABLE XXNUC_GL_JE_BATCHES;

CREATE TABLE XXNUC_GL_JE_BATCHES
(
  BATCH_KEY                    NUMBER,
  BATCH_NAME                   VARCHAR2(120 BYTE),
CREATION_DATE                     DATE,         -- Standard Who Columns
  LAST_UPDATE_DATE                DATE,         -- Standard Who Columns
CREATED_BY                        VARCHAR2(240),         -- Standard Who Columns
LAST_UPDATED_BY                   VARCHAR2(240),         -- Standard Who Columns
  PROCESS_DATE                    DATE,         -- Standard Interface Status Columns
  PROCESS_STATUS                  VARCHAR2(100 BYTE), -- Standard Interface Status Columns
  ERROR_MSG                       VARCHAR2(2000 BYTE), -- Standard Interface Status Columns
  REQUEST_ID                      VARCHAR2(100 BYTE) -- Standard Interface Status Columns
);

DROP SEQUENCE XXNUC_GL_JE_BATCHES_S ;

CREATE SEQUENCE  XXNUC_GL_JE_BATCHES_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_GL_JE_BATCHES_N1 ON XXNUC_GL_JE_BATCHES ( BATCH_KEY);


DROP TABLE XXNUC_GL_INTERFACE;


CREATE TABLE XXNUC_GL_INTERFACE
   (	
        GL_INT_KEY                     NUMBER,
	BATCH_NAME                   VARCHAR2(120 BYTE),
        LEDGER                         VARCHAR2(30 BYTE), 
	USER_JE_CATEGORY_NAME          VARCHAR2(25 BYTE), 
	USER_JE_SOURCE_NAME            VARCHAR2(25 BYTE), 
	ACCOUNTED_DR                   NUMBER, 
	ACCOUNTED_CR                   NUMBER, 
	REFERENCE1		       VARCHAR2(100 BYTE), 
	REFERENCE2                     VARCHAR2(240 BYTE), 
	REFERENCE4                     VARCHAR2(100 BYTE), 
	REFERENCE5                     VARCHAR2(240 BYTE), 
	REFERENCE7                     VARCHAR2(240 BYTE), 
	REFERENCE8			VARCHAR2(240 BYTE), 
	REFERENCE10			VARCHAR2(240 BYTE), 
	PERIOD_NAME			VARCHAR2(15 BYTE), 
	ACCOUNT				VARCHAR2(240 BYTE), 
	ATTRIBUTE1			VARCHAR2(240 BYTE), 
	ACTUAL_FLAG			VARCHAR2(2 BYTE), 
	ACCOUNTING_DATE			DATE, 
CREATION_DATE                     DATE,         -- Standard Who Columns
  LAST_UPDATE_DATE                DATE,         -- Standard Who Columns
CREATED_BY                        VARCHAR2(240),         -- Standard Who Columns
LAST_UPDATED_BY                   VARCHAR2(240),         -- Standard Who Columns
  PROCESS_DATE                    DATE,         -- Standard Interface Status Columns
  PROCESS_STATUS                  VARCHAR2(100 BYTE), -- Standard Interface Status Columns
  ERROR_MSG                       VARCHAR2(2000 BYTE), -- Standard Interface Status Columns
  REQUEST_ID                      VARCHAR2(100 BYTE) -- Standard Interface Status Columns
   );

   DROP SEQUENCE XXNUC_GL_INTERFACE_S ;

CREATE SEQUENCE  XXNUC_GL_INTERFACE_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_GL_INTERFACE_N1 ON XXNUC_GL_INTERFACE ( GL_INT_KEY);

 

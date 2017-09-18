-------------------------------------------------------
--  File created - Tuesday-February-24-2015
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XXNUC_QA_DOWNTIME_RESULTS
--------------------------------------------------------
DROP TABLE XXNUC_QA_DOWNTIME_RESULTS CASCADE CONSTRAINTS;

CREATE TABLE XXNUC_QA_DOWNTIME_RESULTS
(
  QA_DOWNTIME_RESULTS_KEY         NUMBER,
  BATCH_NAME                      NUMBER,
  ORGANIZATION_CODE               VARCHAR2(3 BYTE) NOT NULL,
  ASSET_NUMBER                    VARCHAR2(30 BYTE),
  PLAN_ID                         NUMBER,
  PLAN_NAME                       VARCHAR2(30 BYTE) NOT NULL,
  DELAY_ID                        VARCHAR2(150 BYTE), --CHARACTER1 "DELAY_ID",
  DELAY_START_DATE                VARCHAR2(150 BYTE), --CHARACTER2 "DELAY_START_DATE", 
  DELAY_END_DATE                  VARCHAR2(150 BYTE), --CHARACTER3 "DELAY_END_DATE",
  DELAY_CODE                      VARCHAR2(150 BYTE), --CHARACTER4 "DELAY_CODE", 
  DELAY_REASON                    VARCHAR2(150 BYTE), --CHARACTER5 "DELAY_REASON", 
  DELAY_COMMENTS                  VARCHAR2(150 BYTE), --CHARACTER6 "DELAY_COMMENTS", 
  ACTION_DATE                     VARCHAR2(150 BYTE), --CHARACTER7 "ACTION_DATE", 
  ACTION_ITEM                     VARCHAR2(150 BYTE), --CHARACTER8 "ACTION_ITEM", 
  ACTION_RESOLUTION               VARCHAR2(150 BYTE), --CHARACTER9 "ACTION_RESOLUTION", 
  ADD_UPDATE                      VARCHAR2(150 BYTE), --CHARACTER10 "ADD_UPDATE", 
  ACTIVE_INACTIVE                 VARCHAR2(150 BYTE), --CHARACTER11 "ACTIVE_INACTIVE"
  SPEC_NAME                       VARCHAR2(30 BYTE),
  INSERT_TYPE                     NUMBER,
  VALIDATE_FLAG					  NUMBER,	
  MATCHING_ELEMENTS               VARCHAR2(1000 BYTE),
  TRANSACTION_INTERFACE_ID        NUMBER,
  COLLECTION_ID                   NUMBER,
  SOURCE_CODE                     VARCHAR2(30 BYTE),
  SOURCE_LINE_ID                  NUMBER,
  QA_PROCESS_STATUS               NUMBER        NOT NULL,--PROCESS_STATUS QA
  OPERATING_UNIT_ID               NUMBER,
  OPERATING_UNIT                  VARCHAR2(240 BYTE),
  ASSET_GROUP                     VARCHAR2(2000 BYTE) NOT NULL,
  ASSET_INSTANCE_NUMBER           VARCHAR2(30 BYTE) NOT NULL,
  QA_LAST_UPDATE_DATE			  DATE  DEFAULT SYSDATE,--LAST_UPDATE_DATE QA Who Columns
  QA_LAST_UPDATED_BY              NUMBER,			--LAST_UPDATED_BY QA Who Columns
  QA_LAST_UPDATED_BY_NAME         VARCHAR2(100 BYTE),
  QA_CREATION_DATE				  DATE  DEFAULT SYSDATE,	--CREATION_DATE QA Who Columns
  QA_CREATED_BY					  NUMBER,			--CREATED_BY QA Who Columns
  CREATION_DATE              	  DATE NOT NULL,                           -- Standard Who Columns
  LAST_UPDATE_DATE                DATE NOT NULL,                           -- Standard Who Columns
  CREATED_BY                      VARCHAR2(240)DEFAULT 'SOAUSER' NOT NULL, -- Standard Who Columns
  LAST_UPDATED_BY                 VARCHAR2(240)DEFAULT 'SOAUSER' NOT NULL, -- Standard Who Columns
  PROCESS_DATE                    DATE,                                    -- Standard Interface Status Columns
  PROCESS_STATUS                  VARCHAR2(100 BYTE),                      -- Standard Interface Status Columns
  ERROR_MSG                       VARCHAR2(2000 BYTE),                     -- Standard Interface Status Columns
  REQUEST_ID                      VARCHAR2(100 BYTE)                       -- Standard Interface Status Columns
);                          
                           
DROP SEQUENCE XXNUC_QA_DOWNTIME_RESULTS_S ;
CREATE SEQUENCE XXNUC_QA_DOWNTIME_RESULTS_S START WITH 1000 INCREMENT BY 1; --- Used by METER_KEY
CREATE UNIQUE INDEX XXNUC_QA_DOWNTIME_RESULTS_N1 ON XXNUC_QA_DOWNTIME_RESULTS ( QA_DOWNTIME_RESULTS_KEY);
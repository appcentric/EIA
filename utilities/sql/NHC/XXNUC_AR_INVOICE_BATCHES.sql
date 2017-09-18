DROP TABLE EBS_INTF.XXNUC_AR_INVOICE_BATCHES CASCADE CONSTRAINTS;

CREATE TABLE EBS_INTF.XXNUC_AR_INVOICE_BATCHES
(
  BATCH_KEY         NUMBER,
  BATCH_NAME        VARCHAR2(120 BYTE),
  CREATION_DATE     DATE,
  LAST_UPDATE_DATE  DATE,
  CREATED_BY        VARCHAR2(240 BYTE),
  LAST_UPDATED_BY   VARCHAR2(240 BYTE),
  PROCESS_DATE      DATE,
  PROCESS_STATUS    VARCHAR2(100 BYTE),
  ERROR_MSG         VARCHAR2(2000 BYTE),
  REQUEST_ID        VARCHAR2(100 BYTE)
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX EBS_INTF.XXNUC_AR_INVOICE_BATCHES_N1 ON EBS_INTF.XXNUC_AR_INVOICE_BATCHES
(BATCH_KEY)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


CREATE OR REPLACE TRIGGER EBS_INTF.INS_XXNUC_AR_INVOICE_BATCHES  
/******************************************************************************
   NAME:    INS_SYS_HELP_CONTEXT
   PURPOSE: Ensure ID is filled

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/09/2013  Gustave Massong            Created this trigger.

******************************************************************************/
BEFORE INSERT
ON EBS_INTF.XXNUC_AR_INVOICE_BATCHES REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
   IF (:NEW.BATCH_KEY IS NULL) THEN
     SELECT XXNUC_AR_INVOICE_BATCHES_S.NEXTVAL INTO :NEW.BATCH_KEY FROM dual;
   END IF;
END;
/

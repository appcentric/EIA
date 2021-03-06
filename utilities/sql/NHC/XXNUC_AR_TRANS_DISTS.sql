DROP TABLE EBS_INTF.XXNUC_AR_TRANS_DISTS CASCADE CONSTRAINTS;

CREATE TABLE EBS_INTF.XXNUC_AR_TRANS_DISTS
(
  AR_DIST_KEY                NUMBER,
  AR_LINE_KEY                NUMBER,
  BATCH_NAME                 VARCHAR2(40 BYTE),
  TRX_NUMBER                 VARCHAR2(30 BYTE),
  INTERFACE_LINE_CONTEXT     VARCHAR2(30 BYTE),
  INTERFACE_LINE_ATTRIBUTE1  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE2  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE3  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE4  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE5  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE6  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE7  VARCHAR2(150 BYTE),
  INTERFACE_LINE_ATTRIBUTE8  VARCHAR2(150 BYTE),
  ACCOUNT_CLASS              VARCHAR2(10 BYTE),
  AMOUNT                     NUMBER,
  PERCENT                    NUMBER,
  OPERATING_UNIT             VARCHAR2(240 BYTE),
  GL_CONCATENATED_SEGMENTS   VARCHAR2(2000 BYTE),
  CREATION_DATE              DATE,
  LAST_UPDATE_DATE           DATE,
  CREATED_BY                 VARCHAR2(240 BYTE),
  LAST_UPDATED_BY            VARCHAR2(240 BYTE),
  PROCESS_DATE               DATE,
  PROCESS_STATUS             VARCHAR2(100 BYTE),
  ERROR_MSG                  VARCHAR2(2000 BYTE),
  REQUEST_ID                 VARCHAR2(100 BYTE)
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


CREATE UNIQUE INDEX EBS_INTF.XXNUC_AR_TRANS_DISTS_N1 ON EBS_INTF.XXNUC_AR_TRANS_DISTS
(AR_LINE_KEY)
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


CREATE UNIQUE INDEX EBS_INTF.XXNUC_AR_TRANS_DISTS_U1 ON EBS_INTF.XXNUC_AR_TRANS_DISTS
(AR_DIST_KEY)
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


CREATE OR REPLACE TRIGGER EBS_INTF.INS_XXNUC_AR_TRANS_DISTS  
/******************************************************************************
   NAME:    INS_SYS_HELP_CONTEXT
   PURPOSE: Ensure ID is filled

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/09/2013  Gustave Massong            Created this trigger.

******************************************************************************/
BEFORE INSERT
ON EBS_INTF.XXNUC_AR_TRANS_DISTS REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
   IF (:NEW.AR_DIST_KEY IS NULL) THEN
     SELECT XXNUC_AR_TRANS_DISTS_S.NEXTVAL INTO :NEW.AR_DIST_KEY FROM dual;
   END IF;
END;
/


GRANT ALTER, DELETE, INDEX, INSERT, REFERENCES, SELECT, UPDATE, ON COMMIT REFRESH, QUERY REWRITE, DEBUG, FLASHBACK ON EBS_INTF.XXNUC_AR_TRANS_DISTS TO NUCOR_DEV;

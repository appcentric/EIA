
  CREATE TABLE "XXNUC"."XXNUC_AR_RCPT_STG" 
   (	"OPERATING_UNIT" VARCHAR2(240 BYTE), 
	"PAYMENT_NUMBER" VARCHAR2(30 BYTE), 
	"REMITTANCE_AMOUNT" NUMBER, 
	"RECEIPT_DATE" DATE, 
	"CUSTOMER_NUMBER" NUMBER(15,0), 
	"CUSTOMER_NAME" VARCHAR2(50 BYTE), 
	"INVOICE_NUMBER" VARCHAR2(20 BYTE), 
	"GL_DATE" DATE, 
	"CUSTOMER_BANK_ACCOUNT_ID" NUMBER(15,0), 
	"CUSTOMER_SITE_USED_ID" NUMBER(15,0), 
	"DISCOUNT" NUMBER(15,0), 
	"RECEIPT_METHOD" VARCHAR2(30 BYTE), 
	"RECEIPT_AMOUNT" NUMBER, 
	"REQUEST_ID" NUMBER DEFAULT -1    , 
	"PROCESS_STATUS" VARCHAR2(2 BYTE), 
	"PROCESS_DATE" DATE DEFAULT SYSDATE    , 
	"ERROR_MESSAGE" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "TOOLS" ;
 

DROP TABLE XXNUC_AP_INVOICE_BATCHES;

CREATE TABLE XXNUC_AP_INVOICE_BATCHES
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

DROP SEQUENCE XXNUC_AP_INVOICE_BATCHES_S ;

CREATE SEQUENCE  XXNUC_AP_INVOICE_BATCHES_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_AP_INVOICE_BATCHES_N1 ON XXNUC_AP_INVOICE_BATCHES ( BATCH_KEY);


DROP TABLE XXNUC_AP_INVOICE_HEADERS ;

CREATE TABLE XXNUC_AP_INVOICE_HEADERS
(
  INVOICE_HEADER_KEY           NUMBER,
  INVOICE_NUM                  VARCHAR2(50 BYTE),
  INVOICE_TYPE_LOOKUP_CODE     VARCHAR2(25 BYTE),
  INVOICE_DATE                 DATE,
  VENDOR_NUM                   VARCHAR2(30 BYTE),
  VENDOR_NAME                  VARCHAR2(240 BYTE),
  VENDOR_SITE_CODE             VARCHAR2(15 BYTE),
  INVOICE_AMOUNT               NUMBER,
  INVOICE_CURRENCY_CODE        VARCHAR2(15 BYTE),
  TERMS_NAME                   VARCHAR2(50 BYTE),
  DESCRIPTION                  VARCHAR2(240 BYTE),
  SOURCE                       VARCHAR2(80 BYTE),
  PAYMENT_CURRENCY_CODE        VARCHAR2(15 BYTE),
  DOC_CATEGORY_CODE            VARCHAR2(30 BYTE),
  PAYMENT_METHOD_LOOKUP_CODE   VARCHAR2(25 BYTE),
  PAY_GROUP_LOOKUP_CODE        VARCHAR2(25 BYTE),
  GL_DATE                      DATE,
  EXCLUSIVE_PAYMENT_FLAG       VARCHAR2(1 BYTE),
  TERMS_DATE                   DATE,
  INVOICE_RECEIVED_DATE        DATE,
  OPERATING_UNIT               VARCHAR2(240 BYTE),
  ACCTS_PAY_CODE_CONCATENATED  VARCHAR2(250 BYTE),
  VOUCHER_NUMBER               VARCHAR2(10 BYTE),
  ATTRIBUTE_CATEGORY           VARCHAR2(30 BYTE),
  ATTRIBUTE1                   VARCHAR2(150 BYTE),
  ATTRIBUTE2                   VARCHAR2(150 BYTE),
  ATTRIBUTE3                   VARCHAR2(150 BYTE),
  ATTRIBUTE4                   VARCHAR2(150 BYTE),
  ATTRIBUTE5                   VARCHAR2(150 BYTE),
  ATTRIBUTE6                   VARCHAR2(150 BYTE),
  ATTRIBUTE7                   VARCHAR2(150 BYTE),
  ATTRIBUTE8                   VARCHAR2(150 BYTE),
  ATTRIBUTE9                   VARCHAR2(150 BYTE),
  ATTRIBUTE10                  VARCHAR2(150 BYTE),
  ATTRIBUTE11                  VARCHAR2(150 BYTE),
  ATTRIBUTE12                  VARCHAR2(150 BYTE),
  ATTRIBUTE13                  VARCHAR2(150 BYTE),
  ATTRIBUTE14                  VARCHAR2(150 BYTE),
  ATTRIBUTE15                  VARCHAR2(150 BYTE),
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

DROP SEQUENCE XXNUC_AP_INVOICE_HEADERS_S ;

CREATE SEQUENCE  XXNUC_AP_INVOICE_HEADERS_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_AP_INVOICE_HEADERS_N1 ON XXNUC_AP_INVOICE_HEADERS ( INVOICE_HEADER_KEY);

DROP TABLE XXNUC_AP_INVOICE_LINES;

CREATE TABLE XXNUC_AP_INVOICE_LINES
(
  INVOICE_LINE_KEY          NUMBER,
  INVOICE_HEADER_KEY        NUMBER,
  INVOICE_NUM               VARCHAR2(50 BYTE),
  LINE_NUMBER               NUMBER          ,
  GL_CONCATENATED_SEGMENTS      VARCHAR2(2000 BYTE), 
  LINE_TYPE_LOOKUP_CODE     VARCHAR2(25 BYTE) ,
  AMOUNT                    NUMBER            ,
  ACCOUNTING_DATE           DATE              ,
  DESCRIPTION               VARCHAR2(240 BYTE),
  TYPE_1099                 VARCHAR2(10 BYTE),
  INCOME_TAX_REGION         VARCHAR2(10 BYTE),
  PO_NUMBER                 VARCHAR2(100 BYTE),
  ATTRIBUTE_CATEGORY           VARCHAR2(30 BYTE),
  ATTRIBUTE1                   VARCHAR2(150 BYTE),
  ATTRIBUTE2                   VARCHAR2(150 BYTE),
  ATTRIBUTE3                VARCHAR2(150 BYTE),
  ATTRIBUTE4                VARCHAR2(150 BYTE),
  ATTRIBUTE5                VARCHAR2(150 BYTE),
  ATTRIBUTE6                VARCHAR2(150 BYTE),
  ATTRIBUTE7                VARCHAR2(150 BYTE),
  ATTRIBUTE8                VARCHAR2(150 BYTE),
  ATTRIBUTE9                VARCHAR2(150 BYTE),
  ATTRIBUTE10               VARCHAR2(150 BYTE),
  ATTRIBUTE11               VARCHAR2(150 BYTE),
  ATTRIBUTE12               VARCHAR2(150 BYTE),
  ATTRIBUTE13               VARCHAR2(150 BYTE),
  ATTRIBUTE14               VARCHAR2(150 BYTE),
  ATTRIBUTE15               VARCHAR2(150 BYTE),
  OPERATING_UNIT            VARCHAR2(240 BYTE),
  VENDOR_NUM                VARCHAR2(30 BYTE),
  TAX_CODE                  VARCHAR2(30 BYTE),
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

DROP SEQUENCE XXNUC_AP_INVOICE_LINES_S ;

CREATE SEQUENCE  XXNUC_AP_INVOICE_LINES_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_AP_INVOICE_LINES_U1 ON XXNUC_AP_INVOICE_LINES ( INVOICE_LINE_KEY);

CREATE  INDEX XXNUC_AP_INVOICE_LINES_N2 ON XXNUC_AP_INVOICE_LINES (INVOICE_HEADER_KEY);


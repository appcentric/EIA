DROP TABLE XXNUC_AP_PAYMENTS_IN;

CREATE TABLE XXNUC_AP_PAYMENTS_IN
(
  	 PAYMENT_IN_KEY                 NUMBER,  -- Primary Key
	  PAYMENT_REFERENCE_NUMBER          VARCHAR2(240), -- CHECK NUMBER OR ACH REFERENCE NUMBER
	  PAYMENT_DATE                      DATE,          
	  PAYMENT_METHOD                    VARCHAR2(100),  -- CHECK OR ELECTRONIC
	  PAYMENT_AMOUNT                    NUMBER,         -- AMOUNT PAID
	  PAYMENT_STATUS                    VARCHAR2(40),	-- VOID OR ISSUED
	  INVOICE_NUM                       VARCHAR2(240),  -- INVOICE NUMBER
	  INVOICE_DATE                      DATE,          
	  INVOICE_AMOUNT                    NUMBER,
	  EBS_VENDOR_NUM                    VARCHAR2(40),   -- ORACLE EBS VENDOR NUMBER
	  LEGACY_VENDOR_NUM                 VARCHAR2(40),   -- LEGACY VENDOR NUMBER
	  VENDOR_NAME                       VARCHAR2(240),  
	  EBS_PAYMENT_ID                        NUMBER,     -- EBS PAYMENT ID
	  CREATION_DATE                   DATE,         -- Standard Who Columns
	  LAST_UPDATE_DATE                DATE,         -- Standard Who Columns
	CREATED_BY               VARCHAR2(240),         -- Standard Who Columns
	LAST_UPDATED_BY          VARCHAR2(240),         -- Standard Who Columns
	  PROCESS_DATE                    DATE,         -- Standard Interface Status Columns
	  PROCESS_STATUS                  VARCHAR2(100 BYTE), -- Standard Interface Status Columns
	  ERROR_MSG                       VARCHAR2(2000 BYTE), -- Standard Interface Status Columns
	  REQUEST_ID                      VARCHAR2(100 BYTE), -- Standard Interface Status Columns
	ATTRIBUTE_CATEGORY       VARCHAR2(30),  -- Additional Information Context
	ATTRIBUTE1               VARCHAR2(150), -- Additiona Information attribute 1 through 15
	ATTRIBUTE2               VARCHAR2(150),
	ATTRIBUTE3               VARCHAR2(150),
	ATTRIBUTE4               VARCHAR2(150),
	ATTRIBUTE5               VARCHAR2(150),
	ATTRIBUTE6               VARCHAR2(150),
	ATTRIBUTE7               VARCHAR2(150),
	ATTRIBUTE8               VARCHAR2(150),
	ATTRIBUTE9               VARCHAR2(150),
	ATTRIBUTE10               VARCHAR2(150),
	ATTRIBUTE11               VARCHAR2(150),
	ATTRIBUTE12               VARCHAR2(150),
	ATTRIBUTE13               VARCHAR2(150),
	ATTRIBUTE14               VARCHAR2(150),
	ATTRIBUTE15               VARCHAR2(150),
	BANK_ACCOUNT_ID           VARCHAR(100),  -- Berkeley For Bank Account ID
    BANK_ACCOUNT_NAME         VARCHAR(100)   -- Berkeley For Bank Account Name
);

DROP SEQUENCE XXNUC_AP_PAYMENTS_IN_S ;

CREATE SEQUENCE  XXNUC_AP_PAYMENTS_IN_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_AP_PAYMENTS_IN_N1 ON XXNUC_AP_PAYMENTS_IN ( PAYMENT_IN_KEY);


 

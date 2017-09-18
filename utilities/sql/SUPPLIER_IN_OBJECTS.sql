DROP TABLE XXNUC_SUPPLIERS_IN CASCADE CONSTRAINTS;

CREATE TABLE XXNUC_SUPPLIERS_IN
(
  SUPPLIER_IN_KEY                NUMBER,
  PAY_SITE_FLAG                  VARCHAR2(100 BYTE),
  PURCHASING_SITE_FLAG           VARCHAR2(100 BYTE),
  EMAIL_ADDRESS                  VARCHAR2(100 BYTE),
  FAX_NUMBER                     VARCHAR2(100 BYTE),
  FAX_AREA_CODE                  VARCHAR2(100 BYTE),
  PHONE_NUMBER                   VARCHAR2(100 BYTE),
  PHONE_AREA_CODE                VARCHAR2(100 BYTE),
  ACTIVE                         VARCHAR2(100 BYTE),
  ADDRESS_NAME                   VARCHAR2(300 BYTE),
  COUNTRY                        VARCHAR2(100 BYTE),
  COUNTY                         VARCHAR2(100 BYTE),
  POSTAL_CODE                    VARCHAR2(100 BYTE),
  STATE                          VARCHAR2(100 BYTE),
  CITY                           VARCHAR2(100 BYTE),
  ADDRESS_LINE4                  VARCHAR2(300 BYTE),
  ADDRESS_LINE3                  VARCHAR2(300 BYTE),
  ADDRESS_LINE2                  VARCHAR2(300 BYTE),
  ADDRESS_LINE1                  VARCHAR2(300 BYTE),
  SHIP_TO_ADDRESS                VARCHAR2(200 BYTE),
  CONFIRMATION_REQUIRED          VARCHAR2(100 BYTE),
  BANK_NUMBER                    VARCHAR2(100 BYTE),
  CREDIT_LIMIT                   VARCHAR2(100 BYTE),
  VENDOR_SORT_NAME               VARCHAR2(300 BYTE),
  TAX_CLASSIFICATION             VARCHAR2(100 BYTE),
  FREIGHT_TERMS                  VARCHAR2(100 BYTE),
  RMA_REQUIRED                   VARCHAR2(100 BYTE),
  TERMS_NAME                     VARCHAR2(100 BYTE),
  SINGLE_INVOICE_PROCESSOR       VARCHAR2(100 BYTE),
  SUPPLIER_GROUP                 VARCHAR2(100 BYTE),
  SUPPLIER_TYPE                  VARCHAR2(100 BYTE),
  TAXPAYER_ID                    VARCHAR2(100 BYTE),
  EMPLOYEES_TOTAL                VARCHAR2(100 BYTE),
  INCORP_YEAR                    VARCHAR2(100 BYTE),
  YEAR_ESTABLISHED               VARCHAR2(100 BYTE),
  DUNS_NUMBER                    VARCHAR2(100 BYTE),
  URL                            VARCHAR2(100 BYTE),
  END_DATE_ACTIVE                VARCHAR2(100 BYTE),
  SIC_CODE                       VARCHAR2(100 BYTE),
  VENDOR_NUMBER                  VARCHAR2(100 BYTE),
  VENDOR_NAME                    VARCHAR2(100 BYTE),
  OPERATING_UNIT                 VARCHAR2(100 BYTE),
  ACTION                         VARCHAR2(100 BYTE),
  STATUS                         VARCHAR2(100 BYTE),
  PARTY_ID                       VARCHAR2(100 BYTE),
  ADDRESS_NUMBER                 VARCHAR2(100 BYTE),
  TAX_REPORTING_NAME             VARCHAR2(100 BYTE),
  PAYMENT_METHOD                 VARCHAR2(100 BYTE),
  INVOICE_CURRENCY_CODE          VARCHAR2(100 BYTE),
  EXCLUDE_FREIGHT_FROM_DISCOUNT  VARCHAR2(100 BYTE),
  TYPE_1099                      VARCHAR2(100 BYTE),
  VENDOR_1099_FLAG               VARCHAR2(100 BYTE),
  MINORITY_GROUP_CODE            VARCHAR2(100 BYTE),
  SHIP_VIA                       VARCHAR2(100 BYTE),
  HOLD_PAYMENT                   VARCHAR2(100 BYTE),
  AP_CLERK                       VARCHAR2(100 BYTE),
  FOB_LOOKUP_CODE                VARCHAR2(100 BYTE),
  STOP_PAYMENT                   VARCHAR2(100 BYTE),
  STATE_TAX_ID                   VARCHAR2(100 BYTE),
  RECEPIENT                      VARCHAR2(100 BYTE),
  NOTES                          VARCHAR2(100 BYTE),
  NOTIFICATION_METHOD            VARCHAR2(100 BYTE),
  P_CARD_SITE_FLAG               VARCHAR2(100 BYTE),

  -- Berkley Fields
  INSURANCE               VARCHAR2(1),      --   we require vendor have insurance                                   
  INSURANCE_DATE	  DATE,		    --   Date vendor's insurance expires.                                   
  CONTRACT		  VARCHAR2(1),	    --   Do we have a contract with the vendor.                             
  CONTRACT_DATE		  DATE,   	    --   Date that the contract expires.                                    
  SAFETY		  VARCHAR2(1),      --   Do we require vendor to watch safety video.                        
  SAFETY_DATE		  DATE,      	    --   Date that vendor needs to re-watch the safety video.               
  STIPULATION		  VARCHAR2(1),      --   Vendor has special terms.                                          
  DOC_DIST		  VARCHAR2(1),      --   Is this vendor included in mass distributions.                     
  MARKETABLE		  VARCHAR2(1),                                                                            
  APPT_REQD		  VARCHAR2(1),      --   Does processor require delivery appointments to be scheduled.      
  CERTIFICATION_NUMBER	  VARCHAR2(20),     -- class of items that vendor is certified for
  ITEM_CLASS	          VARCHAR2(4),
  QUESTIONNAIRE_ONLY	  VARCHAR2(1),
  -- Berkley Fields

  REF_SUPPLIER_SITE_ID           VARCHAR2(100 BYTE),
  REF_SUPPLIER_ID                VARCHAR2(100 BYTE),
  REF_PARTY_ID                   VARCHAR2(100 BYTE),
  REF_PARTY_SITE_ID              VARCHAR2(100 BYTE),
  REF_LOCATION_ID                VARCHAR2(100 BYTE),
  CREATION_DATE                  DATE,
  LAST_UPDATE_DATE               DATE,
CREATED_BY               VARCHAR2(240),
LAST_UPDATED_BY          VARCHAR2(240),
  PROCESS_DATE                   VARCHAR2(100 BYTE),
  PROCESS_STATUS                 VARCHAR2(100 BYTE),
  ERROR_MSG                      VARCHAR2(2000 BYTE),
  REQUEST_ID                     VARCHAR2(100 BYTE),
ATTRIBUTE_CATEGORY       VARCHAR2(30),
ATTRIBUTE1               VARCHAR2(150),
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
ATTRIBUTE15               VARCHAR2(150)
);

DROP SEQUENCE XXNUC_SUPPLIERS_IN_S ;

CREATE SEQUENCE  XXNUC_SUPPLIERS_IN_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_SUPPLIERS_IN_U1 ON XXNUC_SUPPLIERS_IN ( SUPPLIER_IN_KEY);



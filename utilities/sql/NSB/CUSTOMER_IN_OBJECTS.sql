DROP TABLE XXNUC_CUSTOMERS_IN CASCADE CONSTRAINTS;

CREATE TABLE XXNUC_CUSTOMERS_IN
(
  CUSTOMER_IN_KEY                 NUMBER,  -- Primary Key
  SHIP_HOLD_FLAG                  VARCHAR2(100 BYTE),
  RESALE_CERT_ON_FILE             VARCHAR2(100 BYTE),
  REPORT_ID_BILLING               VARCHAR2(100 BYTE),
  PRODUCTION_HOLD_FLAG            VARCHAR2(100 BYTE),
  PERCENTAGE_OF_OWNERSHIP_PARENT  VARCHAR2(100 BYTE),
  PERCENTAGE_OF_OWNERSHIP         VARCHAR2(100 BYTE),
  NUMBER_OF_INVOICE_COPIES        VARCHAR2(100 BYTE),
  NUMBER_OF_EMPLOYEES             VARCHAR2(100 BYTE),
  NUCOR_CREDIT_LEAD_CREDIT_LIMIT  VARCHAR2(100 BYTE),
  PARENT_NGCID                    VARCHAR2(100 BYTE),
  MAX_ORDER_WEIGHT                VARCHAR2(100 BYTE),
  MAIL_MTR                        VARCHAR2(100 BYTE),
  MAIL_VIA_POSTAL_SVC             VARCHAR2(100 BYTE),
  LOCATION_TERRITORY              VARCHAR2(100 BYTE),
  INVOICE_SINGLE_COIL             VARCHAR2(100 BYTE),
  INTERFACE_WITH_OPENTRAC_FLAG    VARCHAR2(100 BYTE),
  HIDE_ORDER_SIZE_TOL_ON_INV      VARCHAR2(100 BYTE),
  LAST_FIN_STMT_DATE              DATE,
  FIN_STMT_SOURCE                 VARCHAR2(100 BYTE),
  FREIGHT_TERMS                   VARCHAR2(100 BYTE),
  FOB_CODE                        VARCHAR2(100 BYTE),
  INSIDE_SALESREP                 VARCHAR2(100 BYTE),
  EXPORT_FLAG                     VARCHAR2(100 BYTE),
  ENGLISH_METRIC_FLAG             VARCHAR2(100 BYTE),
  EMAIL_NOTICE                    VARCHAR2(100 BYTE),
  EDI_CUSTOMER_FLAG               VARCHAR2(100 BYTE),
  DEFER_RMS_CHRG_TO_ME_STMT       VARCHAR2(100 BYTE),
  D_B_NUMBER                      VARCHAR2(100 BYTE),
  CUSTOMER_TYPE                   VARCHAR2(100 BYTE),
  CUSTOMER_NUMBER                 VARCHAR2(100 BYTE),
  CUSTOMER_NOTES                  VARCHAR2(100 BYTE),
  PARTY_NAME                      VARCHAR2(100 BYTE),
  CUSTOMER_NAME                   VARCHAR2(100 BYTE),
  CUSTOMER_GROUP                  VARCHAR2(100 BYTE),
  CUST_SUPPLIER_ID                VARCHAR2(100 BYTE),
  CREDIT_TERMS                    VARCHAR2(100 BYTE),
  CREDIT_REV_DT                   VARCHAR2(100 BYTE),
  CREDIT_RATING                   VARCHAR2(100 BYTE),
  CREDIT_LIMIT                    VARCHAR2(100 BYTE),
  CREDIT_HOLD_REASON              VARCHAR2(100 BYTE),
  CREDIT_HOLD                     VARCHAR2(100 BYTE),
  CREDIT_AGENCY_CD                VARCHAR2(100 BYTE),
  COIL_DEFAULT_PROMPT_OPTION      VARCHAR2(100 BYTE),
  AP_PREFER_EMAIL                 VARCHAR2(100 BYTE),
  AGNG_STMT_SNT_MNTHLY_BY_EML     VARCHAR2(100 BYTE),
  AUDITED_STATUS                  VARCHAR2(100 BYTE),
  ALT_Z_SCORE                     VARCHAR2(100 BYTE),
  ADDRESS_STATE                   VARCHAR2(100 BYTE),
  ADDRESS_CITY                    VARCHAR2(100 BYTE),
  ADDRESS_COUNTRY                 VARCHAR2(100 BYTE),
  ADDRESS_ZIP                     VARCHAR2(100 BYTE),
  ADDRESS_LINE3                   VARCHAR2(100 BYTE),
  ADDRESS_LINE2                   VARCHAR2(100 BYTE),
  ADDRESS_LINE1                   VARCHAR2(100 BYTE),
  ACTIVE_INACTIVE_FLAG            VARCHAR2(100 BYTE),
  ACCOUNT_OPENED_DATE             DATE,
  OPERATING_UNIT                  VARCHAR2(100 BYTE),
  STATUS                          VARCHAR2(100 BYTE), -- Status of the customer record 
  ACTION                          VARCHAR2(100 BYTE), -- Action (Optional  - UPDATED OR CREATED)
  DEFAULT_INVOICE_UOM             VARCHAR2(100 BYTE),
  AMOUNT_OF_HIGHEST_BAL           VARCHAR2(100 BYTE),
  DATE_OF_HIGHEST_BAL             DATE,
  CREDIT_LEAD                     VARCHAR2(100 BYTE),
  AMOUNT_OF_FIRST_SALE            VARCHAR2(100 BYTE),
  DATE_OF_FIRST_SALE              DATE,
  PREVIOUS_YR_NETWORTH            VARCHAR2(100 BYTE),
  CURRENT_NETWORTH                VARCHAR2(100 BYTE),
  ITC_MARKET_GRP                  VARCHAR2(100 BYTE),
  SOURCE_SYSTEM                   VARCHAR2(100 BYTE),
  BILL_TO_SOLD_TO                 VARCHAR2(100 BYTE),
  OUTSIDE_SALESREP                VARCHAR2(100 BYTE),
  STATEMENT_NAME                  VARCHAR2(100 BYTE),
  SIC_CODE_TYPE                   VARCHAR2(100 BYTE),
  CREDIT_CHECK                    VARCHAR2(100 BYTE),
  OUTPUT_TYPE                     VARCHAR2(100 BYTE),
  TIER_LEVEL                      VARCHAR2(100 BYTE),
  ST_FIXED_PRICE_YN               VARCHAR2(100 BYTE),
  ST_EMAIL_ACK_YN                 VARCHAR2(100 BYTE),
  BT_INVOICE_FORMAT_CD            VARCHAR2(100 BYTE),
  BT_CURRENCY_CD                  VARCHAR2(100 BYTE),
  HFR_CUSTOMER                    VARCHAR2(100 BYTE),
  TOLL                            VARCHAR2(100 BYTE),
  YEAR_FOUNDED                    VARCHAR2(100 BYTE),
  WIRE                            VARCHAR2(100 BYTE),
  UMBRELLA_FLAG                   VARCHAR2(100 BYTE),
  TOTAL_ASSETS_MILLIONS           VARCHAR2(100 BYTE),
  TAX_EXEMPT_CERT                 VARCHAR2(100 BYTE),
  TAX_JURISDICTION_CODE           VARCHAR2(100 BYTE),
  NGCID                           VARCHAR2(100 BYTE),
  SINGLE_INVOICE_FLAG             VARCHAR2(100 BYTE),
  SIGN                            VARCHAR2(100 BYTE),
  SIC_CODE                        VARCHAR2(100 BYTE),
  SHOW_DISCOUNTED_INVOICE_TOTAL   VARCHAR2(100 BYTE),
  SHOW_COIL_LINEAR_FT_ON_INVOICE  VARCHAR2(100 BYTE),
  ACCOUNT_ESTABLISHED_DATE        DATE,
  -- Berkley Fields
  FEDERAL_TAX_ID	          VARCHAR2(20),
  CREDIT_TEAM	                  VARCHAR2(5), --   -- berkeley credit team that is assigned to an account
  -- Berkley Fields

  REF_PARTY_ID                    NUMBER,       -- ORACLE ID for Party
  REF_CUST_ACCOUT_ID              NUMBER,       -- ORACLE ID for Customer
  REF_CUST_ACCT_SITE_ID           NUMBER,       -- ORACLE ID for Site
  REF_PARTY_SITE_ID                NUMBER,      -- ORACLE ID for Party Site
  REF_LOCATION_ID                 NUMBER,       -- ORACLE ID for Location
  REF_SITE_USE_ID                     NUMBER,   -- ORACLE ID for Site Use
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
ACCOUNT_NAME 			    VARCHAR(100), 	-- Berkeley ACCOUNT_NAME
COLLECTOR 					VARCHAR(20) ,	-- Berkeley For Site Uses Profile
CREDIT_ANALYST 				VARCHAR(20) 	-- Berkeley For Site Uses Profile
);


DROP SEQUENCE XXNUC_CUSTOMERS_IN_S ;

CREATE SEQUENCE  XXNUC_CUSTOMERS_IN_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_CUSTOMERS_IN_U1 ON XXNUC_CUSTOMERS_IN ( CUSTOMER_IN_KEY);




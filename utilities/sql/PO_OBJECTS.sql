DROP TABLE XXNUC_PO_HEADERS;


CREATE TABLE XXNUC_PO_HEADERS
(
  PO_HEADER_KEY             NUMBER,
  LEGACY_VENDOR_NUM         VARCHAR2(30),
  LEGACY_VENDOR_SITE_NUM    VARCHAR2(200),
  VENDOR_ID                 NUMBER,
  INTERFACE_SOURCE_CODE  VARCHAR2(25 BYTE),
  ACTION                 VARCHAR2(25 BYTE),
  DOCUMENT_TYPE_CODE     VARCHAR2(25 BYTE),
  DOCUMENT_SUBTYPE       VARCHAR2(25 BYTE),
  DOCUMENT_NUM           VARCHAR2(20 BYTE),
  RELEASE_NUM            NUMBER,
  RELEASE_DATE           DATE,
  CURRENCY_CODE          VARCHAR2(15 BYTE),
  VENDOR_NAME            VARCHAR2(240 BYTE),
  VENDOR_SITE_CODE       VARCHAR2(15 BYTE),
  PAYMENT_TERMS          VARCHAR2(50 BYTE),
  FREIGHT_CARRIER        VARCHAR2(25 BYTE),
  FOB                    VARCHAR2(25 BYTE),
  FREIGHT_TERMS          VARCHAR2(25 BYTE),
  APPROVAL_STATUS        VARCHAR2(25 BYTE),
  APPROVED_DATE          DATE,
  REVISED_DATE           DATE,
  REVISION_NUM           NUMBER,
  AMOUNT_AGREED          NUMBER,
  ATTRIBUTE_CATEGORY     VARCHAR2(30 BYTE),
  ATTRIBUTE1             VARCHAR2(150 BYTE),
  ATTRIBUTE2             VARCHAR2(150 BYTE),
  ATTRIBUTE3             VARCHAR2(150 BYTE),
  ATTRIBUTE4             VARCHAR2(150 BYTE),
  ATTRIBUTE5             VARCHAR2(150 BYTE),
  VENDOR_NUM             VARCHAR2(30 BYTE),
  SHIP_TO_LOCATION       VARCHAR2(60 BYTE),
  BILL_TO_LOCATION       VARCHAR2(60 BYTE),
  AGENT_NAME             VARCHAR2(240 BYTE),
  OPERATING_UNIT         VARCHAR2(240 BYTE),
CREATION_DATE                   DATE,         -- Standard Who Columns
  LAST_UPDATE_DATE                DATE,         -- Standard Who Columns
CREATED_BY               VARCHAR2(240),         -- Standard Who Columns
LAST_UPDATED_BY          VARCHAR2(240),         -- Standard Who Columns
  PROCESS_DATE                    DATE,         -- Standard Interface Status Columns
  PROCESS_STATUS                  VARCHAR2(100 BYTE), -- Standard Interface Status Columns
  ERROR_MSG                       VARCHAR2(2000 BYTE), -- Standard Interface Status Columns
  REQUEST_ID                      VARCHAR2(100 BYTE) -- Standard Interface Status Columns
);

DROP SEQUENCE XXNUC_PO_HEADERS_S;


CREATE SEQUENCE  XXNUC_PO_HEADERS_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_PO_HEADERS_U1 ON XXNUC_PO_HEADERS ( PO_HEADER_KEY);


DROP TABLE XXNUC_PO_LINES;

CREATE TABLE XXNUC_PO_LINES
(
  PO_LINE_KEY                    NUMBER,
  PO_HEADER_KEY                  NUMBER,
  ACTION                         VARCHAR2(10),
  LINE_NUM                       NUMBER,
  DOCUMENT_NUM                   VARCHAR2(20 BYTE),
  SHIPMENT_NUM                   NUMBER,
  SHIPMENT_TYPE                  VARCHAR2(25 BYTE),
  RELEASE_NUM                    NUMBER,
  LINE_TYPE                      VARCHAR2(25 BYTE),
  ITEM                           VARCHAR2(1000 BYTE),
  ITEM_REVISION                  VARCHAR2(3 BYTE),
  CATEGORY                       VARCHAR2(2000 BYTE),
  ITEM_DESCRIPTION               VARCHAR2(240 BYTE),
  UOM_CODE                       VARCHAR2(3 BYTE),
  UNIT_OF_MEASURE                VARCHAR2(25 BYTE),
  QUANTITY                       NUMBER,
  UNIT_PRICE                     NUMBER,
  TAXABLE_FLAG                   VARCHAR2(1 BYTE),
  TAX_NAME                       VARCHAR2(30 BYTE),
  TYPE_1099                      VARCHAR2(10 BYTE),
  PAYMENT_TERMS                  VARCHAR2(50 BYTE),
  SHIP_TO_ORGANIZATION_CODE      VARCHAR2(3 BYTE),
  SHIP_TO_LOCATION               VARCHAR2(60 BYTE),
  NEED_BY_DATE                   DATE,
  PRICE_DISCOUNT                 NUMBER,
  FREIGHT_CARRIER                VARCHAR2(80 BYTE),
  FOB                            VARCHAR2(25 BYTE),
  FREIGHT_TERMS                  VARCHAR2(25 BYTE),
  LINE_ATTRIBUTE_CATEGORY        VARCHAR2(30 BYTE),
  LINE_ATTRIBUTE1                VARCHAR2(150 BYTE),
  LINE_ATTRIBUTE2                VARCHAR2(150 BYTE),
  LINE_ATTRIBUTE3                VARCHAR2(150 BYTE),
  LINE_ATTRIBUTE4                VARCHAR2(150 BYTE),
  LINE_ATTRIBUTE5                VARCHAR2(150 BYTE),
  SHIPMENT_ATTRIBUTE_CATEGORY    VARCHAR2(30 BYTE),
  SHIPMENT_ATTRIBUTE1            VARCHAR2(150 BYTE),
  SHIPMENT_ATTRIBUTE2            VARCHAR2(150 BYTE),
  SHIPMENT_ATTRIBUTE3            VARCHAR2(150 BYTE),
  SHIPMENT_ATTRIBUTE4            VARCHAR2(150 BYTE),
  SHIPMENT_ATTRIBUTE5            VARCHAR2(150 BYTE),
  ITEM_ATTRIBUTE_CATEGORY        VARCHAR2(30 BYTE),
  ITEM_ATTRIBUTE1                VARCHAR2(150 BYTE),
  ITEM_ATTRIBUTE2                VARCHAR2(150 BYTE),
  ITEM_ATTRIBUTE3                VARCHAR2(150 BYTE),
  ITEM_ATTRIBUTE4                VARCHAR2(150 BYTE),
  ITEM_ATTRIBUTE5                VARCHAR2(150 BYTE),
  TAX_STATUS_INDICATOR           VARCHAR2(30 BYTE),
  AMOUNT                         NUMBER,
  OPERATING_UNIT                 VARCHAR2(240 BYTE),
CREATION_DATE                     DATE,         -- Standard Who Columns
  LAST_UPDATE_DATE                DATE,         -- Standard Who Columns
CREATED_BY                        VARCHAR2(240),         -- Standard Who Columns
LAST_UPDATED_BY                   VARCHAR2(240),         -- Standard Who Columns
  PROCESS_DATE                    DATE,         -- Standard Interface Status Columns
  PROCESS_STATUS                  VARCHAR2(100 BYTE), -- Standard Interface Status Columns
  ERROR_MSG                       VARCHAR2(2000 BYTE), -- Standard Interface Status Columns
  REQUEST_ID                      VARCHAR2(100 BYTE) -- Standard Interface Status Columns
);

DROP SEQUENCE XXNUC_PO_LINES_S ;

CREATE SEQUENCE  XXNUC_PO_LINES_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_PO_LINES_U1 ON XXNUC_PO_LINES ( PO_LINE_KEY);

CREATE INDEX XXNUC_PO_LINES_N2 ON XXNUC_PO_LINES ( PO_HEADER_KEY, PO_LINE_KEY);

DROP TABLE XXNUC_PO_DISTRIBUTIONS;

CREATE TABLE XXNUC_PO_DISTRIBUTIONS
(
  PO_LINE_KEY                NUMBER,
  PO_HEADER_KEY             NUMBER,
  PO_DIST_KEY                NUMBER,
  LINE_NUM                  NUMBER,
  SHIPMENT_NUM              NUMBER,
  DISTRIBUTION_NUM          NUMBER,
  DOCUMENT_NUM              VARCHAR2(20),
  REQ_OWNING_ORG_ID        VARCHAR2(30),
  QUANTITY_ORDERED          NUMBER,
  QUANTITY_DELIVERED        NUMBER,
  QUANTITY_BILLED           NUMBER,
  QUANTITY_CANCELLED        NUMBER,
  RATE                      NUMBER,
  DELIVER_TO_LOCATION       VARCHAR2(60 BYTE),
  SET_OF_BOOKS              VARCHAR2(30 BYTE),
  CHARGE_ACCOUNT            VARCHAR2(2000 BYTE),
  BUDGET_ACCOUNT            VARCHAR2(2000 BYTE),
  ACCURAL_ACCOUNT           VARCHAR2(2000 BYTE),
  VARIANCE_ACCOUNT          VARCHAR2(2000 BYTE),
  AMOUNT_BILLED             NUMBER,
  ATTRIBUTE_CATEGORY        VARCHAR2(30 BYTE),
  ATTRIBUTE1                VARCHAR2(150 BYTE),
  ATTRIBUTE2                VARCHAR2(150 BYTE),
  ATTRIBUTE3                VARCHAR2(150 BYTE),
  ATTRIBUTE4                VARCHAR2(150 BYTE),
  ATTRIBUTE5                VARCHAR2(150 BYTE),
  REQ_HEADER_REFERENCE_NUM  VARCHAR2(25 BYTE),
  REQ_LINE_REFERENCE_NUM    VARCHAR2(25 BYTE),
  AMOUNT_ORDERED            NUMBER,
  OPERATING_UNIT            VARCHAR2(240 BYTE),
  CREATION_DATE                   DATE,         -- Standard Who Columns
  LAST_UPDATE_DATE                DATE,         -- Standard Who Columns
  CREATED_BY               VARCHAR2(240),         -- Standard Who Columns
  LAST_UPDATED_BY          VARCHAR2(240),         -- Standard Who Columns
  PROCESS_DATE                    DATE,         -- Standard Interface Status Columns
  PROCESS_STATUS                  VARCHAR2(100 BYTE), -- Standard Interface Status Columns
  ERROR_MSG                       VARCHAR2(2000 BYTE), -- Standard Interface Status Columns
  REQUEST_ID                      VARCHAR2(100 BYTE) -- Standard Interface Status Columns
);


DROP SEQUENCE  XXNUC_PO_DISTRIBUTIONS_S;

CREATE SEQUENCE  XXNUC_PO_DISTRIBUTIONS_S  START WITH 1000 INCREMENT BY 1;

CREATE UNIQUE INDEX XXNUC_PO_DISTRIBUTIONS_U1 ON XXNUC_PO_DISTRIBUTIONS ( PO_DIST_KEY);

CREATE INDEX XXNUC_PO_DISTRIBUTIONS_N2 ON XXNUC_PO_DISTRIBUTIONS ( PO_HEADER_KEY,PO_LINE_KEY);

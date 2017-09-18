DROP TABLE XXNUC_SUPPLIER_CERTS_IN CASCADE CONSTRAINTS;

CREATE TABLE ERPINF.XXNUC_SUPPLIER_CERTS_IN
 ( 
  SUPPLIER_CERT_KEY BIGINT DEFAULT NULL , 
  TAXPAYER_ID VARCHAR(20) DEFAULT NULL , 
  CERTIFICATION_NAME VARCHAR(40) DEFAULT NULL , 
  PLANT_NAME VARCHAR(30) DEFAULT NULL , 
  LEGACY_SUPPLIER_BIGINT VARCHAR(100) DEFAULT NULL , 
  PARTY_ID BIGINT DEFAULT NULL , 
  EXPIRATION_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP , 
  COMMENTS VARCHAR(2000) DEFAULT NULL , 
  NOTIFICATION_EMAIL VARCHAR(50) DEFAULT NULL , 
  SUPPLIER_LOCATION VARCHAR(100) DEFAULT NULL , 
  STATUS VARCHAR(30) DEFAULT NULL , 
  CREATION_DATE TIMESTAMP DEFAULT NULL , 
  LAST_UPDATE_DATE TIMESTAMP DEFAULT NULL , 
  CREATED_BY VARCHAR(240) DEFAULT NULL , 
  LAST_UPDATED_BY VARCHAR(240) DEFAULT NULL , 
  PROCESS_STATUS VARCHAR(30) DEFAULT NULL , 
  PROCESS_DATE TIMESTAMP DEFAULT NULL , 
  ERROR_MSG VARCHAR(2000) DEFAULT NULL 
  );
  

CREATE UNIQUE INDEX XXNUC_SUPPLIER_CERTS_IN_U1 ON XXNUC_SUPPLIER_CERTS_IN ( SUPPLIER_CERT_KEY);
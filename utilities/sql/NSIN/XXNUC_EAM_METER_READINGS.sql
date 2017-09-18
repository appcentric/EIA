-------------------------------------------------------
--  File created - Monday-February-09-2015
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XXNUC_EAM_METER_READINGS
--------------------------------------------------------
DROP TABLE XXNUC_EAM_METER_READINGS CASCADE CONSTRAINTS;
CREATE TABLE XXNUC_EAM_METER_READINGS
  (
    METER_KEY            NUMBER,
    METER_ID             NUMBER,
    METER_NAME           VARCHAR2(150),
    METER_READING_ID     NUMBER,
    CURRENT_READING      NUMBER,
    CURRENT_READING_DATE DATE,
    RESET_FLAG           VARCHAR2(1),
    DESCRIPTION          VARCHAR2(100),
    ADJUSTMENT_TYPE      VARCHAR2(30),
    ADJUSTMENT_READING   NUMBER,
    NET_READING          NUMBER,
    RESET_REASON         VARCHAR2(255),
    ATTRIBUTE_CATEGORY   VARCHAR2(30),
    ATTRIBUTE1           VARCHAR2(150),
    ATTRIBUTE2           VARCHAR2(150),
    ATTRIBUTE3           VARCHAR2(150),
    ATTRIBUTE4           VARCHAR2(150),
    ATTRIBUTE5           VARCHAR2(150),
    ATTRIBUTE6           VARCHAR2(150),
    ATTRIBUTE7           VARCHAR2(150),
    ATTRIBUTE8           VARCHAR2(150),
    ATTRIBUTE9           VARCHAR2(150),
    ATTRIBUTE10          VARCHAR2(150),
    ATTRIBUTE11          VARCHAR2(150),
    ATTRIBUTE12          VARCHAR2(150),
    ATTRIBUTE13          VARCHAR2(150),
    ATTRIBUTE14          VARCHAR2(150),
    ATTRIBUTE15          VARCHAR2(150),
    ATTRIBUTE16          VARCHAR2(150),
    ATTRIBUTE17          VARCHAR2(150),
    ATTRIBUTE18          VARCHAR2(150),
    ATTRIBUTE19          VARCHAR2(150),
    ATTRIBUTE20          VARCHAR2(150),
    ATTRIBUTE21          VARCHAR2(150),
    ATTRIBUTE22          VARCHAR2(150),
    ATTRIBUTE23          VARCHAR2(150),
    ATTRIBUTE24          VARCHAR2(150),
    ATTRIBUTE25          VARCHAR2(150),
    ATTRIBUTE26          VARCHAR2(150),
    ATTRIBUTE27          VARCHAR2(150),
    ATTRIBUTE28          VARCHAR2(150),
    ATTRIBUTE29          VARCHAR2(150),
    ATTRIBUTE30          VARCHAR2(150),
    CREATION_DATE        DATE NOT NULL,                           -- Standard Who Columns
    LAST_UPDATE_DATE     DATE NOT NULL,                           -- Standard Who Columns
    CREATED_BY           VARCHAR2(240)DEFAULT 'SOAUSER' NOT NULL, -- Standard Who Columns
    LAST_UPDATED_BY      VARCHAR2(240)DEFAULT 'SOAUSER' NOT NULL, -- Standard Who Columns
    PROCESS_DATE         DATE,                                    -- Standard Interface Status Columns
    PROCESS_STATUS       VARCHAR2(100 BYTE),                      -- Standard Interface Status Columns
    ERROR_MSG            VARCHAR2(2000 BYTE),                     -- Standard Interface Status Columns
    REQUEST_ID           VARCHAR2(100 BYTE)                       -- Standard Interface Status Columns
  );
DROP SEQUENCE XXNUC_EAM_METER_READINGS_S ;
CREATE SEQUENCE XXNUC_EAM_METER_READINGS_S START WITH 1000 INCREMENT BY 1; --- Used by METER_KEY
CREATE UNIQUE INDEX XXNUC_EAM_METER_READINGS_N1 ON XXNUC_EAM_METER_READINGS ( METER_KEY);

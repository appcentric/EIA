/* *************************************************************************** */
/* $Header   : XXNUC_EAM_METER_XFACE_UTIL_PKG.pks and                          */
/*             XXNUC_EAM_METER_XFACE_UTIL_PKg.pkb                              */
/* Name      : APPS.XXNUC_QA_RESULTS_INF_PKG.pks                               */
/* Copyright :                                                                 */
/* Declare the SQL type for the PL/SQL type                                    */
/*                               EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC*/
/* Created On: 25-FEB-2015                                                     */
/* Created By: Surjit Singh                                                    */
/* Purpose   : Package to wrapper to EAM_METERREADING_PUB                       */
/* *************************************************************************** */
/* Modification History:                                                       */
/* Version   By                        Date            Comments                */
/*     1.0   Surjit Singh              25-FEB-2015     Initial Version          */
/*                                                                             */
/* *************************************************************************** */
CREATE OR REPLACE TYPE EAM_METERREADINGX246460X1X57
AS
  OBJECT
  (
    COUNTER_PROPERTY_ID NUMBER,
    PROPERTY_VALUE      VARCHAR2(240),
    VALUE_TIMESTAMP     DATE,
    ATTRIBUTE_CATEGORY  VARCHAR2(30),
    ATTRIBUTE1          VARCHAR2(150),
    ATTRIBUTE2          VARCHAR2(150),
    ATTRIBUTE3          VARCHAR2(150),
    ATTRIBUTE4          VARCHAR2(150),
    ATTRIBUTE5          VARCHAR2(150),
    ATTRIBUTE6          VARCHAR2(150),
    ATTRIBUTE7          VARCHAR2(150),
    ATTRIBUTE8          VARCHAR2(150),
    ATTRIBUTE9          VARCHAR2(150),
    ATTRIBUTE10         VARCHAR2(150),
    ATTRIBUTE11         VARCHAR2(150),
    ATTRIBUTE12         VARCHAR2(150),
    ATTRIBUTE13         VARCHAR2(150),
    ATTRIBUTE14         VARCHAR2(150),
    ATTRIBUTE15         VARCHAR2(150),
    MIGRATED_FLAG       VARCHAR2(1) );
  /
  show errors
CREATE OR REPLACE TYPE EAM_METERREADINGX246460X1X56
AS
  TABLE OF APPS.EAM_METERREADINGX246460X1X57;
  /
  show errors
  -- Declare the SQL type for the PL/SQL type EAM_METERREADING_PUB.METER_READING_REC_TYPE
CREATE OR REPLACE TYPE EAM_METERREADING_X246460X2X7
AS
  OBJECT
  (
    METER_ID             NUMBER,
    METER_READING_ID     NUMBER,
    CURRENT_READING      NUMBER,
    CURRENT_READING_DATE DATE,
    RESET_FLAG           VARCHAR2(1),
    DESCRIPTION          VARCHAR2(100),
    WIP_ENTITY_ID        NUMBER,
    CHECK_IN_OUT_TYPE    NUMBER,
    CHECK_IN_OUT_TXN_ID  NUMBER,
    INSTANCE_ID          NUMBER,
    SOURCE_LINE_ID       NUMBER,
    SOURCE_CODE          VARCHAR2(30),
    WO_ENTRY_FAKE_FLAG   VARCHAR2(1),
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
    ATTRIBUTE30          VARCHAR2(150) );
  /
  show errors
  -- Declare package containing conversion functions between SQL and PL/SQL types
CREATE OR REPLACE PACKAGE XXNUC_EAM_METER_XFACE_UTIL_PKG
AS
  -- Declare the conversion functions the PL/SQL type APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC
  FUNCTION PL_TO_SQL0(
      aPlsqlItem APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC)
    RETURN EAM_METERREADINGX246460X1X57;
  FUNCTION SQL_TO_PL1(
      aSqlItem EAM_METERREADINGX246460X1X57)
    RETURN APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC;
  -- Declare the conversion functions the PL/SQL type APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_TBL
  FUNCTION PL_TO_SQL1(
      aPlsqlItem APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_TBL)
    RETURN EAM_METERREADINGX246460X1X56;
  FUNCTION SQL_TO_PL2(
      aSqlItem EAM_METERREADINGX246460X1X56)
    RETURN APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_TBL;
  -- Declare the conversion functions the PL/SQL type APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE
  FUNCTION PL_TO_SQL2(
      aPlsqlItem APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE)
    RETURN EAM_METERREADING_X246460X2X7;
  FUNCTION SQL_TO_PL0(
      aSqlItem EAM_METERREADING_X246460X2X7)
    RETURN APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE;
  PROCEDURE CREATE_METER(
      P_API_VERSION   NUMBER,
      P_INIT_MSG_LIST VARCHAR2,
      P_COMMIT        VARCHAR2,
      X_MSG_COUNT OUT NUMBER,
      X_MSG_DATA OUT VARCHAR2,
      X_RETURN_STATUS OUT VARCHAR2,
      P_METER_READING_REC EAM_METERREADING_X246460X2X7,
      P_VALUE_BEFORE_RESET NUMBER,
      P_IGNORE_WARNINGS    VARCHAR2,
      X_METER_READING_ID OUT NUMBER );
END XXNUC_EAM_METER_XFACE_UTIL_PKG;
/
show errors
CREATE OR REPLACE PACKAGE BODY XXNUC_EAM_METER_XFACE_UTIL_PKG
IS
  FUNCTION PL_TO_SQL0(
      aPlsqlItem APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC)
    RETURN EAM_METERREADINGX246460X1X57
  IS
    aSqlItem EAM_METERREADINGX246460X1X57;
  BEGIN
    -- initialize the object
    aSqlItem                     := EAM_METERREADINGX246460X1X57(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
    aSqlItem.COUNTER_PROPERTY_ID := aPlsqlItem.COUNTER_PROPERTY_ID;
    aSqlItem.PROPERTY_VALUE      := aPlsqlItem.PROPERTY_VALUE;
    aSqlItem.VALUE_TIMESTAMP     := aPlsqlItem.VALUE_TIMESTAMP;
    aSqlItem.ATTRIBUTE_CATEGORY  := aPlsqlItem.ATTRIBUTE_CATEGORY;
    aSqlItem.ATTRIBUTE1          := aPlsqlItem.ATTRIBUTE1;
    aSqlItem.ATTRIBUTE2          := aPlsqlItem.ATTRIBUTE2;
    aSqlItem.ATTRIBUTE3          := aPlsqlItem.ATTRIBUTE3;
    aSqlItem.ATTRIBUTE4          := aPlsqlItem.ATTRIBUTE4;
    aSqlItem.ATTRIBUTE5          := aPlsqlItem.ATTRIBUTE5;
    aSqlItem.ATTRIBUTE6          := aPlsqlItem.ATTRIBUTE6;
    aSqlItem.ATTRIBUTE7          := aPlsqlItem.ATTRIBUTE7;
    aSqlItem.ATTRIBUTE8          := aPlsqlItem.ATTRIBUTE8;
    aSqlItem.ATTRIBUTE9          := aPlsqlItem.ATTRIBUTE9;
    aSqlItem.ATTRIBUTE10         := aPlsqlItem.ATTRIBUTE10;
    aSqlItem.ATTRIBUTE11         := aPlsqlItem.ATTRIBUTE11;
    aSqlItem.ATTRIBUTE12         := aPlsqlItem.ATTRIBUTE12;
    aSqlItem.ATTRIBUTE13         := aPlsqlItem.ATTRIBUTE13;
    aSqlItem.ATTRIBUTE14         := aPlsqlItem.ATTRIBUTE14;
    aSqlItem.ATTRIBUTE15         := aPlsqlItem.ATTRIBUTE15;
    aSqlItem.MIGRATED_FLAG       := aPlsqlItem.MIGRATED_FLAG;
    RETURN aSqlItem;
  END PL_TO_SQL0;
  FUNCTION SQL_TO_PL1(
      aSqlItem EAM_METERREADINGX246460X1X57)
    RETURN APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC
  IS
    aPlsqlItem APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_REC;
  BEGIN
    aPlsqlItem.COUNTER_PROPERTY_ID := aSqlItem.COUNTER_PROPERTY_ID;
    aPlsqlItem.PROPERTY_VALUE      := aSqlItem.PROPERTY_VALUE;
    aPlsqlItem.VALUE_TIMESTAMP     := aSqlItem.VALUE_TIMESTAMP;
    aPlsqlItem.ATTRIBUTE_CATEGORY  := aSqlItem.ATTRIBUTE_CATEGORY;
    aPlsqlItem.ATTRIBUTE1          := aSqlItem.ATTRIBUTE1;
    aPlsqlItem.ATTRIBUTE2          := aSqlItem.ATTRIBUTE2;
    aPlsqlItem.ATTRIBUTE3          := aSqlItem.ATTRIBUTE3;
    aPlsqlItem.ATTRIBUTE4          := aSqlItem.ATTRIBUTE4;
    aPlsqlItem.ATTRIBUTE5          := aSqlItem.ATTRIBUTE5;
    aPlsqlItem.ATTRIBUTE6          := aSqlItem.ATTRIBUTE6;
    aPlsqlItem.ATTRIBUTE7          := aSqlItem.ATTRIBUTE7;
    aPlsqlItem.ATTRIBUTE8          := aSqlItem.ATTRIBUTE8;
    aPlsqlItem.ATTRIBUTE9          := aSqlItem.ATTRIBUTE9;
    aPlsqlItem.ATTRIBUTE10         := aSqlItem.ATTRIBUTE10;
    aPlsqlItem.ATTRIBUTE11         := aSqlItem.ATTRIBUTE11;
    aPlsqlItem.ATTRIBUTE12         := aSqlItem.ATTRIBUTE12;
    aPlsqlItem.ATTRIBUTE13         := aSqlItem.ATTRIBUTE13;
    aPlsqlItem.ATTRIBUTE14         := aSqlItem.ATTRIBUTE14;
    aPlsqlItem.ATTRIBUTE15         := aSqlItem.ATTRIBUTE15;
    aPlsqlItem.MIGRATED_FLAG       := aSqlItem.MIGRATED_FLAG;
    RETURN aPlsqlItem;
  END SQL_TO_PL1;
  FUNCTION PL_TO_SQL1(
      aPlsqlItem APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_TBL)
    RETURN EAM_METERREADINGX246460X1X56
  IS
    aSqlItem EAM_METERREADINGX246460X1X56;
  BEGIN
    -- initialize the table
    aSqlItem      := EAM_METERREADINGX246460X1X56();
    IF aPlsqlItem IS NOT NULL THEN
      aSqlItem.EXTEND(aPlsqlItem.COUNT);
      IF aPlsqlItem.COUNT>0 THEN
        FOR I IN aPlsqlItem.FIRST..aPlsqlItem.LAST
        LOOP
          aSqlItem(I + 1 - aPlsqlItem.FIRST) := PL_TO_SQL0(aPlsqlItem(I));
        END LOOP;
      END IF;
    END IF;
    RETURN aSqlItem;
  END PL_TO_SQL1;
  FUNCTION SQL_TO_PL2(
      aSqlItem EAM_METERREADINGX246460X1X56)
    RETURN APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_TBL
  IS
    aPlsqlItem APPS.EAM_METERREADING_PUB.CTR_PROPERTY_READINGS_TBL;
  BEGIN
    IF aSqlItem.COUNT>0 THEN
      FOR I IN 1..aSqlItem.COUNT
      LOOP
        aPlsqlItem(I) := SQL_TO_PL1(aSqlItem(I));
      END LOOP;
    END IF;
    RETURN aPlsqlItem;
  END SQL_TO_PL2;
  FUNCTION PL_TO_SQL2(
      aPlsqlItem APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE)
    RETURN EAM_METERREADING_X246460X2X7
  IS
    aSqlItem EAM_METERREADING_X246460X2X7;
  BEGIN
    -- initialize the object
    aSqlItem                      := EAM_METERREADING_X246460X2X7(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL);
    aSqlItem.METER_ID             := aPlsqlItem.METER_ID;
    aSqlItem.METER_READING_ID     := aPlsqlItem.METER_READING_ID;
    aSqlItem.CURRENT_READING      := aPlsqlItem.CURRENT_READING;
    aSqlItem.CURRENT_READING_DATE := aPlsqlItem.CURRENT_READING_DATE;
    aSqlItem.RESET_FLAG           := aPlsqlItem.RESET_FLAG;
    aSqlItem.DESCRIPTION          := aPlsqlItem.DESCRIPTION;
    aSqlItem.WIP_ENTITY_ID        := aPlsqlItem.WIP_ENTITY_ID;
    aSqlItem.CHECK_IN_OUT_TYPE    := aPlsqlItem.CHECK_IN_OUT_TYPE;
    aSqlItem.CHECK_IN_OUT_TXN_ID  := aPlsqlItem.CHECK_IN_OUT_TXN_ID;
    aSqlItem.INSTANCE_ID          := aPlsqlItem.INSTANCE_ID;
    aSqlItem.SOURCE_LINE_ID       := aPlsqlItem.SOURCE_LINE_ID;
    aSqlItem.SOURCE_CODE          := aPlsqlItem.SOURCE_CODE;
    aSqlItem.WO_ENTRY_FAKE_FLAG   := aPlsqlItem.WO_ENTRY_FAKE_FLAG;
    aSqlItem.ADJUSTMENT_TYPE      := aPlsqlItem.ADJUSTMENT_TYPE;
    aSqlItem.ADJUSTMENT_READING   := aPlsqlItem.ADJUSTMENT_READING;
    aSqlItem.NET_READING          := aPlsqlItem.NET_READING;
    aSqlItem.RESET_REASON         := aPlsqlItem.RESET_REASON;
    aSqlItem.ATTRIBUTE_CATEGORY   := aPlsqlItem.ATTRIBUTE_CATEGORY;
    aSqlItem.ATTRIBUTE1           := aPlsqlItem.ATTRIBUTE1;
    aSqlItem.ATTRIBUTE2           := aPlsqlItem.ATTRIBUTE2;
    aSqlItem.ATTRIBUTE3           := aPlsqlItem.ATTRIBUTE3;
    aSqlItem.ATTRIBUTE4           := aPlsqlItem.ATTRIBUTE4;
    aSqlItem.ATTRIBUTE5           := aPlsqlItem.ATTRIBUTE5;
    aSqlItem.ATTRIBUTE6           := aPlsqlItem.ATTRIBUTE6;
    aSqlItem.ATTRIBUTE7           := aPlsqlItem.ATTRIBUTE7;
    aSqlItem.ATTRIBUTE8           := aPlsqlItem.ATTRIBUTE8;
    aSqlItem.ATTRIBUTE9           := aPlsqlItem.ATTRIBUTE9;
    aSqlItem.ATTRIBUTE10          := aPlsqlItem.ATTRIBUTE10;
    aSqlItem.ATTRIBUTE11          := aPlsqlItem.ATTRIBUTE11;
    aSqlItem.ATTRIBUTE12          := aPlsqlItem.ATTRIBUTE12;
    aSqlItem.ATTRIBUTE13          := aPlsqlItem.ATTRIBUTE13;
    aSqlItem.ATTRIBUTE14          := aPlsqlItem.ATTRIBUTE14;
    aSqlItem.ATTRIBUTE15          := aPlsqlItem.ATTRIBUTE15;
    aSqlItem.ATTRIBUTE16          := aPlsqlItem.ATTRIBUTE16;
    aSqlItem.ATTRIBUTE17          := aPlsqlItem.ATTRIBUTE17;
    aSqlItem.ATTRIBUTE18          := aPlsqlItem.ATTRIBUTE18;
    aSqlItem.ATTRIBUTE19          := aPlsqlItem.ATTRIBUTE19;
    aSqlItem.ATTRIBUTE20          := aPlsqlItem.ATTRIBUTE20;
    aSqlItem.ATTRIBUTE21          := aPlsqlItem.ATTRIBUTE21;
    aSqlItem.ATTRIBUTE22          := aPlsqlItem.ATTRIBUTE22;
    aSqlItem.ATTRIBUTE23          := aPlsqlItem.ATTRIBUTE23;
    aSqlItem.ATTRIBUTE24          := aPlsqlItem.ATTRIBUTE24;
    aSqlItem.ATTRIBUTE25          := aPlsqlItem.ATTRIBUTE25;
    aSqlItem.ATTRIBUTE26          := aPlsqlItem.ATTRIBUTE26;
    aSqlItem.ATTRIBUTE27          := aPlsqlItem.ATTRIBUTE27;
    aSqlItem.ATTRIBUTE28          := aPlsqlItem.ATTRIBUTE28;
    aSqlItem.ATTRIBUTE29          := aPlsqlItem.ATTRIBUTE29;
    aSqlItem.ATTRIBUTE30          := aPlsqlItem.ATTRIBUTE30;
    RETURN aSqlItem;
  END PL_TO_SQL2;
  FUNCTION SQL_TO_PL0(
      aSqlItem EAM_METERREADING_X246460X2X7)
    RETURN APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE
  IS
    aPlsqlItem APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE;
  BEGIN
    aPlsqlItem.METER_ID             := aSqlItem.METER_ID;
    aPlsqlItem.METER_READING_ID     := aSqlItem.METER_READING_ID;
    aPlsqlItem.CURRENT_READING      := aSqlItem.CURRENT_READING;
    aPlsqlItem.CURRENT_READING_DATE := aSqlItem.CURRENT_READING_DATE;
    aPlsqlItem.RESET_FLAG           := aSqlItem.RESET_FLAG;
    aPlsqlItem.DESCRIPTION          := aSqlItem.DESCRIPTION;
    aPlsqlItem.WIP_ENTITY_ID        := aSqlItem.WIP_ENTITY_ID;
    aPlsqlItem.CHECK_IN_OUT_TYPE    := aSqlItem.CHECK_IN_OUT_TYPE;
    aPlsqlItem.CHECK_IN_OUT_TXN_ID  := aSqlItem.CHECK_IN_OUT_TXN_ID;
    aPlsqlItem.INSTANCE_ID          := aSqlItem.INSTANCE_ID;
    aPlsqlItem.SOURCE_LINE_ID       := aSqlItem.SOURCE_LINE_ID;
    aPlsqlItem.SOURCE_CODE          := aSqlItem.SOURCE_CODE;
    aPlsqlItem.WO_ENTRY_FAKE_FLAG   := aSqlItem.WO_ENTRY_FAKE_FLAG;
    aPlsqlItem.ADJUSTMENT_TYPE      := aSqlItem.ADJUSTMENT_TYPE;
    aPlsqlItem.ADJUSTMENT_READING   := aSqlItem.ADJUSTMENT_READING;
    aPlsqlItem.NET_READING          := aSqlItem.NET_READING;
    aPlsqlItem.RESET_REASON         := aSqlItem.RESET_REASON;
    aPlsqlItem.ATTRIBUTE_CATEGORY   := aSqlItem.ATTRIBUTE_CATEGORY;
    aPlsqlItem.ATTRIBUTE1           := aSqlItem.ATTRIBUTE1;
    aPlsqlItem.ATTRIBUTE2           := aSqlItem.ATTRIBUTE2;
    aPlsqlItem.ATTRIBUTE3           := aSqlItem.ATTRIBUTE3;
    aPlsqlItem.ATTRIBUTE4           := aSqlItem.ATTRIBUTE4;
    aPlsqlItem.ATTRIBUTE5           := aSqlItem.ATTRIBUTE5;
    aPlsqlItem.ATTRIBUTE6           := aSqlItem.ATTRIBUTE6;
    aPlsqlItem.ATTRIBUTE7           := aSqlItem.ATTRIBUTE7;
    aPlsqlItem.ATTRIBUTE8           := aSqlItem.ATTRIBUTE8;
    aPlsqlItem.ATTRIBUTE9           := aSqlItem.ATTRIBUTE9;
    aPlsqlItem.ATTRIBUTE10          := aSqlItem.ATTRIBUTE10;
    aPlsqlItem.ATTRIBUTE11          := aSqlItem.ATTRIBUTE11;
    aPlsqlItem.ATTRIBUTE12          := aSqlItem.ATTRIBUTE12;
    aPlsqlItem.ATTRIBUTE13          := aSqlItem.ATTRIBUTE13;
    aPlsqlItem.ATTRIBUTE14          := aSqlItem.ATTRIBUTE14;
    aPlsqlItem.ATTRIBUTE15          := aSqlItem.ATTRIBUTE15;
    aPlsqlItem.ATTRIBUTE16          := aSqlItem.ATTRIBUTE16;
    aPlsqlItem.ATTRIBUTE17          := aSqlItem.ATTRIBUTE17;
    aPlsqlItem.ATTRIBUTE18          := aSqlItem.ATTRIBUTE18;
    aPlsqlItem.ATTRIBUTE19          := aSqlItem.ATTRIBUTE19;
    aPlsqlItem.ATTRIBUTE20          := aSqlItem.ATTRIBUTE20;
    aPlsqlItem.ATTRIBUTE21          := aSqlItem.ATTRIBUTE21;
    aPlsqlItem.ATTRIBUTE22          := aSqlItem.ATTRIBUTE22;
    aPlsqlItem.ATTRIBUTE23          := aSqlItem.ATTRIBUTE23;
    aPlsqlItem.ATTRIBUTE24          := aSqlItem.ATTRIBUTE24;
    aPlsqlItem.ATTRIBUTE25          := aSqlItem.ATTRIBUTE25;
    aPlsqlItem.ATTRIBUTE26          := aSqlItem.ATTRIBUTE26;
    aPlsqlItem.ATTRIBUTE27          := aSqlItem.ATTRIBUTE27;
    aPlsqlItem.ATTRIBUTE28          := aSqlItem.ATTRIBUTE28;
    aPlsqlItem.ATTRIBUTE29          := aSqlItem.ATTRIBUTE29;
    aPlsqlItem.ATTRIBUTE30          := aSqlItem.ATTRIBUTE30;
    RETURN aPlsqlItem;
  END SQL_TO_PL0;
  PROCEDURE CREATE_METER(
      P_API_VERSION   NUMBER,
      P_INIT_MSG_LIST VARCHAR2,
      P_COMMIT        VARCHAR2,
      X_MSG_COUNT OUT NUMBER,
      X_MSG_DATA OUT VARCHAR2,
      X_RETURN_STATUS OUT VARCHAR2,
      P_METER_READING_REC EAM_METERREADING_X246460X2X7,
      P_VALUE_BEFORE_RESET NUMBER,
      P_IGNORE_WARNINGS    VARCHAR2,
      X_METER_READING_ID OUT NUMBER )
  IS
    P_METER_READING_REC_ APPS.EAM_METERREADING_PUB.METER_READING_REC_TYPE;
  BEGIN
    P_METER_READING_REC_ := XXNUC_EAM_METER_XFACE_UTIL_PKG.SQL_TO_PL0(P_METER_READING_REC);
    APPS.EAM_METERREADING_PUB.CREATE_METER_READING(P_API_VERSION, P_INIT_MSG_LIST, P_COMMIT, X_MSG_COUNT, X_MSG_DATA, X_RETURN_STATUS, P_METER_READING_REC_, P_VALUE_BEFORE_RESET, P_IGNORE_WARNINGS, X_METER_READING_ID );
  END CREATE_METER;
END XXNUC_EAM_METER_XFACE_UTIL_PKG;
/
show errors
EXIT

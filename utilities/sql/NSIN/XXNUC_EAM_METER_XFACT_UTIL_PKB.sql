create or replace PACKAGE BODY      XXNUC_EAM_METER_XFACT_UTIL_PKG
AS
/******************************************************************************
   NAME:       XXNUC_EAM_METER_XFACT_UTIL_PKG.pkb
   PURPOSE: Process is to take meter readings from Level 3 systems on a regular interval 
   to update the corresponding defined meter. This is to schedule certain preventative 
   maintenance work by metered increments based on data from Level II operational systems.
   Wrapper to EAM_METERREADING_PUB.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        3/18/2015      Surjit Singh       1. Created this package body.
******************************************************************************/
   PROCEDURE CREATE_METER (P_API_VERSION              NUMBER,
                           P_INIT_MSG_LIST            VARCHAR2,
                           P_COMMIT                   VARCHAR2,
                           X_MSG_COUNT            OUT NUMBER,
                           X_MSG_DATA             OUT VARCHAR2,
                           X_RETURN_STATUS        OUT VARCHAR2,
                           P_METER_READING_ID           NUMBER,
                           P_METER_ID                   NUMBER,
                           P_CURRENT_READING            NUMBER,
                           P_CURRENT_READING_DATE       DATE,
                           P_RESET_FLAG                 VARCHAR2,
                           P_DESCRIPTION                VARCHAR2,
                           P_WIP_ENTITY_ID              NUMBER,
                           P_CHECK_IN_OUT_TYPE          NUMBER,
                           P_CHECK_IN_OUT_TXN_ID        NUMBER,
                           P_INSTANCE_ID                NUMBER,
                           P_SOURCE_LINE_ID             NUMBER,
                           P_SOURCE_CODE                VARCHAR2,
                           P_WO_ENTRY_FAKE_FLAG         VARCHAR2,
                           P_ADJUSTMENT_TYPE            VARCHAR2,
                           P_ADJUSTMENT_READING         NUMBER,
                           P_NET_READING                NUMBER,
                           P_RESET_REASON               VARCHAR2,
                           P_ATTRIBUTE_CATEGORY         VARCHAR2,
                           P_ATTRIBUTE1                 VARCHAR2,
                           P_ATTRIBUTE2                 VARCHAR2,
                           P_ATTRIBUTE3                 VARCHAR2,
                           P_ATTRIBUTE4                 VARCHAR2,
                           P_ATTRIBUTE5                 VARCHAR2,
                           P_ATTRIBUTE6                 VARCHAR2,
                           P_ATTRIBUTE7                 VARCHAR2,
                           P_ATTRIBUTE8                 VARCHAR2,
                           P_ATTRIBUTE9                 VARCHAR2,
                           P_ATTRIBUTE10                VARCHAR2,
                           P_ATTRIBUTE11                VARCHAR2,
                           P_ATTRIBUTE12                VARCHAR2,
                           P_ATTRIBUTE13                VARCHAR2,
                           P_ATTRIBUTE14                VARCHAR2,
                           P_ATTRIBUTE15                VARCHAR2,
                           P_ATTRIBUTE16                VARCHAR2,
                           P_ATTRIBUTE17                VARCHAR2,
                           P_ATTRIBUTE18                VARCHAR2,
                           P_ATTRIBUTE19                VARCHAR2,
                           P_ATTRIBUTE20                VARCHAR2,
                           P_ATTRIBUTE21                VARCHAR2,
                           P_ATTRIBUTE22                VARCHAR2,
                           P_ATTRIBUTE23                VARCHAR2,
                           P_ATTRIBUTE24                VARCHAR2,
                           P_ATTRIBUTE25                VARCHAR2,
                           P_ATTRIBUTE26                VARCHAR2,
                           P_ATTRIBUTE27                VARCHAR2,
                           P_ATTRIBUTE28                VARCHAR2,
                           P_ATTRIBUTE29                VARCHAR2,
                           P_ATTRIBUTE30                VARCHAR2,
                           P_VALUE_BEFORE_RESET       NUMBER,
                           P_IGNORE_WARNINGS          VARCHAR2,
                           X_METER_READING_ID     OUT NUMBER)
   IS
      P_METER_READING_REC   EAM_METERREADING_PUB.METER_READING_REC_TYPE;
   BEGIN
      P_METER_READING_REC.METER_ID := P_METER_ID;
      P_METER_READING_REC.CURRENT_READING := P_CURRENT_READING;
      P_METER_READING_REC.CURRENT_READING_DATE := P_CURRENT_READING_DATE;
      P_METER_READING_REC.RESET_FLAG := P_RESET_FLAG;
      P_METER_READING_REC.DESCRIPTION := P_DESCRIPTION;
      P_METER_READING_REC.WIP_ENTITY_ID := P_WIP_ENTITY_ID;
      P_METER_READING_REC.CHECK_IN_OUT_TYPE := P_CHECK_IN_OUT_TYPE;
      P_METER_READING_REC.CHECK_IN_OUT_TXN_ID := P_CHECK_IN_OUT_TXN_ID;
      P_METER_READING_REC.INSTANCE_ID := P_INSTANCE_ID;
      P_METER_READING_REC.SOURCE_LINE_ID := P_SOURCE_LINE_ID;
      P_METER_READING_REC.SOURCE_CODE := P_SOURCE_CODE;
      P_METER_READING_REC.WO_ENTRY_FAKE_FLAG := P_WO_ENTRY_FAKE_FLAG;
      P_METER_READING_REC.ADJUSTMENT_TYPE := P_ADJUSTMENT_TYPE;
      P_METER_READING_REC.ADJUSTMENT_READING := P_ADJUSTMENT_READING;
      P_METER_READING_REC.NET_READING := P_NET_READING;
      P_METER_READING_REC.RESET_REASON := P_RESET_REASON;
      P_METER_READING_REC.ATTRIBUTE_CATEGORY := P_ATTRIBUTE_CATEGORY;
      P_METER_READING_REC.ATTRIBUTE1 := P_ATTRIBUTE1;
      P_METER_READING_REC.ATTRIBUTE2 := P_ATTRIBUTE2;
      P_METER_READING_REC.ATTRIBUTE3 := P_ATTRIBUTE3;
      P_METER_READING_REC.ATTRIBUTE4 := P_ATTRIBUTE4;
      P_METER_READING_REC.ATTRIBUTE5 := P_ATTRIBUTE5;
      P_METER_READING_REC.ATTRIBUTE6 := P_ATTRIBUTE6;
      P_METER_READING_REC.ATTRIBUTE7 := P_ATTRIBUTE7;
      P_METER_READING_REC.ATTRIBUTE8 := P_ATTRIBUTE8;
      P_METER_READING_REC.ATTRIBUTE9 := P_ATTRIBUTE9;
      P_METER_READING_REC.ATTRIBUTE10 := P_ATTRIBUTE10;
      P_METER_READING_REC.ATTRIBUTE11 := P_ATTRIBUTE11;
      P_METER_READING_REC.ATTRIBUTE12 := P_ATTRIBUTE12;
      P_METER_READING_REC.ATTRIBUTE13 := P_ATTRIBUTE13;
      P_METER_READING_REC.ATTRIBUTE14 := P_ATTRIBUTE14;
      P_METER_READING_REC.ATTRIBUTE15 := P_ATTRIBUTE15;
      P_METER_READING_REC.ATTRIBUTE16 := P_ATTRIBUTE16;
      P_METER_READING_REC.ATTRIBUTE17 := P_ATTRIBUTE17;
      P_METER_READING_REC.ATTRIBUTE18 := P_ATTRIBUTE18;
      P_METER_READING_REC.ATTRIBUTE19 := P_ATTRIBUTE19;
      P_METER_READING_REC.ATTRIBUTE20 := P_ATTRIBUTE20;
      P_METER_READING_REC.ATTRIBUTE21 := P_ATTRIBUTE21;
      P_METER_READING_REC.ATTRIBUTE22 := P_ATTRIBUTE22;
      P_METER_READING_REC.ATTRIBUTE23 := P_ATTRIBUTE23;
      P_METER_READING_REC.ATTRIBUTE24 := P_ATTRIBUTE24;
      P_METER_READING_REC.ATTRIBUTE25 := P_ATTRIBUTE25;
      P_METER_READING_REC.ATTRIBUTE26 := P_ATTRIBUTE26;
      P_METER_READING_REC.ATTRIBUTE27 := P_ATTRIBUTE27;
      P_METER_READING_REC.ATTRIBUTE28 := P_ATTRIBUTE28;
      P_METER_READING_REC.ATTRIBUTE29 := P_ATTRIBUTE29;
      P_METER_READING_REC.ATTRIBUTE30 := P_ATTRIBUTE30;
     
     
      APPS.EAM_METERREADING_PUB.CREATE_METER_READING (P_API_VERSION,
                                                      P_INIT_MSG_LIST,
                                                      P_COMMIT,
                                                      X_MSG_COUNT,
                                                      X_MSG_DATA,
                                                      X_RETURN_STATUS,
                                                      P_METER_READING_REC,
                                                      P_VALUE_BEFORE_RESET,
                                                      P_IGNORE_WARNINGS,
                                                      X_METER_READING_ID);

  EXCEPTION
  WHEN OTHERS THEN
   X_MSG_DATA := sqlcode||'-'||SQLERRM || X_MSG_DATA;
   X_RETURN_STATUS := 'E';
   X_MSG_DATA := X_MSG_DATA; 
   
   END CREATE_METER;
END XXNUC_EAM_METER_XFACT_UTIL_PKG;
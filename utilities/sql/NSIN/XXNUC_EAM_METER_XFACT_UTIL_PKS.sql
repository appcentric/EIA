create or replace PACKAGE      XXNUC_EAM_METER_XFACT_UTIL_PKG AS 

  /******************************************************************************
   NAME:       XXNUC_EAM_METER_XFACT_UTIL_PKG.pks
   PURPOSE: Process is to take meter readings from Level 3 systems on a regular interval 
   to update the corresponding defined meter. This is to schedule certain preventative 
   maintenance work by metered increments based on data from Level II operational systems. 

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        3/18/2015      Surjit Singh       1. Created this package.
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
                           X_METER_READING_ID     OUT NUMBER);
END XXNUC_EAM_METER_XFACT_UTIL_PKG;
DROP VIEW XXNUC.XXNUC_GET_UPDATE_EMP_RECS_V;

/* Formatted on 5/7/2014 8:33:01 PM (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW XXNUC.XXNUC_GET_UPDATE_EMP_RECS_V
(
   SAP_EMP_NUM,
   NEW_EMP,
   LAST_NAME,
   FIRST_NAME,
   MIDDLE_INITIAL,
   SUFFIX,
   GENDER,
   LEDGER,
   EMAIL_ADDRESS,
   ADDRESS_LINE1,
   ADDRESS_LINE2,
   CITY,
   STATE,
   ZIP_CODE,
   COUNTRY,
   TELEPHONE,
   JOB,
   SUPERVISORID,
   DEPT,
   DEPARTMENTID,
   PERSONNELAREAID,
   EMPLOYMENT_DATE,
   EMPLOYMENT_END_DATE,
   DIV_NO
)
AS
   SELECT sap.SAP_EMP_NUM,
          sps.SAP_EMP_NUM AS New_Emp,
          sap.LAST_NAME,
          sap.FIRST_NAME,
          sap.MIDDLE_INITIAL,
          sap.SUFFIX,
          sap.GENDER,
          sap.LEDGER,
          sap.EMAIL_ADDRESS,
          sap.ADDRESS_LINE1,
          sap.ADDRESS_LINE2,
          sap.CITY,
          sap.STATE,
          sap.ZIP_CODE,
          sap.COUNTRY,
          sap.TELEPHONE,
          sap.JOB,
          sap.SUPERVISORID,
          sap.DEPT,
          sap.DEPARTMENTID,
          sap.PERSONNELAREAID,
          sap.EMPLOYMENT_DATE,
          sap.EMPLOYMENT_END_DATE,
          sap.DIV_NO
     FROM xxnuc.xxnuc_sap_sps_emp_comp_v sap
          LEFT JOIN xxnuc.xxnuc_sps_emp_comp_v sps
             ON sap.sap_emp_num = sps.sap_emp_num
    WHERE        sap.COMP_FIELD <> sps.COMP_FIELD
             AND SPS.RECORD_STATUS != 'LOCKED'
          OR sps.SAP_EMP_NUM IS NULL;

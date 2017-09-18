DROP VIEW XXNUC.XXNUC_SAP_SPS_EMP_COMP_V;

/* Formatted on 5/7/2014 8:20:28 PM (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW XXNUC.XXNUC_SAP_SPS_EMP_COMP_V
(
   SAP_EMP_NUM,
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
   DIV_NO,
   COMP_FIELD
)
AS
   SELECT SAP_EMP_NUM,
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
          DIV_NO,
             SAP_EMP_NUM
          || LAST_NAME
          || FIRST_NAME
          || MIDDLE_INITIAL
          || SUFFIX
          || GENDER
          || DIV_NO
          || LEDGER
          || EMAIL_ADDRESS
          || ADDRESS_LINE1
          || ADDRESS_LINE2
          || CITY
          || STATE
          || ZIP_CODE
          || COUNTRY
          || TELEPHONE
          || JOB
          || SUPERVISORID
          || DEPT
          || DEPARTMENTID
          || PERSONNELAREAID
          || EMPLOYMENT_DATE
          || EMPLOYMENT_END_DATE
             AS COMP_FIELD
     FROM xxnuc.xxnuc_sap_sps_employee;


GRANT SELECT ON XXNUC.XXNUC_SAP_SPS_EMP_COMP_V TO APPS_READ_ROLE;

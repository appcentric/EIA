/* Formatted on 4/17/2014 9:05:08 AM (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW XXNUC.XXNUC_SPS_EMP_COMP_V
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
   RECORD_STATUS, --field added so that locked records can be determined
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
          RECORD_STATUS,
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
     FROM xxnuc.xxnuc_sps_employees;

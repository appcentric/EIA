DROP VIEW XXNUC.XXNUC_SPS_EMPLOYEE_COMPARE_V;

/* Formatted on 5/7/2014 8:22:35 PM (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW XXNUC.XXNUC_SPS_EMPLOYEE_COMPARE_V
(
   SAP_EMP_NUM,
   LAST_NAME,
   FIRST_NAME,
   MIDDLE_INITIAL,
   SUFFIX,
   GENDER,
   LEDGER,
   EMPLOYMENT_DATE,
   EMPLOYMENT_END_DATE,
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
   COMPSTRING
)
AS
   SELECT SAP_Emp_Num,
          LAST_NAME,
          FIRST_NAME,
          MIDDLE_INITIAL,
          SUFFIX,
          GENDER,
          LEDGER,
          EMPLOYMENT_DATE,
          EMPLOYMENT_END_DATE,
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
          DepartmentID,
          PersonnelAreaID,
             SAP_Emp_Num
          || LAST_NAME
          || FIRST_NAME
          || MIDDLE_INITIAL
          || SUFFIX
          || GENDER
          || LEDGER
          || EMPLOYMENT_DATE
          || EMPLOYMENT_END_DATE
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
          || DepartmentID
          || PersonnelAreaID
             AS CompString
     FROM XXNUC.XXNUC_SAP_SPS_EMPLOYEE;


GRANT SELECT ON XXNUC.XXNUC_SPS_EMPLOYEE_COMPARE_V TO APPS_READ_ROLE;

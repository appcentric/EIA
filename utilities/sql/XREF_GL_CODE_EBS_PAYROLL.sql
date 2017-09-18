-- Cross Reference table 1.0
-- 6/8/2013

CREATE TABLE XREF_GL_CODE_EBS_PAYROLL (ROW_ID VARCHAR2(48) NOT NULL, SAP VARCHAR2(2000), 
EBS VARCHAR2(2000),LAST_MODIFIED TIMESTAMP NOT NULL);
/
Create Index XREF_GL_CODE_EBS_PAYROLL_N1 on XREF_GL_CODE_EBS_PAYROLL(Row_ID) reverse;
Create Index XREF_GL_CODE_EBS_PAYROLL_N2 on XREF_GL_CODE_EBS_PAYROLL(EBS);
Create Index XREF_GL_CODE_EBS_PAYROLL_N3 on XREF_GL_CODE_EBS_PAYROLL(SAP);
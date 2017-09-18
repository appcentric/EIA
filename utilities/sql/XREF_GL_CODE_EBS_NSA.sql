-- Cross Reference table 1.0
-- 6/8/2013

CREATE TABLE XREF_GL_CODE_EBS_NSA (ROW_ID VARCHAR2(48) NOT NULL, NSA VARCHAR2(2000), 
EBS VARCHAR2(2000),LAST_MODIFIED TIMESTAMP NOT NULL);
/
Create Index XREF_GL_CODE_EBS_NSA_N1 on XREF_GL_CODE_EBS_NSA(Row_ID) reverse;
Create Index XREF_GL_CODE_EBS_NSA_N2 on XREF_GL_CODE_EBS_NSA(EBS);
Create Index XREF_GL_CODE_EBS_NSA_N3 on XREF_GL_CODE_EBS_NSA(NSA);
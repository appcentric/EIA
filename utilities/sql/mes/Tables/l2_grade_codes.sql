-- L2 Table

 CREATE TABLE ebs_grade_codes
   (grade_id   				NUMBER NOT NULL,
	grade_code 				VARCHAR2(150) NOT NULL, 
	grade_desc_1 			VARCHAR2(240), 
	grade_desc_2 			VARCHAR2(240), 
	creation_date 			DATE, 
	created_by 				VARCHAR2(15), 
	last_update_date 		DATE,
	last_updated_by  		VARCHAR2(15),
	attribute1              VARCHAR2(150),
	attribute2              VARCHAR2(150),
	attribute3              VARCHAR2(150),
	attribute4              VARCHAR2(150),
	attribute5              VARCHAR2(150),
	attribute6              VARCHAR2(150)
);

   
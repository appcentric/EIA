create or replace view XXNUC_GL_CODE_COMBO_V
/*
View Used by SOA to provide Account code combination information
5/29/2014 
*/
(code_combination_id
,segment1
,segment2
,segment3
,segment4
,segment5
,segment6
,segment7
,segment8
,segment1_desc
,segment2_desc
,segment3_desc
,segment4_desc
,segment5_desc
,segment6_desc
,segment7_desc
,segment8_desc
,chart_of_accounts_id
,concatenated_segments
,gl_account_type
,gl_control_account
,reconciliation_flag
,detail_budgeting_allowed
,detail_posting_allowed
,summary_flag
,enabled_flag
,start_date_active
,end_date_active
,reference1
,reference2
--,gcc.reference3
,reference4
,reference5
,ledger_name
,ledger_short_name
,ledger_id
,ledger_desc
)
as
SELECT
gcc.code_combination_id
,gcc.segment1
,gcc.segment2
,gcc.segment3
,gcc.segment4
,gcc.segment5
,gcc.segment6
,gcc.segment7
,gcc.segment8
,SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,1,gcc.segment1),1,40) segment1_desc
,SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,2,gcc.segment2),1,40) segment2_desc
,DECODE(gcc.segment3,NULL,'',SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,3,gcc.segment3),1,40)) segment3_desc
,DECODE(gcc.segment4,NULL,'',SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,4,gcc.segment4),1,40)) segment4_desc
,DECODE(gcc.segment5,NULL,'',SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,5,gcc.segment5),1,40)) segment5_desc
,DECODE(gcc.segment6,NULL,'',SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,6,gcc.segment6),1,40)) segment6_desc
,DECODE(gcc.SEGMENT7,NULL,'',SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,7,gcc.segment7),1,40)) segment7_desc
,DECODE(gcc.SEGMENT9,NULL,'',SUBSTR(apps.gl_flexfields_pkg.get_description_sql( gcc.chart_of_accounts_id,8,gcc.segment8),1,40)) segment8_desc
,gcc.chart_of_accounts_id chart_of_accounts_id
,gcc.concatenated_segments
,gcc.gl_account_type
,gcc.gl_control_account
,gcc.reconciliation_flag
,gcc.detail_budgeting_allowed
,gcc.detail_posting_allowed
,gcc.summary_flag
,gcc.enabled_flag
,gcc.start_date_active
,gcc.end_date_active
,gcc.reference1
,gcc.reference2
--,gcc.reference3
,gcc.reference4
,gcc.reference5
,gl.name  ledger_name
,gl.short_name ledger_short_name
,gl.ledger_id ledger_id
,gl.description ledger_desc
FROM gl_code_combinations_kfv gcc, gl_ledgers gl
,FND_ID_FLEX_STRUCTURES fifs
where fifs.id_flex_num = gl.chart_of_accounts_id
and fifs.application_id = 101
and fifs.id_flex_code='GL#'
and gl.chart_of_accounts_id = gcc.chart_of_accounts_id
/

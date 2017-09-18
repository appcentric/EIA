CREATE OR REPLACE FORCE VIEW XREF_CODE_COMBO_V (XREF_TABLE_NAME, EBS, LEGACY)
/*
Description: View in SOAINFRA schema
Date: 6/18/2013
Author: KPIT
*/
AS
  SELECT ebs.xref_table_name,
    ebs.value ebs,
    sap.value sap
  FROM
    (SELECT xref_table_name,
      ROW_NUMBER,
      value
    FROM xref_data
    WHERE xref_table_name LIKE 'oramds:/apps/EIAMetadata/CommonArtifacts/xref/CODE_COMBO_N%.xref'
    AND xref_column_name='EBS'
    ) ebs,
    (SELECT xref_table_name,
      ROW_NUMBER,
      value
    FROM xref_data
    WHERE xref_table_name LIKE 'oramds:/apps/EIAMetadata/CommonArtifacts/xref/CODE_COMBO_N%.xref'
    AND xref_column_name='LEGACY'
    ) sap
  WHERE ebs.row_number = sap.row_number;
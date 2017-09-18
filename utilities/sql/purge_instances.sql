-- $Header$
-- 04/16/2011
-- Vivek Srinivasan
-- Script to purge Composite instances from SOA_INFRA schema
-- Should be run from the SOAINFRA schema
-- sqlplus dev_soainfra/manager @purge_instances.sql
--
-- This script accepts the input date and purges instances piror to that date
-- Script written for  SOA Suite 11.1.1.3 (11gPS2)

WHENEVER OSERROR EXIT ROLLBACK
WHENEVER SQLERROR EXIT ROLLBACK
PROMPT Enter DATE PRIOR TO which the INSTANCES has TO be purged YYYY-MM-DD format 
ACCEPT threshold_date
PROMPT
PROMPT
PROMPT Enter SOA infra schema name 
ACCEPT schema_name
PROMPT
PROMPT

SET SERVEROUTPUT on
SET verify OFF
DECLARE
l_filter INSTANCE_FILTER := INSTANCE_FILTER();
l_max_instances     NUMBER;
l_deleted_instances NUMBER := 0;
BEGIN
-- Bug 11.1.1.3 RCU unable to delete, because the temporary purge table had PK constraint not allowing documents to be inserted
EXECUTE IMMEDIATE 'ALTER TABLE &&schema_name..TEMP_DOCUMENT_CI_REF DISABLE CONSTRAINT T_CI_DOC_PK';

l_filter.max_created_date := to_timestamp('&&threshold_date','YYYY-MM-DD');
l_max_instances := NULL;
l_deleted_instances := FABRIC.DELETE_ALL(FILTER => l_filter,MAX_INSTANCES => l_max_instances);
dbms_output.put_line('Delete Instances '||l_deleted_instances);
-- Bug 11.1.1.3 RCU unable to delete, because the temporary purge table had PK constraint not allowing documents to be inserted
EXECUTE IMMEDIATE 'ALTER TABLE &&schema_name..TEMP_DOCUMENT_CI_REF ENABLE CONSTRAINT T_CI_DOC_PK';

END;
/

COMMIT;

EXIT;

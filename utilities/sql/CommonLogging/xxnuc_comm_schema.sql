/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_schema.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating schema and providing roles
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_schema.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

CREATE USER xxnuc_logging IDENTIFIED BY xxnuc_logging;
GRANT CONNECT, RESOURCE TO xxnuc_logging; 
GRANT EXECUTE ON DBMS_AQADM TO xxnuc_logging; 
GRANT Aq_administrator_role TO xxnuc_logging;
GRANT EXECUTE ON dbms_aq TO xxnuc_logging;
GRANT CREATE VIEW TO RESOURCE; 
GRANT EXECUTE ON dbms_scheduler TO xxnuc_logging; 
GRANT EXECUTE ON DBMS_ISCHED TO xxnuc_logging; 
GRANT CREATE JOB,CREATE ANY JOB,MANAGE SCHEDULER TO xxnuc_logging; 
GRANT UNLIMITED TABLESPACE TO xxnuc_logging;

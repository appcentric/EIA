/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_idx.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating indexes
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_idx.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

PROMPT Creating Index xxnuc_comm_audit_log_n1

CREATE INDEX xxnuc_comm_audit_log_n1 ON xxnuc_comm_audit_log (transaction_id);

PROMPT Creating Index xxnuc_comm_audit_step_n1

CREATE INDEX xxnuc_comm_audit_step_n1 ON xxnuc_comm_audit_step (log_id);

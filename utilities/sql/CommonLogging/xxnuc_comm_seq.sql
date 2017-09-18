/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_seq.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating sequences
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_seq.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

PROMPT Creating SEQUENCE xxnuc_comm_audit_log_seq

CREATE SEQUENCE xxnuc_comm_audit_log_seq
  START WITH 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  NOCACHE
  NOORDER
;

PROMPT Creating SEQUENCE xxnuc_comm_audit_step_seq

CREATE SEQUENCE xxnuc_comm_audit_step_seq
  START WITH 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  NOCACHE
  NOORDER
;

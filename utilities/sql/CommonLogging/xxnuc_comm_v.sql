/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_v.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating views
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_v.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

PROMPT Creating VIEW xxnuc_comm_audit_log_v

CREATE VIEW xxnuc_comm_audit_log_v AS
SELECT log_id ,
  transaction_id ,
  project_name,
  transaction_name ,
  (SELECT meaning FROM xxnuc_comm_integ_sys WHERE code = source_system
  ) source_system ,
  (SELECT meaning FROM xxnuc_comm_integ_sys WHERE code = target_system
  ) target_system ,
  (SELECT meaning FROM xxnuc_comm_audit_status WHERE code = transaction_status
  ) transaction_status ,
  created_time ,
  created_by ,
  updated_time ,
  updated_by ,
  v_attribute1 ,
  v_attribute2 ,
  n_attribute1 ,
  n_attribute2
FROM xxnuc_comm_audit_log 
;

PROMPT Creating VIEW xxnuc_comm_audit_step_log_v

CREATE VIEW xxnuc_comm_audit_step_log_v AS
SELECT step_log_id ,
  log_id ,
  component_id ,
  (SELECT meaning FROM xxnuc_comm_integ_sys WHERE code = message_source_system
  ) message_source_system ,
  process_name ,
  (SELECT meaning FROM xxnuc_comm_audit_logtyp WHERE code = log_type
  ) log_type,
  message_code ,
  message_description ,
  created_time ,
  v_attribute1 ,
  v_attribute2 ,
  n_attribute1 ,
  n_attribute2
FROM xxnuc_comm_audit_step
;

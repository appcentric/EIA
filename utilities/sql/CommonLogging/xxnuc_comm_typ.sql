/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_typ.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating object types
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_typ.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

PROMPT Creating OBJECT TYPE xxnuc_comm_audit_log_typ

CREATE TYPE xxnuc_comm_audit_log_typ
AS
  OBJECT
  (
    log_id             NUMBER,
    transaction_id     VARCHAR2(250),
    project_name       VARCHAR2(100),
    transaction_name   VARCHAR2(250),
    source_system      VARCHAR2(250),
    target_system      VARCHAR2(250),
    transaction_status VARCHAR2(250),
    created_time TIMESTAMP (6),
    created_by VARCHAR2(50),
    updated_time TIMESTAMP (6),
    updated_by   VARCHAR2(50),
    v_attribute1 VARCHAR2(200),
    v_attribute2 VARCHAR2(200),
    n_attribute1 NUMBER,
    n_attribute2 NUMBER )
/

PROMPT Creating OBJECT TYPE xxnuc_comm_audit_step_typ

CREATE TYPE xxnuc_comm_audit_step_typ
AS
  OBJECT
  (
    step_log_id           NUMBER,
    log_id                NUMBER,
    component_id          VARCHAR2(30),
    message_source_system VARCHAR2(250),
    process_name          VARCHAR2(250),
    log_type              VARCHAR2(250),
    message_code          VARCHAR2(20),
    message_description   VARCHAR2(4000),
    created_time TIMESTAMP (6),
    v_attribute1 VARCHAR2(200),
    v_attribute2 VARCHAR2(200),
    n_attribute1 NUMBER,
    n_attribute2 NUMBER )
/

PROMPT Creating OBJECT TYPE xxnuc_comm_audit_step_tab_typ

CREATE TYPE xxnuc_comm_audit_step_tab_typ AS varray ( 1000 ) OF xxnuc_comm_audit_step_typ
/

PROMPT Creating OBJECT TYPE xxnuc_comm_eml_notif_typ

CREATE TYPE xxnuc_comm_eml_notif_typ
AS
  OBJECT
  (
    audit_step_log xxnuc_comm_audit_step_tab_typ,
    audit_log xxnuc_comm_audit_log_typ,
    actor_email_id VARCHAR2(4000),
	fyi_email_id   VARCHAR2(4000))
/

PROMPT Creating OBJECT TYPE xxnuc_comm_logg_obj_typ

CREATE TYPE xxnuc_comm_logg_obj_typ
AS
  OBJECT
  (
    transaction_id        VARCHAR2(250),
    project_name          VARCHAR2(100),
    component_id          VARCHAR2(30),
    transaction_name      VARCHAR2(250),
    process_name          VARCHAR2(250),
    message_source_system NUMBER(2),
    source_system         NUMBER(2),
    target_system         NUMBER(2),
    log_type              NUMBER(2),
    message_code          VARCHAR2(250),
    message_description   VARCHAR2(4000),
    transaction_status    NUMBER(2) ,
    created_by            VARCHAR2(50),
    updated_by            VARCHAR2(50),
    v_attribute1          VARCHAR2(200),
    v_attribute2          VARCHAR2(200),
    n_attribute1          NUMBER,
    n_attribute2          NUMBER )
/

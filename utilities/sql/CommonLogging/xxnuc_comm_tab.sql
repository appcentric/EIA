/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_tab.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating tables
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_tab.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

PROMPT Creating TABLE xxnuc_comm_group_setting

CREATE TABLE xxnuc_comm_group_setting
  (
    groupname   VARCHAR2(50),
    description VARCHAR2(4000),
    CONSTRAINT GROUP_SETTING_pk PRIMARY KEY (groupname)
  )
;

PROMPT Creating TABLE xxnuc_comm_email_group

CREATE TABLE xxnuc_comm_email_group
  (
    groupname    VARCHAR2(50),
    email_id     VARCHAR2(100),
    notification VARCHAR(10),
    CONSTRAINT EMAIL_GROUP_pk PRIMARY KEY (groupname,email_id),
    CONSTRAINT EMAIL_GROUP_fk FOREIGN KEY (groupname) REFERENCES xxnuc_comm_group_setting (groupname) ON
  DELETE CASCADE
  ) 
;

PROMPT Creating TABLE xxnuc_comm_trx_notif

CREATE TABLE xxnuc_comm_trx_notif
  (
    transaction_name VARCHAR2(250),
    notification     VARCHAR(10),
    CONSTRAINT TRANSACTION_NOTIFICATION_pk PRIMARY KEY (transaction_name)
  )
;

PROMPT Creating TABLE xxnuc_comm_eml_notif

CREATE TABLE xxnuc_comm_eml_notif
  (
    transaction_name       VARCHAR2(250),
    email_group            VARCHAR2(50),
    notifiction_type       VARCHAR(10),
    notification           VARCHAR(10),
    error_notification     VARCHAR(5),
    warning_notification   VARCHAR(5),
    completed_notification VARCHAR(5),
    CONSTRAINT EMAIL_NOTIFICATION_CPK PRIMARY KEY (transaction_name,email_group,notifiction_type),
    CONSTRAINT TRANSACTION_NAME_fk FOREIGN KEY (transaction_name) REFERENCES xxnuc_comm_trx_notif (transaction_name) ON
  DELETE CASCADE,
    CONSTRAINT EMAIL_NOTIFICATION_fk FOREIGN KEY (email_group) REFERENCES xxnuc_comm_group_setting (groupname) ON
  DELETE CASCADE
  )
;

PROMPT Creating TABLE xxnuc_comm_audit_status

CREATE TABLE xxnuc_comm_audit_status
  (
    code    NUMBER(2),
    meaning VARCHAR2(250),
    CONSTRAINT audit_status_pk PRIMARY KEY (code),
    CONSTRAINT audit_status_uk UNIQUE (code, meaning)
  )
;

PROMPT Creating TABLE xxnuc_comm_integ_sys

CREATE TABLE xxnuc_comm_integ_sys
  (
    code    NUMBER(2),
    meaning VARCHAR2(250),
    CONSTRAINT integrating_system_pk PRIMARY KEY (code) ,
    CONSTRAINT integrating_system_uk UNIQUE (code, meaning)
  )
;

PROMPT Creating TABLE xxnuc_comm_audit_logtyp

CREATE TABLE xxnuc_comm_audit_logtyp
  (
    code    NUMBER(2),
    meaning VARCHAR2(250),
    CONSTRAINT audit_logtype_pk PRIMARY KEY (code),
    CONSTRAINT audit_logtype_uk UNIQUE(code, meaning)
  )
;

PROMPT Creating TABLE xxnuc_comm_audit_log

CREATE TABLE xxnuc_comm_audit_log
  (
    log_id             NUMBER,
    transaction_id     VARCHAR2(250),
    transaction_name   VARCHAR2(250),
    project_name       VARCHAR2(100),
    source_system      NUMBER(2),
    target_system      NUMBER(2),
    transaction_status NUMBER(2) DEFAULT 0,
    created_time TIMESTAMP (6) DEFAULT SYSTIMESTAMP,
    created_by VARCHAR2(50),
    updated_time TIMESTAMP (6) DEFAULT SYSTIMESTAMP,
    updated_by   VARCHAR2(50),
    v_attribute1 VARCHAR2(200),
    v_attribute2 VARCHAR2(200),
    n_attribute1 NUMBER,
    n_attribute2 NUMBER,
    CONSTRAINT audit_log_pk PRIMARY KEY (log_id),
    CONSTRAINT audit_log_uk UNIQUE(transaction_id,source_system,project_name),
    CONSTRAINT source_system_fk FOREIGN KEY (source_system) REFERENCES xxnuc_comm_integ_sys (code) ON
  DELETE CASCADE,
    CONSTRAINT target_system_fk FOREIGN KEY (target_system) REFERENCES xxnuc_comm_integ_sys (code) ON
  DELETE CASCADE,
    CONSTRAINT transaction_status_fk FOREIGN KEY (transaction_status) REFERENCES xxnuc_comm_audit_status (code) ON
  DELETE CASCADE
  )
;

PROMPT Creating TABLE xxnuc_comm_audit_step

CREATE TABLE xxnuc_comm_audit_step
  (
    step_log_id           NUMBER,
    log_id                NUMBER,
    component_id          VARCHAR2(30),
    message_source_system NUMBER(2),
    process_name          VARCHAR2(250),
    log_type              NUMBER(2),
    message_code          VARCHAR2(20),
    message_description   VARCHAR2(4000),
    created_time TIMESTAMP (6) DEFAULT SYSTIMESTAMP,
    v_attribute1 VARCHAR2(200),
    v_attribute2 VARCHAR2(200),
    n_attribute1 NUMBER,
    n_attribute2 NUMBER,
    CONSTRAINT audit_step_log_id_pk PRIMARY KEY (step_log_id),
    CONSTRAINT audit_log_id_fk FOREIGN KEY (log_id) REFERENCES xxnuc_comm_audit_log (log_id) ON
  DELETE CASCADE,
    CONSTRAINT message_source_system_fk FOREIGN KEY (message_source_system) REFERENCES xxnuc_comm_integ_sys (code) ON
  DELETE CASCADE,
    CONSTRAINT log_type_fk FOREIGN KEY (log_type) REFERENCES xxnuc_comm_audit_logtyp (code) ON
  DELETE CASCADE
  ) 
;

PROMPT Creating TABLE xxnuc_comm_global_sett

CREATE TABLE xxnuc_comm_global_sett
  (
    AttributeName     VARCHAR2 ( 100 ) ,
    V_AttributeValue1 VARCHAR2 ( 100 ) ,
    V_AttributeValue2 VARCHAR2 ( 100 ) ,
    N_AttributeValue1 NUMBER,
    N_AttributeValue2 NUMBER,
    CONSTRAINT global_setting_pk PRIMARY KEY (AttributeName)
  )
;

PROMPT Creating TABLE xxnuc_comm_msgs

CREATE TABLE xxnuc_comm_msgs
  (
    component_id VARCHAR2 (30), 
    message_code VARCHAR2 (20), 
    message_description VARCHAR2 (4000), 
    CONSTRAINT XXNUC_COMM_MSGS_PK PRIMARY KEY (message_code)
  )
;

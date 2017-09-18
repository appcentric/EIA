PROMPT Creating PACKAGE XXNUC_COMM_AUDIT_LOG_PKG

CREATE OR REPLACE
PACKAGE XXNUC_COMM_AUDIT_LOG_PKG AUTHID CURRENT_USER
AS
/*******************************************************************************
* Program Name : XXNUC_COMM_AUDIT_LOG_PKG
* File Name    : xxnuc_comm_audit_log_pkg_pks.sql
* Written by   : Sudeep Deshpande
* Description  : 
* History      :
* $Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_audit_log_pkg_pks.sql 3148 2015-11-24 06:06:29Z manishkumar.gujar $
*
* WHO            WHEN           Version     WHAT
* -------------- -------------- ----------- -----------------------------
* Sudeep         11-JUN-2015    0.1         Initial draft
*
*
*******************************************************************************/
PROCEDURE INSERT_AUDIT_DETAIL
  (
    p_audit_rec       IN xxnuc_comm_logg_obj_typ,
    p_audit_master_id OUT NUMBER,
    p_status          OUT VARCHAR2
  );

PROCEDURE PURGE_AUDIT_LOG
  (
    p_start_time         IN TIMESTAMP,
    p_end_time           IN TIMESTAMP,
    p_transaction_status IN NUMBER,
    p_count  OUT NUMBER
  )
;

END XXNUC_COMM_AUDIT_LOG_PKG;
/
show error;

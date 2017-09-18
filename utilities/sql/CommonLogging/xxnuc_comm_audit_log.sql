/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_audit_log.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating queues, queue tables
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_audit_log.sql 4991 2016-01-21 13:53:27Z sudeep.deshpande $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

PROMPT Creating QUEUE AUDIT_LOG_Q

BEGIN
  SYS.DBMS_AQADM.CREATE_QUEUE_TABLE ( queue_table => 'AUDIT_LOG_QT', queue_payload_type => 'xxnuc_comm_logg_obj_typ', multiple_consumers => TRUE );
  SYS.DBMS_AQADM.CREATE_QUEUE ( queue_name => 'AUDIT_LOG_Q', queue_table => 'AUDIT_LOG_QT');
  SYS.DBMS_AQADM.START_QUEUE ( queue_name => 'AUDIT_LOG_Q');
END;
/

--PROMPT subscribe AUDIT_LOG_Q
--
--BEGIN
--  dbms_aqadm.add_subscriber ( queue_name => 'AUDIT_LOG_Q', subscriber => sys.aq$_agent( 'AuditLog', NULL, NULL ) ) ;
--END;
--/
--
--PROMPT register AUDIT_LOG_Q
--
--BEGIN
--  dbms_aq.register ( sys.aq$_reg_info_list( sys.aq$_reg_info('AUDIT_LOG_Q:AuditLog', DBMS_AQ.NAMESPACE_AQ, 'plsql://notifyAuditLogMsg', HEXTORAW('FF')) ) , 1 ) ;
--END;
--/

PROMPT creating ALL_NOTIFICATION_Q

BEGIN
  SYS.DBMS_AQADM.CREATE_QUEUE ( queue_name => 'ALL_NOTIFICATION_Q', queue_table => 'AUDIT_LOG_QT');
  SYS.DBMS_AQADM.START_QUEUE ( queue_name => 'ALL_NOTIFICATION_Q');
END;
/

PROMPT creating EmailNotification_Q

BEGIN
  SYS.DBMS_AQADM.CREATE_QUEUE_TABLE ( queue_table => 'EmailNotification_QT', queue_payload_type => 'xxnuc_comm_eml_notif_typ', multiple_consumers => FALSE ) ;
  SYS.DBMS_AQADM.CREATE_QUEUE ( queue_name => 'EmailNotification_Q', queue_table => 'EmailNotification_QT' ) ;
  SYS.DBMS_AQADM.START_QUEUE ( queue_name => 'EmailNotification_Q' ) ;
END;
/

PROMPT subscribe ALL_NOTIFICATION_Q

--BEGIN
--  dbms_aqadm.add_subscriber ( queue_name => 'ALL_NOTIFICATION_Q', subscriber => sys.aq$_agent( 'EmailNotification', NULL, NULL ) ) ;
--END;
--/
--
--PROMPT register ALL_NOTIFICATION_Q
--
--BEGIN
--  dbms_aq.register ( sys.aq$_reg_info_list( sys.aq$_reg_info('ALL_NOTIFICATION_Q:EmailNotification', DBMS_AQ.NAMESPACE_AQ, 'plsql://notifyEmailMsg', HEXTORAW('FF')) ) , 1 ) ;
--END;
--/

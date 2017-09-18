PROMPT Creating PACKAGE BODY XXNUC_COMM_AUDIT_LOG_PKG

create or replace PACKAGE BODY XXNUC_COMM_AUDIT_LOG_PKG
AS
/*******************************************************************************
* Program Name : XXNUC_COMM_AUDIT_LOG_PKG
* File Name    : xxnuc_comm_audit_log_pkg_pkb.sql
* Written by   : Sudeep Deshpande
* Description  : 
* History      :
* $Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_audit_log_pkg_pkb.sql 13549 2016-10-28 11:11:04Z shravan.padigela $
* WHO            WHEN           Version     WHAT
* -------------- -------------- ----------- -----------------------------
* Sudeep         11-JUN-2015    0.1         Initial draft
*
*
*******************************************************************************/
PROCEDURE Enqueue_Notification
  (
    P_MESSAGE IN xxnuc_comm_logg_obj_typ,
    p_status  OUT VARCHAR2 )
IS
  enqueue_options       dbms_aq.enqueue_options_t;
  eq_message_properties dbms_aq.message_properties_t;
   recipients          dbms_aq.aq$_recipient_list_t;
  eq_message_handle     RAW (16);
  v_email_flag          VARCHAR2 (100);
  l_err_m               VARCHAR (1000);
  --PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  SELECT V_AttributeValue1
  INTO v_email_flag
  FROM xxnuc_comm_global_sett
  WHERE AttributeName= 'EmailNotification';
  IF( v_email_flag   = 'ENABLED') THEN
   recipients (1) := sys.aq$_agent ('EmailNotification', NULL, NULL);
   eq_message_properties.recipient_list := recipients;
    SYS.dbms_aq.enqueue(queue_name => '<schema_name>.ALL_NOTIFICATION_Q', enqueue_options => enqueue_options, message_properties => eq_message_properties, payload => P_MESSAGE, msgid => eq_message_handle);
  END IF;
  COMMIT;
  p_status:='Success';
EXCEPTION
WHEN OTHERS THEN
  ROLLBACK;
END;

PROCEDURE INSERT_AUDIT_STEP_DETAIL
  (
    p_log_id    IN NUMBER,
    p_audit_rec IN xxnuc_comm_logg_obj_typ,
    p_status    OUT VARCHAR2 )
IS
  l_step_log_id  NUMBER;
  l_status       VARCHAR2(10):='Success';
  l_system       NUMBER;
  l_system_count NUMBER;
  l_msg_desc     VARCHAR2 (4000);
  --
  token1  VARCHAR2(200);
  token2  VARCHAR2(200);
  token3  VARCHAR2(200);
  token4  VARCHAR2(200);
  token5  VARCHAR2(200);
  token6  VARCHAR2(200);
  token7  VARCHAR2(200);
  token8  VARCHAR2(200);
  token9  VARCHAR2(200);
  token10 VARCHAR2(200);
  --
  l_msg_str VARCHAR2 (100);
  --
  --PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  l_step_log_id:=xxnuc_comm_audit_step_seq.NEXTVAL;
  SELECT COUNT(code)
  INTO l_system_count
  FROM xxnuc_comm_integ_sys
  WHERE code        =p_audit_rec.message_source_system;
  IF(l_system_count =0 ) THEN
    l_system       := -1;
  ELSE
    l_system :=p_audit_rec.message_source_system;
  END IF;
  --
  -- Fetch the error message based on the error code
  --
  l_msg_desc := p_audit_rec.message_description;
  --
  IF p_audit_rec.message_code IS NOT NULL THEN
  --
    IF p_audit_rec.message_code LIKE 'BMG%' THEN
    --
      xxnuc_token (l_msg_desc, token1, token2, token3, token4, token5, token6, token7, token8, token9, token10);
      --
      BEGIN
      --
        SELECT xxnuc_multi_replace (message_description, token1, token2, token3, token4, token5, token6, token7, token8, token9, token10)
--        SELECT message_description
          INTO l_msg_desc
          FROM xxnuc_comm_msgs
         WHERE message_code = p_audit_rec.message_code
        ;
      --
      EXCEPTION
      --
        WHEN OTHERS THEN
          NULL;
      --
      END;
    --
    END IF; --<<p_audit_rec.message_code LIKE 'BMG%'>>--
  --
  ELSE --<<p_audit_rec.message_code IS NOT NULL>>--
  --
    IF p_audit_rec.message_description IS NULL THEN
    --
      l_msg_desc := 'Logging information not provided';
    --
    END IF; --<<p_audit_rec.message_code IS NULL>>--
  --
  END IF; --<<p_audit_rec.message_code IS NOT NULL>>--
  --
  INSERT
  INTO xxnuc_comm_audit_step
    (
      step_log_id,
      log_id ,
      component_id ,
      message_source_system ,
      process_name ,
      log_type ,
      message_code ,
      message_description ,
      created_time
    )
    VALUES
    (
      l_step_log_id,
      p_log_id,
      p_audit_rec.component_id,
      l_system,--p_audit_rec.message_source_system,
      p_audit_rec.process_name,
      p_audit_rec.log_type,
      p_audit_rec.message_code,
      l_msg_desc,--p_audit_rec.message_description,
      sysdate
    );
  COMMIT;
  p_status :='Success';
EXCEPTION
WHEN OTHERS THEN
  p_status :='Error';--SUBSTR(SQLERRM, 1, 200);
END INSERT_AUDIT_STEP_DETAIL;
--------------------------------------------------------------------------------------------------
-- Procedure PURGE_AUDIT_LOG is used to purge the  audit log tables
--------------------------------------------------------------------------------------------------
PROCEDURE PURGE_AUDIT_LOG
  (
    p_start_time         IN TIMESTAMP,
    p_end_time           IN TIMESTAMP,
    p_transaction_status IN NUMBER,
    p_count              OUT NUMBER
  )
IS
  --PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  IF
    (
      p_transaction_status != 0
    )
    THEN
    DELETE
    FROM xxnuc_comm_audit_log
    WHERE transaction_status= p_transaction_status
    AND created_time BETWEEN p_start_time AND p_end_time;
    
    p_count := SQL%ROWCOUNT;
  ELSE
    DELETE FROM xxnuc_comm_audit_log WHERE created_time BETWEEN p_start_time AND p_end_time;
    
    p_count := SQL%ROWCOUNT;
  END IF;
  COMMIT;
END PURGE_AUDIT_LOG;
--------------------------------------------------------------------------------------------------
-- Procedure update_audit_master is used to update the master audit log table
--------------------------------------------------------------------------------------------------
PROCEDURE UPDATE_AUDIT_DETAIL
  (
    p_log_id    IN NUMBER,
    p_audit_rec IN xxnuc_comm_logg_obj_typ )
                IS
  --PRAGMA AUTONOMOUS_TRANSACTION;
  l_transaction_status NUMBER;
BEGIN
  IF ( p_audit_rec.log_type = 3 OR p_audit_rec.log_type = 4 OR p_audit_rec.transaction_status=2 OR p_audit_rec.transaction_status=3 OR p_audit_rec.transaction_status=4 ) -- Error or Warning or Complete
    THEN
    SELECT transaction_status
    INTO l_transaction_status
    FROM xxnuc_comm_audit_log
    WHERE log_id=p_log_id;
    -- if initial status is inprocess and log type is warning set warning or transaction status is warning
    IF ((l_transaction_status= 1 AND p_audit_rec.log_type = 3) OR p_audit_rec.transaction_status=3) THEN
      UPDATE xxnuc_comm_audit_log AL
      SET AL.transaction_status=3,
        AL.updated_by          =p_audit_rec.updated_by,
        updated_time           =sysdate
      WHERE AL.log_id          = p_log_id;
    END IF;
    -- if initial status is inprocess\warning and log type is error set error or transaction status is error
    IF (((l_transaction_status= 1 OR l_transaction_status=3) AND p_audit_rec.log_type = 4) OR p_audit_rec.transaction_status=4) THEN
      UPDATE xxnuc_comm_audit_log AL
      SET AL.transaction_status=4,
        AL.updated_by          =p_audit_rec.updated_by,
        updated_time           =sysdate
      WHERE AL.log_id          = p_log_id;
    END IF;
    -- if initial status is inprocess and log type is not warning or error and transaction is complete set comlete
    IF (l_transaction_status= 1 AND ( p_audit_rec.log_type = 1 OR p_audit_rec.log_type = 2) AND p_audit_rec.transaction_status=2 ) THEN
      UPDATE xxnuc_comm_audit_log AL
      SET AL.transaction_status=2,
        AL.updated_by          =p_audit_rec.updated_by,
        updated_time           =sysdate
      WHERE AL.log_id          = p_log_id;
    END IF;
  END IF;
  COMMIT;
EXCEPTION
WHEN OTHERS THEN
  NULL;
END UPDATE_AUDIT_DETAIL;
--------------------------------------------------------------------------------------------------
-- Procedure insert_audit_master is used to insert records into
-- master audit log table
--------------------------------------------------------------------------------------------------
PROCEDURE INSERT_AUDIT_DETAIL
  (
    p_audit_rec       IN xxnuc_comm_logg_obj_typ,
    p_audit_master_id OUT NUMBER,
    p_status          OUT VARCHAR2 )
IS
  l_log_id        NUMBER;
  l_step_log_id   NUMBER;
  l_cnt           NUMBER;
  l_status        VARCHAR2(300):='Success';
  l_source        VARCHAR2(250);
  l_target        VARCHAR2(250);
  l_transaction_status NUMBER;
  v_log_flag      VARCHAR2(100);
  l_source_system NUMBER;
  l_target_system NUMBER;
  l_source_cnt    NUMBER;
  l_target_cnt    NUMBER;
  l_err_m         VARCHAR2(500);
  --PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  SELECT COUNT(AL.transaction_id)
  INTO l_cnt
  FROM xxnuc_comm_audit_log AL
  WHERE AL.transaction_id = p_audit_rec.transaction_id
  AND AL.SOURCE_SYSTEM    = p_audit_rec.source_system
  AND AL.project_name     = p_audit_rec.project_name;
  SELECT V_AttributeValue1
  INTO v_log_flag
  FROM xxnuc_comm_global_sett
  WHERE AttributeName= 'AuditLog';
  IF l_cnt           = 0 THEN
    l_log_id        := xxnuc_comm_audit_log_seq.NEXTVAL;
    SELECT COUNT(code)
    INTO l_source_cnt
    FROM xxnuc_comm_integ_sys
    WHERE code         =p_audit_rec.source_system;
    IF(l_source_cnt    =0 ) THEN
      l_source_system := -1;
    ELSE
      l_source_system :=p_audit_rec.source_system;
    END IF;
    SELECT COUNT(code)
    INTO l_target_cnt
    FROM xxnuc_comm_integ_sys
    WHERE code         =p_audit_rec.target_system;
    IF(l_target_cnt    =0 ) THEN
      l_target_system := -1;
    ELSE
      l_target_system :=p_audit_rec.target_system;
    END IF;
	l_transaction_status := NVL(p_audit_rec.transaction_status,1);
    IF (p_audit_rec.transaction_status ='2' and p_audit_rec.log_type = '4') THEN 
      l_transaction_status := 4;
    END IF;
    INSERT
    INTO xxnuc_comm_audit_log
      (
        log_id,
        transaction_id,
        project_name,
        transaction_name,
        source_system,
        target_system ,
        transaction_status,
        created_by
      )
      VALUES
      (
        l_log_id ,
        p_audit_rec.transaction_id ,
        p_audit_rec.project_name ,
        p_audit_rec.transaction_name ,
        l_source_system,--p_audit_rec.source_system ,
        l_target_system,--p_audit_rec.target_system ,
        NVL(p_audit_rec.transaction_status,1) ,
        p_audit_rec.created_by
      );
    COMMIT;
    --- To Put condition to stop sending information level logging to audit step log...as property
    IF
      (
        p_audit_rec.log_type != 1 OR v_log_flag = 'ENABLED'
      )
      THEN
      INSERT_AUDIT_STEP_DETAIL
      (
        l_log_id, p_audit_rec,l_status
      )
      ;
    END IF;
  ELSE
    SELECT AL.log_id
    INTO l_log_id
    FROM xxnuc_comm_audit_log AL
    WHERE AL.transaction_id = p_audit_rec.transaction_id
    AND AL.SOURCE_SYSTEM    = p_audit_rec.source_system
    AND AL.project_name     = p_audit_rec.project_name;
    
    UPDATE_AUDIT_DETAIL (l_log_id,p_audit_rec);
    --- To Put condit ion to stop sending information level logging to audit step log...as property
    IF (p_audit_rec.log_type != 1 OR v_log_flag = 'ENABLED') THEN
      INSERT_AUDIT_STEP_DETAIL(l_log_id, p_audit_rec,l_status);
    END IF;
  END IF;
  p_audit_master_id :=l_log_id;
  p_status          :=l_status;
  COMMIT;
  Enqueue_Notification(p_audit_rec,p_status);
  COMMIT;
EXCEPTION
WHEN OTHERS THEN
  ROLLBACK;
END INSERT_AUDIT_DETAIL;

END XXNUC_COMM_AUDIT_LOG_PKG;
/

show error;

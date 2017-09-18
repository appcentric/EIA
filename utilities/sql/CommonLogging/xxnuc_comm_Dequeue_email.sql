/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_Dequeue_email.sql
-- Author              :  CAPGEMINI
-- Date Created        :  21-JAN-2016
-- Purpose             :  Creating subscribers, schedulers
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_Dequeue_email.sql 9394 2016-06-09 13:56:45Z sudeep.deshpande $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       21-JAN-2016      Initial version
-- 2.0        Sudeep Deshpande       06-JUN-2016      Added logic for emails in Cc Part
*******************************************************************************/

CREATE OR REPLACE PROCEDURE Dequeue_email
AS

  dequeue_options dbms_aq.dequeue_options_t;
  enqueue_options dbms_aq.enqueue_options_t;
  dq_message_properties dbms_aq.message_properties_t;
  dq_message_handle RAW
  (
    16
  )
  ;
  enq_message_properties dbms_aq.message_properties_t;
  enq_message_handle RAW
  (
    16
  )
  ;
  dequeue_message xxnuc_comm_logg_obj_typ;
  enqueue_message xxnuc_comm_eml_notif_typ;
  CURSOR complete_emails_cur
    (
      c_transaction_name VARCHAR2
    )
  IS
    SELECT email_id,
      notifiction_type
    FROM xxnuc_comm_eml_notif EN,
      xxnuc_comm_trx_notif TN,
      xxnuc_comm_email_group EG
    WHERE EN.transaction_name  = c_transaction_name
    AND en.email_group         = eg.groupname
    AND EN.notification        = 'ENABLED'
    AND TN.notification        = 'ENABLED'
    AND EG.notification        = 'ENABLED'
    AND TN. transaction_name   = c_transaction_name
    AND completed_notification ='YES';
  CURSOR error_emails_cur(c_transaction_name VARCHAR2)
  IS
    SELECT email_id,
      notifiction_type
    FROM xxnuc_comm_eml_notif EN,
      xxnuc_comm_trx_notif TN,
      xxnuc_comm_email_group EG
    WHERE EN.transaction_name = c_transaction_name
    AND en.email_group        = eg.groupname
    AND EN.notification       = 'ENABLED'
    AND TN.notification       = 'ENABLED'
    AND EG.notification       = 'ENABLED'
    AND TN. transaction_name   = c_transaction_name
    AND error_notification    ='YES';
  CURSOR warning_emails_cur(c_transaction_name VARCHAR2)
  IS
    SELECT email_id,
      notifiction_type
    FROM xxnuc_comm_eml_notif EN,
      xxnuc_comm_trx_notif TN,
      xxnuc_comm_email_group EG
    WHERE EN.transaction_name = c_transaction_name
    AND en.email_group        = eg.groupname
    AND EN.notification       = 'ENABLED'
    AND TN.notification       = 'ENABLED'
    AND EG.notification       = 'ENABLED'
    AND TN. transaction_name   = c_transaction_name
    AND warning_notification  ='YES';
  --
  CURSOR notifs_cur
  IS
  SELECT msgid
  FROM Audit_Log_QT
  WHERE q_name = 'ALL_NOTIFICATION_Q';
  --
  --Cursor added for 2.0
  CURSOR group_cur (p_group_name VARCHAR2)
  IS
  SELECT email_id
    FROM xxnuc_comm_email_group
   WHERE groupname = p_group_name
     AND notification = 'ENABLED'
  ;
  --
  v_fyi_emails   VARCHAR2(4000);
  v_actor_emails VARCHAR2(4000);

  emails_rec warning_emails_cur%rowtype;
  v_code                 NUMBER;
  v_errm                 VARCHAR2(1000);
  v_log_id               NUMBER;
  v_transaction_status   NUMBER;
  l_index                NUMBER;
  v_email_delay          NUMBER;
  v_source_system_m      VARCHAR2(250);
  v_target_system_m      VARCHAR2(250);
  v_message_system_m     VARCHAR2(250);
  v_log_type_m           VARCHAR2(250);
  v_transaction_status_m VARCHAR2(250);
  v_audit_log xxnuc_comm_audit_log_typ;
  v_audit_step_log xxnuc_comm_audit_step_tab_typ;
  v_audit_step_log_rec xxnuc_comm_audit_step_log_v%ROWTYPE;
  v_audit_log_rec xxnuc_comm_audit_log_v%Rowtype;
  --PRAGMA AUTONOMOUS_TRANSACTION;

BEGIN
   DBMS_OUTPUT.PUT_LINE('Start..');
   --dequeue_options.navigation := DBMS_AQ.FIRST_MESSAGE;
   FOR notifs_rec IN notifs_cur
   LOOP
   --
     v_fyi_emails   := NULL;
     v_actor_emails := NULL;
     --
     dequeue_options.consumer_name := 'EmailNotification';
     DBMS_AQ.DEQUEUE(
        queue_name          =>     'ALL_NOTIFICATION_Q',
        dequeue_options     =>     dequeue_options,
        message_properties  =>     dq_message_properties,
        payload             =>     dequeue_message,
        msgid               =>     dq_message_handle);
    IF ( dequeue_message.transaction_status = 2) --  completed
      THEN
      BEGIN
        SELECT log_id,
          transaction_status
        INTO v_log_id,
          v_transaction_status
        FROM xxnuc_comm_audit_log AL
       WHERE AL.transaction_id = dequeue_message.transaction_id
         AND AL.SOURCE_SYSTEM = dequeue_message.source_system
    and AL.project_name= dequeue_message.project_name;
       
      EXCEPTION
      WHEN OTHERS THEN
        v_log_id            :=NULL;
        v_transaction_status:=NULL;
      END;
      IF ( v_transaction_status = 4 OR dequeue_message.transaction_status = 4 ) THEN
        FOR emails_rec         IN error_emails_cur ( dequeue_message.transaction_name )
        LOOP
  
          if(emails_rec.notifiction_type = 'FYI(CC:)') then 
        
          v_fyi_emails:=v_fyi_emails ||emails_rec.email_id ||',';
        else
                v_actor_emails:=v_actor_emails ||emails_rec.email_id ||',';
  end if;
        END LOOP;
        v_transaction_status      :=4;
      elsif ( v_transaction_status = 3 OR dequeue_message.transaction_status = 3 ) THEN
        FOR emails_rec            IN warning_emails_cur ( dequeue_message.transaction_name )
        LOOP
          if(emails_rec.notifiction_type = 'FYI(CC:)' )then 
        
          v_fyi_emails:=v_fyi_emails ||emails_rec.email_id ||',';
        else
                v_actor_emails:=v_actor_emails ||emails_rec.email_id ||',';
  end if;
        END LOOP;
        v_transaction_status      :=3;
      elsif ( v_transaction_status = 2 OR dequeue_message.transaction_status = 2 ) THEN
        FOR emails_rec            IN complete_emails_cur ( dequeue_message.transaction_name )
        LOOP
          if(emails_rec.notifiction_type = 'FYI(CC:)' )then 
        
          v_fyi_emails:=v_fyi_emails ||emails_rec.email_id ||',';
        else
                v_actor_emails:=v_actor_emails ||emails_rec.email_id ||',';
  end if;
        END LOOP;
        v_transaction_status:=2;
      END IF;
      v_audit_step_log := xxnuc_comm_audit_step_tab_typ (NULL);
      l_index          := 0;
      IF v_log_id      IS NOT NULL THEN
        SELECT *
        INTO v_audit_log_rec
        FROM xxnuc_comm_audit_log_v
        WHERE log_id=v_log_id ;
        
        FOR v_audit_step_log_rec IN
        (SELECT                   *
        FROM xxnuc_comm_audit_step_log_v
        WHERE log_id=v_log_id
        AND log_type!='Information'
        )
        LOOP
          v_audit_step_log.extend(1);
          l_index                   := l_index+1;
          v_audit_step_log(l_index) :=xxnuc_comm_audit_step_typ( v_audit_step_log_rec.step_log_id , v_audit_step_log_rec.log_id , v_audit_step_log_rec.component_id, v_audit_step_log_rec.message_source_system, v_audit_step_log_rec.process_name , v_audit_step_log_rec.log_type , v_audit_step_log_rec.message_code , v_audit_step_log_rec.message_description , v_audit_step_log_rec.created_time , v_audit_step_log_rec.v_attribute1 , v_audit_step_log_rec.v_attribute2, v_audit_step_log_rec.n_attribute1, v_audit_step_log_rec.n_attribute2 );
        END LOOP;
        v_audit_log :=xxnuc_comm_audit_log_typ( v_audit_log_rec.log_id , v_audit_log_rec.transaction_id ,v_audit_log_rec.project_name, v_audit_log_rec.transaction_name , v_audit_log_rec.source_system , v_audit_log_rec.target_system , v_audit_log_rec.transaction_status , v_audit_log_rec.created_time , v_audit_log_rec.created_by , v_audit_log_rec.updated_time , v_audit_log_rec.updated_by , v_audit_log_rec.v_attribute1 , v_audit_log_rec.v_attribute2 , v_audit_log_rec.n_attribute1 , v_audit_log_rec.n_attribute2 ) ;
      ELSE
        NULL;
        SELECT meaning
        INTO v_source_system_m
        FROM xxnuc_comm_integ_sys
        WHERE code = dequeue_message.source_system;
        SELECT meaning
        INTO v_target_system_m
        FROM xxnuc_comm_integ_sys
        WHERE code = dequeue_message.target_system ;
        SELECT meaning
        INTO v_transaction_status_m
        FROM xxnuc_comm_audit_status
        WHERE code = dequeue_message.transaction_status;
        
        v_audit_log :=xxnuc_comm_audit_log_typ( NULL , dequeue_message.transaction_id ,dequeue_message.project_name , dequeue_message.transaction_name , v_source_system_m, v_target_system_m, v_transaction_status_m , NULL , dequeue_message.created_by , NULL , dequeue_message.updated_by , dequeue_message.v_attribute1 , dequeue_message.v_attribute2 , dequeue_message.n_attribute1 , dequeue_message.n_attribute2 ) ;
      END IF;
      --
      IF v_actor_emails IS NOT NULL THEN
      --
        --2.0
        --START
        FOR process_rec IN (SELECT DISTINCT SUBSTR (process_name, 1, INSTR (process_name, '_') - 1) process_name
                              FROM xxnuc_comm_audit_step_log_v
                             WHERE log_id = v_log_id)
        LOOP --<process_rec>>--
        --
          FOR group_rec IN group_cur (process_rec.process_name)
          LOOP --<<group_rec IN group_cur>>--
            v_fyi_emails := v_fyi_emails||group_rec.email_id||',';
          END LOOP; --<<group_rec IN group_cur>>--
        --
        END LOOP; --<process_rec>>--
        --END
        --2.0
        enqueue_message := xxnuc_comm_eml_notif_typ ( v_audit_step_log,v_audit_log,v_actor_emails,v_fyi_emails ) ;
        SYS.dbms_aq.enqueue ( queue_name => '<schema_name>.EmailNotification_Q', enqueue_options => enqueue_options, message_properties => enq_message_properties, payload => enqueue_message, msgid => enq_message_handle ) ;
      --
      END IF; --<<v_actor_emails IS NOT NULL>>--
    --
    END IF;
   COMMIT;
  --
  END LOOP;
EXCEPTION
  WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE('Error - ' || SQLERRM);
END Dequeue_email;
/

BEGIN
dbms_scheduler.create_job (  
 job_name            => 'Dequeue_email_job',  
 job_type            => 'PLSQL_BLOCK',  
 job_action          => 'begin Dequeue_email; end;',  
 start_date          => sysdate,
 repeat_interval     => 'FREQ=SECONDLY;INTERVAL=30', 
 enabled             => TRUE,  
 comments            => 'SOA Common Logging Scheduled Job - Dequeue_email'
);
end;
/

exec dbms_scheduler.Enable('Dequeue_email_job');

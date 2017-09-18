/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_Dequeue_Audit_Log.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating subscribers, schedulers
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_Dequeue_Audit_Log.sql 5993 2016-02-22 04:25:17Z sudeep.deshpande $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

CREATE OR REPLACE PROCEDURE Dequeue_Audit_Log
AS

dequeue_options     DBMS_AQ.dequeue_options_t;
message_properties  DBMS_AQ.message_properties_t;
message_handle      RAW(16);
message             xxnuc_comm_logg_obj_typ;
STATUS VARCHAR2(200);
LOG_ID NUMBER;

  CURSOR mesages_cur
  IS
  SELECT msgid
  FROM Audit_Log_QT;

BEGIN
  FOR c_mesages IN mesages_cur
  LOOP
   --dequeue_options.navigation := DBMS_AQ.FIRST_MESSAGE;
   dequeue_options.consumer_name := 'AuditLog';
   DBMS_AQ.DEQUEUE(
      queue_name          =>     'AUDIT_LOG_Q',
      dequeue_options     =>     dequeue_options,
      message_properties  =>     message_properties,
      payload             =>     message,
      msgid               =>     message_handle);
   DBMS_OUTPUT.PUT_LINE('From Sender No.'|| ' Testing from SOA'); -- message.sender_id);
   
   XXNUC_COMM_AUDIT_LOG_PKG.INSERT_AUDIT_DETAIL( P_AUDIT_REC => MESSAGE, P_AUDIT_MASTER_ID => log_id, P_STATUS => STATUS );
   dbms_output.put_line('log_id:'||log_id||' - '||c_mesages.msgid||'Status: '||STATUS);
   COMMIT;
   END LOOP;
END Dequeue_Audit_Log;
/

BEGIN
dbms_scheduler.create_job (  
 job_name            => 'Dequeue_Audit_Log_job',  
 job_type            => 'PLSQL_BLOCK',  
 job_action          => 'begin Dequeue_Audit_Log; end;',  
 start_date          => sysdate,
 repeat_interval     => 'FREQ=SECONDLY;INTERVAL=30', 
 enabled             => TRUE,  
 comments            => 'SOA Common Logging Scheduled Job - Dequeue_Audit_Log'
);
end;
/

exec dbms_scheduler.Enable('Dequeue_Audit_Log_job');

-- Script to create WF_BPEL_Q and WF_BPEL_QAGENT and start the queue
 
DECLARE
  qtab_present number := 0;
  q_present number := 0;
  qagent_present number := 0;
  subscription_present number := 0;
  agent_guid varchar2(32);
  creation_msg varchar2(4000);
  phase_val number := 0;
  event_guid varchar2(4000);
  subsciber sys.aq$_agent;

begin
  select count(*) into qtab_present from user_tables where table_name  = 'WF_BPEL_QTAB';
  if(qtab_present <> 1 ) 
  then
	dbms_aqadm.create_queue_table(
	           queue_table          => 'WF_BPEL_QTAB',
		   multiple_consumers   => true,
		   queue_payload_type   => 'APPS.WF_EVENT_T');
  end if;

  select count(*) into q_present from user_queues where name  = 'WF_BPEL_Q';
  if(q_present <> 1 ) 
  then
	dbms_aqadm.create_queue(queue_name=>'WF_BPEL_Q',queue_table => 'WF_BPEL_QTAB',retention_time => 86400);
	dbms_aqadm.start_queue('WF_BPEL_Q');
  end if;

  select count(*) into qagent_present from wf_agents where name  = 'WF_BPEL_QAGENT';
  if(qagent_present <> 1 ) 
  then
	creation_msg := '
			<WF_TABLE_DATA>
				<WF_AGENTS>
					<VERSION>1.0</VERSION>
					<GUID>#NEW</GUID>
					<NAME>WF_BPEL_QAGENT</NAME>
					<SYSTEM_GUID>#LOCAL</SYSTEM_GUID>
					<PROTOCOL>SQLNET</PROTOCOL>
					<ADDRESS>APPS.WF_BPEL_QAGENT@#SID</ADDRESS>
					<QUEUE_HANDLER>WF_EVENT_QH</QUEUE_HANDLER>
					<QUEUE_NAME>APPS.WF_BPEL_Q</QUEUE_NAME>
					<DIRECTION>OUT</DIRECTION>
					<STATUS>ENABLED</STATUS>
					<DISPLAY_NAME>WF_BPEL_QAGENT</DISPLAY_NAME>
					<DESCRIPTION>Agent for WF_BPEL_Q</DESCRIPTION>
				</WF_AGENTS>
			</WF_TABLE_DATA>';
	wf_agents_pkg.receive(creation_msg);
  end if;

  

  end;
/
commit;

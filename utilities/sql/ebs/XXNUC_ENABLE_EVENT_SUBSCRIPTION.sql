-- Script to enable the WF_BPEL_QAGENT subscription on
-- Developers can add Business events for which they would like to add subscriptions for. Copy the code between "Start" and "End"
 
declare
  qtab_present number := 0;
  q_present number := 0;
  qagent_present number := 0;
  subscription_present number := 0;
  agent_guid varchar2(32);
  creation_msg varchar2(4000);
  phase_val number := 0;
  event_guid varchar2(4000);
  subsciber sys.aq$_agent;

BEGIN
  


  select guid into agent_guid from wf_agents where name = 'WF_BPEL_QAGENT';

 -- Add your Event 
 -- Start Subscription for oracle.apps.ap.payment
 -- remove subscription
	delete from wf_event_subscriptions where event_filter_guid in(
	select guid from wf_events where name = 'oracle.apps.ap.payment') 
	and out_agent_guid in ( select guid from wf_agents where name = 'WF_BPEL_QAGENT');
 
  select guid into event_guid from wf_events where name = 'oracle.apps.ap.payment' ;
  select count(*) into subscription_present from wf_event_subscriptions where event_filter_guid = event_guid and out_agent_guid = agent_guid ;

  if ( subscription_present <> 1 ) 
  then
        select max(phase) into phase_val from wf_event_subscriptions where event_filter_guid = event_guid;

	phase_val := phase_val*2 + 201;

	creation_msg := 
	'<WF_TABLE_DATA>
		<WF_EVENT_SUBSCRIPTIONS>
			<VERSION>1.0</VERSION>
			<GUID>#NEW</GUID>
			<SYSTEM_GUID>#LOCAL</SYSTEM_GUID>
			<SOURCE_TYPE>LOCAL</SOURCE_TYPE>
			<SOURCE_AGENT_GUID/>
			<EVENT_FILTER_GUID>'||event_guid||'</EVENT_FILTER_GUID>
			<PHASE>'||phase_val||'</PHASE>
			<STATUS>ENABLED</STATUS>
			<RULE_DATA>KEY</RULE_DATA>
			<OUT_AGENT_GUID>'||agent_guid||'</OUT_AGENT_GUID>
			<TO_AGENT_GUID/>
			<PRIORITY>50</PRIORITY>
			<RULE_FUNCTION/>
			<WF_PROCESS_TYPE/>
			<WF_PROCESS_NAME/>
			<PARAMETERS/>
			<OWNER_NAME>FND</OWNER_NAME>
			<OWNER_TAG>FND</OWNER_TAG>
			<CUSTOMIZATION_LEVEL>U</CUSTOMIZATION_LEVEL>
			<LICENSED_FLAG>Y</LICENSED_FLAG>
			<DESCRIPTION>Subscription for enqueuing event in WF_BPEL_Q</DESCRIPTION>
			<EXPRESSION/>
		</WF_EVENT_SUBSCRIPTIONS>
	</WF_TABLE_DATA>';
	wf_event_subscriptions_pkg.receive(creation_msg);
  end if;

    -- End Subscription  for oracle.apps.ap.payment
    
     -- Start Subscription for oracle.apps.ar.hz.OrgCustBO.create
     -- remove subscription
     	delete from wf_event_subscriptions where event_filter_guid in(
     	select guid from wf_events where name = 'oracle.apps.ar.hz.OrgCustBO.create') 
	and out_agent_guid in ( select guid from wf_agents where name = 'WF_BPEL_QAGENT');
	
       select guid into event_guid from wf_events where name = 'oracle.apps.ar.hz.OrgCustBO.create' ;
      
       select count(*) into subscription_present from wf_event_subscriptions where event_filter_guid = event_guid and out_agent_guid = agent_guid ;
     
       if ( subscription_present <> 1 ) 
       then
             select max(phase) into phase_val from wf_event_subscriptions where event_filter_guid = event_guid;
     
     	phase_val := phase_val*2 + 201;
     
     	creation_msg := 
     	'<WF_TABLE_DATA>
     		<WF_EVENT_SUBSCRIPTIONS>
     			<VERSION>1.0</VERSION>
     			<GUID>#NEW</GUID>
     			<SYSTEM_GUID>#LOCAL</SYSTEM_GUID>
     			<SOURCE_TYPE>LOCAL</SOURCE_TYPE>
     			<SOURCE_AGENT_GUID/>
     			<EVENT_FILTER_GUID>'||event_guid||'</EVENT_FILTER_GUID>
     			<PHASE>'||phase_val||'</PHASE>
     			<STATUS>ENABLED</STATUS>
     			<RULE_DATA>KEY</RULE_DATA>
     			<OUT_AGENT_GUID>'||agent_guid||'</OUT_AGENT_GUID>
     			<TO_AGENT_GUID/>
     			<PRIORITY>50</PRIORITY>
     			<RULE_FUNCTION/>
     			<WF_PROCESS_TYPE/>
     			<WF_PROCESS_NAME/>
     			<PARAMETERS/>
     			<OWNER_NAME>FND</OWNER_NAME>
     			<OWNER_TAG>FND</OWNER_TAG>
     			<CUSTOMIZATION_LEVEL>U</CUSTOMIZATION_LEVEL>
     			<LICENSED_FLAG>Y</LICENSED_FLAG>
     			<DESCRIPTION>Subscription for enqueuing event in WF_BPEL_Q</DESCRIPTION>
     			<EXPRESSION/>
     		</WF_EVENT_SUBSCRIPTIONS>
     	</WF_TABLE_DATA>';
     	wf_event_subscriptions_pkg.receive(creation_msg);
       end if;

     
     -- End Subscription  for oracle.apps.ar.hz.OrgCustBO.create
     
     -- Start Subscription for oracle.apps.ar.hz.OrgCustBO.update
     -- Start remove subscription 
          	delete from wf_event_subscriptions where event_filter_guid in(
          	select guid from wf_events where name = 'oracle.apps.ar.hz.OrgCustBO.update') 
	and out_agent_guid in ( select guid from wf_agents where name = 'WF_BPEL_QAGENT');
     -- End remove subscription
	
	 select guid into agent_guid from wf_agents where name = 'WF_BPEL_QAGENT';
	
	 select guid into event_guid from wf_events where name = 'oracle.apps.ar.hz.OrgCustBO.update' ;
	 
	 select count(*) into subscription_present from wf_event_subscriptions where event_filter_guid = event_guid and out_agent_guid = agent_guid ;
	
	  if ( subscription_present <> 1 ) 
	  then
	        select max(phase) into phase_val from wf_event_subscriptions where event_filter_guid = event_guid;
	
		phase_val := phase_val*2 + 201;
	
		creation_msg := 
		'<WF_TABLE_DATA>
			<WF_EVENT_SUBSCRIPTIONS>
				<VERSION>1.0</VERSION>
				<GUID>#NEW</GUID>
				<SYSTEM_GUID>#LOCAL</SYSTEM_GUID>
				<SOURCE_TYPE>LOCAL</SOURCE_TYPE>
				<SOURCE_AGENT_GUID/>
				<EVENT_FILTER_GUID>'||event_guid||'</EVENT_FILTER_GUID>
				<PHASE>'||phase_val||'</PHASE>
				<STATUS>ENABLED</STATUS>
				<RULE_DATA>KEY</RULE_DATA>
				<OUT_AGENT_GUID>'||agent_guid||'</OUT_AGENT_GUID>
				<TO_AGENT_GUID/>
				<PRIORITY>50</PRIORITY>
				<RULE_FUNCTION/>
				<WF_PROCESS_TYPE/>
				<WF_PROCESS_NAME/>
				<PARAMETERS/>
				<OWNER_NAME>FND</OWNER_NAME>
				<OWNER_TAG>FND</OWNER_TAG>
				<CUSTOMIZATION_LEVEL>U</CUSTOMIZATION_LEVEL>
				<LICENSED_FLAG>Y</LICENSED_FLAG>
				<DESCRIPTION>Subscription for enqueuing event in WF_BPEL_Q</DESCRIPTION>
				<EXPRESSION/>
			</WF_EVENT_SUBSCRIPTIONS>
		</WF_TABLE_DATA>';
		wf_event_subscriptions_pkg.receive(creation_msg);
       end if;
	
     -- End Subscription  for oracle.apps.ar.hz.OrgCustBO.update
     
     -- Start Subscription for oracle.apps.pos.supplier.publish
          -- Start remove subscription 
               	delete from wf_event_subscriptions where event_filter_guid in(
               	select guid from wf_events where name = 'oracle.apps.pos.supplier.publish') 
     	and out_agent_guid in ( select guid from wf_agents where name = 'WF_BPEL_QAGENT');
     -- End remove subscription
     
      select guid into event_guid from wf_events where name = 'oracle.apps.pos.supplier.publish' ;
      
       select count(*) into subscription_present from wf_event_subscriptions where event_filter_guid = event_guid and out_agent_guid = agent_guid ;
     
       if ( subscription_present <> 1 ) 
       then
             select max(phase) into phase_val from wf_event_subscriptions where event_filter_guid = event_guid;
     
     	phase_val := phase_val*2 + 201;
     
     	creation_msg := 
     	'<WF_TABLE_DATA>
     		<WF_EVENT_SUBSCRIPTIONS>
     			<VERSION>1.0</VERSION>
     			<GUID>#NEW</GUID>
     			<SYSTEM_GUID>#LOCAL</SYSTEM_GUID>
     			<SOURCE_TYPE>LOCAL</SOURCE_TYPE>
     			<SOURCE_AGENT_GUID/>
     			<EVENT_FILTER_GUID>'||event_guid||'</EVENT_FILTER_GUID>
     			<PHASE>'||phase_val||'</PHASE>
     			<STATUS>ENABLED</STATUS>
     			<RULE_DATA>KEY</RULE_DATA>
     			<OUT_AGENT_GUID>'||agent_guid||'</OUT_AGENT_GUID>
     			<TO_AGENT_GUID/>
     			<PRIORITY>50</PRIORITY>
     			<RULE_FUNCTION/>
     			<WF_PROCESS_TYPE/>
     			<WF_PROCESS_NAME/>
     			<PARAMETERS/>
     			<OWNER_NAME>FND</OWNER_NAME>
     			<OWNER_TAG>FND</OWNER_TAG>
     			<CUSTOMIZATION_LEVEL>U</CUSTOMIZATION_LEVEL>
     			<LICENSED_FLAG>Y</LICENSED_FLAG>
     			<DESCRIPTION>Subscription for enqueuing event in WF_BPEL_Q</DESCRIPTION>
     			<EXPRESSION/>
     		</WF_EVENT_SUBSCRIPTIONS>
     	</WF_TABLE_DATA>';
     	wf_event_subscriptions_pkg.receive(creation_msg);
  end if;
     -- End Subscription  for oracle.apps.pos.supplier.publish

  end;
/
commit;

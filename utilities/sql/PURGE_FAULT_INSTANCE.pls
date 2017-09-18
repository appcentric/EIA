CREATE OR REPLACE PACKAGE PURGE_FAULT_INSTANCE AS

  /* TODO enter package declarations (types, exceptions, methods etc) here */
  
   procedure pruneOpenECIDs (purge_id_table in varchar2,prune_running_insts_table in varchar2, retention_period in timestamp);

function  getComponentPartitionInfo return component_partition_info ;

function make_composite_dn(soa_partition_name in varchar2, composite_name in varchar2, composite_revision in varchar2) return varchar2;

function deleteNoCompositeIdInstances(min_created_date in timestamp,
                                       max_created_date in timestamp,
                                       retention_period in timestamp,
                                       batch_size in integer,
                                       purge_partitioned_component in boolean,
                                       componentPartInfo in component_partition_info,
                                       stoptime in date,
                                       composite_dn in varchar2,
                                       soa_partition_name in varchar2,
                                       composite_name in varchar2,
                                       composite_revision in varchar2     
                                       )  return boolean;


 procedure delete_composite_instances(instance_id_table in varchar2,
                                        purge_partitioned_component in boolean,
                                        componentPartInfo in component_partition_info,
                                        stoptime in date         
                                        ) ;

procedure fault_delete_instances ( min_creation_date in timestamp,
                   max_creation_date in timestamp,
                   batch_size in integer default 20000, 
                   max_runtime in integer default 60, 
                   retention_period in timestamp default null,
                   purge_partitioned_component in boolean default false,
                   composite_name in  varchar2 default null,
                   composite_revision in varchar2 default null,
                   soa_partition_name in varchar2 default null
                   );

  procedure falutDeleteInstance (min_creation_date in timestamp,
                   max_creation_date in timestamp);

END PURGE_FAULT_INSTANCE;

/


CREATE OR REPLACE PACKAGE BODY PURGE_FAULT_INSTANCE AS

      function  getComponentPartitionInfo return component_partition_info is
     componentPartInfo component_partition_info ;
    begin
        dbms_output.put_line('checking for  partitions');
        componentPartInfo := component_partition_info(); 
        componentPartInfo.fabricPartitioned := soa_fabric.getComponentPartitionInfo;
        componentPartInfo.bpelPartitioned := soa_orabpel.getComponentPartitionInfo;
	componentPartInfo.mediatorPartitioned := soa_mediator.getComponentPartitionInfo;
        if soa_b2b.isComponentPartitioned then
           componentPartInfo.b2bPartitioned := 'Y';
        else
           componentPartInfo.b2bPartitioned := 'N';
        end if;
        if soa_workflow.isComponentPartitioned then
           componentPartInfo.workflowPartitioned := 'Y';
        else
           componentPartInfo.workflowPartitioned := 'N';
        end if;
        if soa_decision.isComponentPartitioned then
           componentPartInfo.decisionPartitioned := 'Y';
        else
           componentPartInfo.decisionPartitioned := 'N';
        end if;
        dbms_output.put_line('done checking for partitions');
        return componentPartInfo;
    end;
 
  function make_composite_dn(soa_partition_name in varchar2, composite_name in varchar2, composite_revision in varchar2) return varchar2 is
     composite_dn varchar2(500);
  
    begin
        if composite_name is not null then
            composite_dn := composite_name||'!';
        end if; 
        
        if composite_name is not null and composite_revision is not null then
            composite_dn := composite_dn||composite_revision;
        end if;
        
        if soa_partition_name is not null then
            composite_dn := soa_partition_name || '/' || composite_dn ; 
        end if;
        
        if soa_partition_name is null and composite_dn is not null then
            composite_dn := 'default/'||composite_dn;
        end if;
        
        return composite_dn;    
	    
    end make_composite_dn;
      
 procedure pruneOpenECIDs (purge_id_table in varchar2,prune_running_insts_table in varchar2, retention_period in timestamp) is 
     begin
       soa_orabpel.pruneOpenECIDs (purge_id_table,prune_running_insts_table,retention_period);
       soa_mediator.pruneOpenECIDs(purge_id_table,prune_running_insts_table,retention_period);
       soa_workflow.pruneOpenECIDs(purge_id_table,prune_running_insts_table,retention_period);
       soa_decision.pruneOpenECIDs (purge_id_table,prune_running_insts_table,retention_period);
     end pruneOpenECIDs;
    function deleteNoCompositeIdInstances(min_created_date in timestamp,
                                       max_created_date in timestamp,
                                       retention_period in timestamp,
                                       batch_size in integer,
                                       purge_partitioned_component in boolean,
                                       componentPartInfo in component_partition_info,
                                       stoptime in date,
                                       composite_dn in varchar2,
                                       soa_partition_name in varchar2,
                                       composite_name in varchar2,
                                       composite_revision in varchar2     
                                       )  return boolean is
    total_rows integer := 0; 
    state integer;
    more_rows_to_delete_all  boolean := false;
    more_rows_to_delete  boolean;
    begin
      
      IF (sysdate >= stoptime) THEN
           return false;
      END IF;
      if purge_partitioned_component = true OR componentPartInfo.bpelPartitioned='N' OR componentPartInfo.bpelPartitioned ='P' then
        dbms_output.put_line('calling soa_orabpel.deleteNoCompositeIdInstances');
        if  soa_orabpel.deleteNoCompositeIdInstances( min_created_date,
                                         max_created_date,
                                         retention_period,
                                         batch_size,
                                         purge_partitioned_component,
                                         soa_partition_name,
                                         composite_name,
                                         composite_revision) then
      
          more_rows_to_delete:=true;
        end if;
        dbms_output.put_line('completed soa_orabpel.deleteNoCompositeIdInstances');
      end if;
   
      IF (sysdate >= stoptime) THEN
           return false;
      END IF;
     if purge_partitioned_component = true OR componentPartInfo.workflowPartitioned='N' then  
        dbms_output.put_line('calling workflow.deleteNoCompositeIdInstances');
         if  soa_workflow.deleteNoCompositeIdInstances( min_created_date,
                                         max_created_date,
                                         retention_period,
                                         batch_size,
                                         composite_dn) then


         more_rows_to_delete:=true;
        end if;
        dbms_output.put_line('completed workflow.deleteNoCompositeIdInstances');
      end if; 
      IF (sysdate >= stoptime) THEN
           return false;
      END IF;

      if purge_partitioned_component = true OR componentPartInfo.mediatorPartitioned='N' OR componentPartInfo.mediatorPartitioned ='P' then                         
        dbms_output.put_line('calling mediator.deleteNoCompositeIdInstances');
       if  soa_mediator.deleteNoCompositeIdInstances( min_created_date,
                                         max_created_date,
                                         retention_period,
                                         batch_size,
                                         purge_partitioned_component,
                                         composite_dn ) then

         more_rows_to_delete:=true;
       end if;
        dbms_output.put_line('completed mediator.deleteNoCompositeIdInstances');
     end if;
     IF (sysdate >= stoptime) THEN
           return false;
      END IF;

    if purge_partitioned_component = true OR componentPartInfo.decisionPartitioned='N' then
        dbms_output.put_line('calling decision.deleteNoCompositeIdInstances');
      if  soa_decision.deleteNoCompositeIdInstances( min_created_date,
                                         max_created_date,
                                         retention_period,
                                         batch_size,
                                         composite_dn) then

        more_rows_to_delete:=true;

      end if;
        dbms_output.put_line('completed decision.deleteNoCompositeIdInstances');
  
     end if;
     IF (sysdate >= stoptime) THEN
           return false;
      END IF;
     if purge_partitioned_component = true OR componentPartInfo.fabricPartitioned='N' OR componentPartInfo.fabricPartitioned='P' then   
        dbms_output.put_line('calling fabric.deleteNoCompositeIdInstances');
      if  soa_fabric.deleteNoCompositeIdInstances(min_created_date,
                                                   max_created_date,retention_period,
                                                   batch_size,
                                                   purge_partitioned_component,
												   composite_dn
                                                   ) then

          more_rows_to_delete:=true;
     end if; 
        dbms_output.put_line('completed fabric.deleteNoCompositeIdInstances');
    end if;
      return more_rows_to_delete;
    exception 
      when others then
        log_error('ERROR (deleteNoCompositeIdInstances)');
        rollback;
        raise;
    end deleteNoCompositeIdInstances;  

   /**
     * procedure delete_composite_instances
     *
     * Deletes the composite instances and all the associated rows in other fabric tables that
     * reference this composite instance directly or indirectly. 
     */    
    procedure delete_composite_instances(instance_id_table in varchar2,
                                        purge_partitioned_component in boolean,
                                        componentPartInfo in component_partition_info,
                                        stoptime in date         
                                        )  is   
  

   
    begin
        IF (sysdate >= stoptime) THEN
           return;
        END IF;
        if purge_partitioned_component = true OR componentPartInfo.bpelPartitioned='N' OR componentPartInfo.bpelPartitioned='P'then
         dbms_output.put_line('calling soa_orabpel.deleteComponentInstances');
         soa_orabpel.deleteComponentInstances(instance_id_table,purge_partitioned_component);
         dbms_output.put_line('completed soa_orabpel.deleteComponentInstances');
       end if; 
       IF (sysdate >= stoptime) THEN
           return;
       END IF;
       if purge_partitioned_component = true OR componentPartInfo.workflowPartitioned='N' then   
           dbms_output.put_line('calling workflow.deleteComponentInstances');
           soa_workflow.deleteComponentInstances(instance_id_table);
           dbms_output.put_line('completed workflow.deleteComponentInstances');
        end if;      
       IF (sysdate >= stoptime) THEN
           return;
        END IF;
       if purge_partitioned_component = true OR componentPartInfo.mediatorPartitioned='N' OR componentPartInfo.mediatorPartitioned='P' then   
           dbms_output.put_line('calling mediator.deleteComponentInstances');
           soa_mediator.deleteComponentInstances(instance_id_table);
           dbms_output.put_line('completed mediator.deleteComponentInstances');
        end if;
       IF (sysdate >= stoptime) THEN
           return;
        END IF;
        if purge_partitioned_component = true OR componentPartInfo.decisionPartitioned='N' then   
            dbms_output.put_line('calling decision.deleteComponentInstances');
            soa_decision.deleteComponentInstances(instance_id_table);
            dbms_output.put_line('completed decision.deleteComponentInstances');
        end if;
       IF (sysdate >= stoptime) THEN
           return;
        END IF;
        if purge_partitioned_component = true OR componentPartInfo.fabricPartitioned='N' OR componentPartInfo.fabricPartitioned='P' then   
              dbms_output.put_line('calling fabric.deleteComponentInstances');
              soa_fabric.deleteCompositeInstances(instance_id_table,purge_partitioned_component);
              dbms_output.put_line('completed fabric.deleteComponentInstances');
        end if; 
        IF (sysdate >= stoptime) THEN
            return;
        END IF;

      
    exception
      when others then
        log_error('ERROR (delete_composite_instances)');
        rollback;
        raise;
    end delete_composite_instances;
   
    
procedure fault_delete_instances ( min_creation_date in timestamp,
                   max_creation_date in timestamp,
                   batch_size in integer default 20000, 
                   max_runtime in integer default 60, 
                   retention_period in timestamp default null,
                   purge_partitioned_component in boolean default false,
                   composite_name in  varchar2 default null,
                   composite_revision in varchar2 default null,
                   soa_partition_name in varchar2 default null

                   ) is 
    
    composite_id_sql varchar2(4000);
    purge_id_table varchar2(100) := 'ecid_purge';
    stoptime date := sysdate + NVL(max_runtime,24*60)/(24*60);
    total_rows integer;
    total_rows_after_pruning integer; 
    orphaned_loop BOOLEAN := TRUE;
    non_orphaned_loop BOOLEAN:=TRUE;
    iterationCount integer :=1;
    deletingOrphanedInstance boolean;
    more_rows_to_delete boolean := false;
    prune_running_insts_table varchar2(100) :='prune_running_insts';
    componentPartInfo component_partition_info;
    v_retention_period timestamp := NVL(retention_period,max_creation_date); 
    composite_dn varchar2(500);
    begin
      dbms_output.put_line('procedure fault_delete_instances');
      dbms_output.put_line('time check');
      dbms_output.put_line('sysdate  = ' ||TO_CHAR(sysdate,'DD/MON/YYYY:HH24/MI'));
      dbms_output.put_line('stoptime = ' ||TO_CHAR( stoptime,'DD/MON/YYYY:HH24/MI'));
      IF (sysdate >= stoptime) THEN
            non_orphaned_loop := FALSE;
            orphaned_loop := FALSE;
      END IF;
      execute immediate 'truncate table ' || prune_running_insts_table;
      execute immediate 'truncate table temp_processed_cikey';
      execute immediate 'truncate table temp_processed_MI';
      execute immediate 'truncate table edn_log_messages';
      componentPartInfo := getComponentPartitionInfo();
      composite_dn := make_composite_dn(soa_partition_name, composite_name, composite_revision);      
      dbms_output.put_line('composite_dn = ' || composite_dn); 
      WHILE orphaned_loop = TRUE OR non_orphaned_loop = TRUE LOOP
      dbms_output.put_line('loop  count = ' || iterationCount);
      deletingOrphanedInstance := (mod (iterationCount,2)=0);
      IF deletingOrphanedInstance = false and non_orphaned_loop = true then
      dbms_output.put_line('deleting non-orphaned instances');
      composite_id_sql := ' select unique ecid from composite_instance where (' ;
      composite_id_sql :=   composite_id_sql || ' bitand(state,0)=0 or ';
      composite_id_sql :=   composite_id_sql ||  ' bitand(state,1)=1 or ';
      composite_id_sql :=   composite_id_sql ||  ' bitand(state,2)=2 or ';
      composite_id_sql :=   composite_id_sql ||  ' bitand(state,3)=3 or ';
      composite_id_sql :=   composite_id_sql ||  'bitand(state,64)=64 ) ';
      composite_id_sql :=   composite_id_sql || 'and created_time >= ' || '''' || min_creation_date || ''''; 
      composite_id_sql := composite_id_sql || ' and created_time <= ' || '''' || max_creation_date || '''';
       dbms_output.put_line('composite_id_sql 1' || composite_id_sql);
      if composite_dn is not  null then 
         composite_id_sql := composite_id_sql || ' and composite_dn like ''' || composite_dn || '%''';
      end if;
      
      composite_id_sql := composite_id_sql || ' and ecid  not in (select ecid from prune_running_insts ) ';
      composite_id_sql := composite_id_sql || 'and rownum <= ' || 20000 ;
      dbms_output.put_line('composite_id_sql 2 ' || composite_id_sql);
      composite_id_sql := 'insert into '||purge_id_table || composite_id_sql;
      dbms_output.put_line('composite_id_sql 3' || composite_id_sql);
      execute immediate 'truncate table ' || purge_id_table;
      execute immediate composite_id_sql;
      total_rows := SQL%ROWCOUNT;
      debug_purge(purge_id_table,'Inserted = ');
      commit;
      dbms_output.put_line('total rows before pruning ' || total_rows);
      IF total_rows = 0  THEN
           non_orphaned_loop := FALSE ;
      END IF ;
      dbms_output.put_line('calling pruneOpenECIDs ');
dbms_output.put_line('v_retention_period '||v_retention_period);
      pruneOpenECIDs (purge_id_table,prune_running_insts_table,v_retention_period);
      dbms_output.put_line('finished pruneOpenECIDs ');
      SELECT count(*) INTO total_rows_after_pruning FROM ecid_purge;
      dbms_output.put_line('total_rows_after_pruning ' || total_rows_after_pruning);
      IF purge_partitioned_component = false AND  ( componentPartInfo.fabricPartitioned='Y' OR componentPartInfo.fabricPartitioned='P')  then
          -- since composite instances wouldnt be purged we add the processed ecids to prune_running_inst table
          dbms_output.put_line('inserting processed ecids into prune_running_insts');
          insert into prune_running_insts select ecid from ecid_purge;
          debug_purge('prune_running_insts','inserted = ' );
          commit;
      END IF;
      delete_composite_instances(purge_id_table,purge_partitioned_component,componentPartInfo, stoptime);
      IF (sysdate >= stoptime) THEN
            non_orphaned_loop := FALSE;
            orphaned_loop := FALSE;
      END IF;
      END IF;
      
      IF deletingOrphanedInstance = true and orphaned_loop = true then
        dbms_output.put_line('deleting orphaned instances');
        more_rows_to_delete := deleteNoCompositeIdInstances(min_creation_date,
                                       max_creation_date, v_retention_period,batch_size,purge_partitioned_component,componentPartInfo,stoptime,
                                      composite_dn, soa_partition_name, composite_name, composite_revision ) ;     
        orphaned_loop := more_rows_to_delete;                                       
       END IF;
       commit;
      
      dbms_output.put_line('time check');
      dbms_output.put_line('sysdate  = ' ||TO_CHAR(sysdate,'DD/MON/YYYY:HH24/MI'));
      dbms_output.put_line('stoptime = ' ||TO_CHAR( stoptime,'DD/MON/YYYY:HH24/MI'));
      IF (sysdate >= stoptime) THEN
            non_orphaned_loop := FALSE;
            orphaned_loop := FALSE;
      END IF;
      iterationCount := iterationCount + 1;
       
    END LOOP;
     if(sysdate < stoptime and(purge_partitioned_component = true OR soa_fabric.getComponentPartitionInfo='N' OR soa_fabric.getComponentPartitionInfo='P') ) then
       soa_fabric.deleteRejectedMessages(min_creation_date,max_creation_date,batch_size,stoptime,purge_partitioned_component);
     end if;
      execute immediate 'truncate table ' || prune_running_insts_table;
      dbms_output.put_line('fault_delete_instances completed successfully');
 
 EXCEPTION
  when others then
    log_error('ERROR(fault_delete_instances) ');     
    end fault_delete_instances; 

  procedure falutDeleteInstance (min_creation_date in timestamp,
                   max_creation_date in timestamp) IS
 BEGIN
fault_delete_instances(min_creation_date => TRUNC(SYSDATE - 2*365)
,max_creation_date => TRUNC(SYSDATE - 90)
);
--  fault_delete_instances(min_creation_date,max_creation_date);
 END;
END PURGE_FAULT_INSTANCE;
/

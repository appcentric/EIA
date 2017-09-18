 
-- $Header$
-- 04/16/2011
-- Vivek Srinivasan
-- Script to purge reclaim disk space indexes SOA_INFRA schema
-- Should be run from the ESS schema
-- sqlplus <ess_Schema>/<password> @purge_reclaim_ess_space_new.sql
-- Script written for  SOA Suite 11.1.1.3 (11gPS2)

set echo on
set verify on
set timing on
alter table EVENT_FILTER enable row movement;
alter table EVENT_FILTER shrink space;
alter table EVENT_FILTER disable row movement;

alter table FAILED_EXECUTION_HISTORY enable row movement;
alter table FAILED_EXECUTION_HISTORY shrink space;
alter table FAILED_EXECUTION_HISTORY disable row movement;

alter table REQUEST_CONSTRAINT enable row movement;
alter table REQUEST_CONSTRAINT shrink space;
alter table REQUEST_CONSTRAINT disable row movement;


alter table REQUEST_PROPERTY enable row movement;
alter table REQUEST_PROPERTY shrink space;
alter table REQUEST_PROPERTY disable row movement;


alter table REQUEST_INCOMPATIBILITY enable row movement;
alter table REQUEST_INCOMPATIBILITY shrink space;
alter table REQUEST_INCOMPATIBILITY disable row movement;

alter table JOB_INCOMPATIBILITY enable row movement;
alter table JOB_INCOMPATIBILITY shrink space;
alter table JOB_INCOMPATIBILITY disable row movement;


alter table REQUEST_METADATA enable row movement;
alter table REQUEST_METADATA shrink space;
alter table REQUEST_METADATA disable row movement;

alter table ESS_WS_ASYNC_INFO enable row movement;
alter table ESS_WS_ASYNC_INFO shrink space;
alter table ESS_WS_ASYNC_INFO disable row movement;

alter table REQUEST_CONTENT enable row movement;
alter table REQUEST_CONTENT shrink space;
alter table REQUEST_CONTENT disable row movement;


alter table REQUEST_ATTRIBUTE enable row movement;
alter table REQUEST_ATTRIBUTE shrink space;
alter table REQUEST_ATTRIBUTE disable row movement;


-- alter table EVENT_WORK enable row movement;
-- alter table EVENT_WORK shrink space;
-- alter table EVENT_WORK disable row movement;

alter table COMMAND_WORK enable row movement;
alter table COMMAND_WORK shrink space;
alter table COMMAND_WORK disable row movement;


alter table PARAMETER_STASH enable row movement;
alter table PARAMETER_STASH shrink space;
alter table PARAMETER_STASH disable row movement;


-- alter table WAIT_QUEUE enable row movement;
-- alter table WAIT_QUEUE shrink space;
-- alter table WAIT_QUEUE disable row movement;


alter table REQUEST_HISTORY enable row movement;
alter table REQUEST_HISTORY shrink space;
alter table REQUEST_HISTORY disable row movement;

COMMIT;

EXIT;


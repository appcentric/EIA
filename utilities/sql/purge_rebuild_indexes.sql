-- $Header$
-- 04/16/2011
-- Vivek Srinivasan
-- Script to purge rebuild indexes SOA_INFRA schema
-- Should be run from the SOAINFRA schema
-- sqlplus <soainfra>/<password> @purge_instances.sql
-- Script written for  SOA Suite 11.1.1.3 (11gPS2)


set echo on
set verify on
set timing ON

alter index ad_pk rebuild online;
alter index at_pk rebuild online;
alter index ci_creation_date rebuild online;
alter index ci_custom3 rebuild online;
alter index ci_ecid rebuild online;
alter index ci_name_rev_state rebuild online;
alter index ci_pk rebuild online;
alter index composite_instance_cidn rebuild online;
alter index composite_instance_co_id rebuild online;
alter index composite_instance_created rebuild online;
alter index composite_instance_ecid rebuild online;
alter index composite_instance_id rebuild online;
alter index composite_instance_state rebuild online;
alter index cs_pk rebuild online;
alter index dm_conversation rebuild online;
alter index dm_pk rebuild online;
alter index doc_dlv_msg_guid_index rebuild online;
alter index doc_store_pk rebuild online;
alter index ds_conversation rebuild online;
alter index ds_conv_state rebuild online;
alter index ds_fk rebuild online;
alter index ds_pk rebuild online;
alter index header_properties_pk rebuild online;
alter index instance_payload_key rebuild online;
alter index reference_instance_cdn_state rebuild online;
alter index reference_instance_co_id rebuild online;
alter index reference_instance_ecid rebuild online;
alter index reference_instance_id rebuild online;
alter index reference_instance_state rebuild online;
alter index reference_instance_time_cdn rebuild online;
alter index state_type_date rebuild online;
alter index wf_crdate_cikey rebuild online;
alter index wf_crdate_type rebuild online;
alter index wf_fk2 rebuild online;
alter index wifault_pk rebuild online;
alter index wi_expired rebuild online;
alter index wi_key_crdate_state rebuild online;
alter index wi_pk rebuild online;
alter index wi_stranded rebuild online;
alter index xml_doc_reference_pk rebuild online;

COMMIT;

EXIT;

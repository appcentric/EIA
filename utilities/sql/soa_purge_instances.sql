-- $Header$
-- 04/16/2011
-- 4/25/2012 - Upgrade to 11.1.1.6
-- Vivek Srinivasan
-- Changed by Kumar on 09/19/2013
-- Script to purge Composite instances from SOA_INFRA schema
-- Should be run from the SOAINFRA schema
-- sqlplus soa_soainfra/manager @soa_purge_instances.sql
--
WHENEVER SQLERROR EXIT ROLLBACK
WHENEVER OSERROR EXIT ROLLBACK

set echo off
set define _
set define &
set serveroutput on size 1000000
set trimspool on
set trimout on
set verify off
set pagesize 0
set linesize 9999
set heading off
set feedback off
set timing off
-- This script purges all SOA Data
-- @soa_purge_instances_generic.sql
-- ***************************************************************************************************
-- ***************************************************************************************************
Prompt 
Prompt Puring Data.....

SET termout OFF

ALTER PROCEDURE debug_purge  COMPILE PLSQL_CCFLAGS = 'debug_on:TRUE' REUSE SETTINGS;
ALTER PROCEDURE log_info COMPILE PLSQL_CCFLAGS = 'debug_on:TRUE' REUSE SETTINGS;

SET termout on
DECLARE
 l_max_creation_date timestamp;
 l_min_creation_date timestamp;
BEGIN

    -- Signature

    -- soa.delete_instances (min_creation_date in timestamp,
    --               max_creation_date in timestamp,
    --               batch_size in integer default 20000, 
    --               max_runtime in integer default 60, 
    --               retention_period in timestamp default null,
    --               purge_partitioned_component in boolean default false,
    --                composite_name in  varchar2 default null,
    --               composite_revision in varchar2 default null,
    --               soa_partition_name in varchar2 default null
    --               );    


     ---- Developers should add a line to include their own process level data retention
     -- requirement
     -- E.g. below line if uncommented will purge data for Composite
     -- NUC_EBizPayment_ABS and retains only last 15 days of data
    -- soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 61)
    --                     ,max_creation_date => TRUNC(SYSDATE - 15)
    --			 ,composite_name => 'WI_SalesOrderProcess'
    --			 );
    -- Purge instances older than 1 year for WI_ProcessSalesOrder	
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'UtilityXREF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'common'
			 ,ignore_state => true
    			 );
    -- Purge instances older than 1 year for WI_O2C_ATP_Override_ABF    			 
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 5)
    			 ,composite_name => 'EIAAsyncErrorHandlingBPELProcess'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'common'
			 ,ignore_state => true
    			 );   
	-- Purge instances older than 30 days for GET_NFC_NEW_FORMAT_XML
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'GET_NFC_NEW_FORMAT_XML'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_EBiz_SAP_GLJE_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBiz_SAP_GLJE_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_EBizAPInvoice_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizAPInvoice_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
    -- Purge instances older than 30 days for NUC_EBizARInvoice_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizARInvoice_ABS'
			 ,composite_revision => '1.0'
			 ,ignore_state => true
			 ,soa_partition_name => 'nuc'
    			 );
	-- Purge instances older than 30 days for NUC_EBizCustomer_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizCustomer_ABS'
			 ,composite_revision => '1.0'
			 ,ignore_state => true
			 ,soa_partition_name => 'nuc'
    			 );
	-- Purge instances older than 30 days for NUC_EBizCustomerBalance_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizCustomerBalance_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_EBizGLAccount_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizGLAccount_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_EBizGLJE_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizGLJE_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_EBizOrigSystemRef_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizOrigSystemRef_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
    			 );
	-- Purge instances older than 30 days for NUC_EBizPayment_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizPayment_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
    			 );
	-- Purge instances older than 30 days for NUC_EBizPOReceipt_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizPOReceipt_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_EBizPurchaseOrder_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizPurchaseOrder_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
    			 );
	-- Purge instances older than 30 days for NUC_EBizRequestDelivery_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizRequestDelivery_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
    			 );
	-- Purge instances older than 30 days for NUC_EBizSupplier_ABS
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_EBizSupplier_ABS'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_PublishCustomerEBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_PublishCustomerEBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_PublishPayment_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_PublishPayment_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_PublishSupplier_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_PublishSupplier_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NUC_SAP_EBiz_Garnish_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NUC_SAP_EBiz_Garnish_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for UC_SupplierUpdate_SAP_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'UC_SupplierUpdate_SAP_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for ReducedDemographics
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'ReducedDemographics'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nuc'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NYS_ARInvoice_DB2_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_ARInvoice_DB2_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NYS_DJJ_EBiz_APInvoice_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_DJJ_EBiz_APInvoice_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NYS_EBiz_OEXR_GLJE_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_EBiz_OEXR_GLJE_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NYS_PurchaseOrder_DB2_Ebiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_PurchaseOrder_DB2_Ebiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NYS_WagesAPInvoice_SAP_EBS_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_WagesAPInvoice_SAP_EBS_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
		-- Purge instances older than 30 days for NCA_ARInvoice_MIPS_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NCA_ARInvoice_MIPS_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nca'
			 ,ignore_state => true
    			 );
		-- Purge instances older than 30 days for NCA_EBiz_OEXR_GLJE_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NCA_EBiz_OEXR_GLJE_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nca'
			 ,ignore_state => true
    			 );
		-- Purge instances older than 30 days for NCA_WagesAPInvoice_SAP_EBS_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NCA_WagesAPInvoice_SAP_EBS_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nca'
			 ,ignore_state => true
    			 );
		-- Purge instances older than 30 days for NCA_PORequisition_SQL_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NCA_PORequisition_SQL_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nca'
			 ,ignore_state => true
    			 );			 
	-- Purge instances older than 30 days for NYS_POReceipts_RAE_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_POReceipts_RAE_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
	-- Purge instances older than 30 days for NYS_PORequisition_SQL_EBiz_ABF
    soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 365)
                         ,max_creation_date => TRUNC(SYSDATE - 15)
    			 ,composite_name => 'NYS_PORequisition_SQL_EBiz_ABF'
			 ,composite_revision => '1.0'
			 ,soa_partition_name => 'nys'
			 ,ignore_state => true
    			 );
				 
  -- Generic to delete SOA instances older than 1 year months - Overall Purge standard
  -- Moved the code to the last from Middle- Kumar
  
     soa.delete_instances(min_creation_date => TRUNC(SYSDATE - 2*365)
                         ,max_creation_date => TRUNC(SYSDATE - 30 )
                         ,ignore_state => true
			 );
END;
/

SET termout OFF
ALTER PROCEDURE debug_purge COMPILE PLSQL_CCFLAGS = 'debug_on:false' REUSE SETTINGS;
ALTER PROCEDURE log_info COMPILE PLSQL_CCFLAGS = 'debug_on:false' REUSE SETTINGS;
SET termout on

COMMIT;

EXIT;

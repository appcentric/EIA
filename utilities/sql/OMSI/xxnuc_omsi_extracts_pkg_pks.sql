WHENEVER SQLERROR CONTINUE

CREATE OR REPLACE PACKAGE xxnuc_omsi_extracts_pkg
AS
/*******************************************************************************
* Program Name : XXNUC_OMSI_EXTRACTS_PKG
* File Name    : XXNUC_OMSI_EXTRACTS_PKG_PKS.sql
* Written by   : Vinay Bhonsle
* Description  : package to extract date from OMSI for EBS processing
* History      :
* $Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/OMSI/xxnuc_omsi_extracts_pkg_pks.sql 8888 2016-05-31 15:29:24Z sudeep.deshpande $
* WHO                  WHEN          Version    WHAT
* ------------------- ------------  ---------  -----------------------------
* Vinay Bhonsle       30-OCT-2015    0.1        Initial Draft
* Sudeep              25-MAY-2016   0.2        Procedure omsi_shipment_apptment_extract modified to include xxnuc_pod_entry_tab_type
*******************************************************************************/

   -------------------------------------------------------------------------------
-- Procedure to extract Freight log entries for EBS
-------------------------------------------------------------------------------
   PROCEDURE omsi_freightlog_extract (
      p_log_entry                OUT      xxnuc_log_entry_tab_type
     ,p_freight_log_entry        OUT      xxnuc_freight_entry_tab_type);

-------------------------------------------------------------------------------
-- Procedure to extract Shipment Log and Appointment Log entries for EBS
-------------------------------------------------------------------------------
   PROCEDURE omsi_shipment_apptment_extract (
      p_log_entry                OUT      xxnuc_log_entry_tab_type
     ,p_shipment_log_entry       OUT      xxnuc_shipment_entry_tab_type
     ,p_appointment_log_entry    OUT      xxnuc_apptment_entry_tab_type
     ,p_pod_log_entry            OUT      xxnuc_pod_entry_tab_type);  --0.2
--
END xxnuc_omsi_extracts_pkg;
/

SHOW ERROR
/

REM ====================================================
REM EOF: XXNUC_OMSI_EXTRACTS_PKG_PKS.sql
REM ====================================================
WHENEVER SQLERROR CONTINUE
/*******************************************************************************
* Program Name : XXNUC_OMSI_EXTRACTS_OBJECTS
* File Name    : XXNUC_OMSI_EXTRACTS_OBJECTS.sql
* Written by   : Vinay Bhonsle
* Description  : Object types and table types to support OMSI Freight Log Extracts
* History      :
* $Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/OMSI/xxnuc_omsi_extracts_objects.sql 8888 2016-05-31 15:29:24Z sudeep.deshpande $
* WHO                  WHEN          Version    WHAT
* ------------------- ------------  ---------  -----------------------------
* Vinay Bhonsle       30-OCT-2015    0.1        Initial Draft
* Sudeep              25-MAY-2016   0.2        Added object type for pod_log_entry for operation 1500
*******************************************************************************/
REM ====================================================
REM Dropping object and table types
REM ====================================================

DROP TYPE xxnuc_log_entry_tab_type;
DROP TYPE xxnuc_log_entry_obj;
DROP TYPE xxnuc_apptment_entry_tab_type;
DROP TYPE xxnuc_appointment_entry_obj;
DROP TYPE xxnuc_shipment_entry_tab_type;
DROP TYPE xxnuc_shipment_entry_obj;
DROP TYPE xxnuc_freight_entry_tab_type;
DROP TYPE xxnuc_freight_entry_obj;
--0.2
DROP TYPE xxnuc_pod_entry_tab_type;
DROP TYPE xxnuc_pod_entry_obj;
/

REM ====================================================
REM Creating object and table types
REM ====================================================

CREATE OR REPLACE TYPE xxnuc_freight_entry_obj IS OBJECT (
   log_entry_id                  NUMBER
  ,client_key_1                  VARCHAR2 (50)
  ,client_key_2                  VARCHAR2 (50)
  ,client_key_3                  VARCHAR2 (50)
  ,client_key_4                  VARCHAR2 (50)
  ,stop_sequence_number          NUMBER
  ,dsm_id                        NUMBER
  ,shipper_ref_number            VARCHAR2 (50)
  ,carrier_name                  VARCHAR2 (75)
  ,carrier_scac                  VARCHAR2 (50)
  ,vendor_id                     VARCHAR2 (50)
  ,line_haul_charge              NUMBER (8, 2)
  ,fuel_surcharge                NUMBER (8, 2)
  ,customer_number               VARCHAR2 (50)
  ,customer_order_number         VARCHAR2 (255)
  ,po_number                     VARCHAR2 (255)
  ,bol_number                    VARCHAR2 (255)
  ,accessorial_code              VARCHAR2 (50)
  ,edi_code                      VARCHAR2 (50)
  ,accessorial_charge            NUMBER (8, 2)
  ,shipper_comment               VARCHAR2 (4000)
  ,carrier_claim                 NUMBER (8, 2)
  ,carrier_comment               VARCHAR2 (4000)
  ,is_delivered                  NUMBER (1, 0)
  ,audit_status                  NUMBER
  ,delivering_carrier_name       VARCHAR2 (75)
  ,delivering_carrier_scac       VARCHAR2 (50)
  ,delivering_carrier_vendor_id  VARCHAR2 (50)
  ,gl_item_code                  VARCHAR2 (50)
  ,pro_number                    VARCHAR2 (255)
  ,popu_signing_date             DATE
  ,pod_signing_date              DATE
);
/

CREATE OR REPLACE TYPE xxnuc_freight_entry_tab_type IS TABLE OF xxnuc_freight_entry_obj;
/

CREATE OR REPLACE TYPE xxnuc_shipment_entry_obj IS OBJECT (
   log_entry_id                  NUMBER
  ,client_key_1                  VARCHAR2 (50)
  ,client_key_2                  VARCHAR2 (50)
  ,client_key_3                  VARCHAR2 (50)
  ,client_key_4                  VARCHAR2 (50)
  ,bid_total                     NUMBER (8, 2)
  ,bid_amount                    NUMBER (8, 2)
  ,bid_quantity                  NUMBER       
  ,bid_type                      NUMBER         
  ,carrier_name                  VARCHAR2 (50)
  ,carrier_scac_code             VARCHAR2 (50)
  ,vendor_id                     VARCHAR2 (50)
  ,carrier_comments              VARCHAR2 (4000)
  ,carrier_truck_number          VARCHAR2 (25)
  ,carrier_driver_number         VARCHAR2 (25)
  ,carrier_contract_number       VARCHAR2 (25)
  ,carrier_equipment_number      VARCHAR2 (25)
  ,is_completed                  NUMBER (1, 0)
  ,is_cancelled                  NUMBER (1, 0)
  ,dsm_id                        NUMBER       
  ,equipment_type                NUMBER          
  ,time_awarded                  DATE
  ,delivering_carrier_name       VARCHAR2 (50)
  ,delivering_carrier_scac       VARCHAR2 (50)
  ,delivering_carrier_vendor_id  VARCHAR2 (50)
  ,cancelation_reason_code       NUMBER       
  ,brokered_to_carrier           VARCHAR2 (75)
);
/

CREATE OR REPLACE TYPE xxnuc_shipment_entry_tab_type IS TABLE OF xxnuc_shipment_entry_obj;
/

CREATE OR REPLACE TYPE xxnuc_appointment_entry_obj IS OBJECT (
   log_entry_id                  NUMBER
  ,client_key_1                  VARCHAR2 (50)
  ,client_key_2                  VARCHAR2 (50)
  ,client_key_3                  VARCHAR2 (50)
  ,client_key_4                  VARCHAR2 (50)
  ,stop_sequence_number          NUMBER
  ,start_time                    DATE
  ,end_time                      DATE
  ,stop_duration                 NUMBER       
  ,is_inbound                    NUMBER (1, 0)
  ,is_external                   NUMBER (1, 0)
  ,location_code                 VARCHAR2 (50)
  ,door_name                     VARCHAR2 (25)
  ,carrier_name                  VARCHAR2 (75)
  ,carrier_scac                  VARCHAR2 (50)
  ,vendor_id                     VARCHAR2 (50)
  ,customer_order_number         VARCHAR2 (75)
  ,shipper_ref_number            VARCHAR2 (50)
  ,po_number                     VARCHAR2 (4000)
  ,bol_number                    VARCHAR2 (75)
  ,consignee_supplier            VARCHAR2 (75)
  ,log_in_time                   DATE             
  ,log_in_notes                  VARCHAR2 (4000)
  ,log_out_time                  DATE
  ,log_out_notes                 VARCHAR2 (4000)
  ,gate_in_time                  DATE         
  ,gate_in_notes                 VARCHAR2 (4000)
  ,gate_out_time                 DATE
  ,gate_out_notes                VARCHAR2 (4000)
  ,scheduling_user               VARCHAR2 (200)
  ,scheduling_company            NUMBER (1, 0)
  ,trailer_number                VARCHAR2 (75)
  ,delivering_carrier_name       VARCHAR2 (75)
  ,delivering_carrier_scac       VARCHAR2 (50)
  ,delivering_carrier_vendor_id  VARCHAR2 (50)
  ,brokered_to_carrier           VARCHAR2 (75)
);
/

CREATE OR REPLACE TYPE xxnuc_apptment_entry_tab_type IS TABLE OF xxnuc_appointment_entry_obj;
/

CREATE OR REPLACE TYPE xxnuc_log_entry_obj AS OBJECT (
   log_entry_id                  NUMBER
  ,operation_id                  NUMBER
  ,operation                     NUMBER
  ,result_code                   NUMBER (1, 0)
  ,result_message                VARCHAR2 (4000)
  ,is_read                       NUMBER (1, 0)
  ,process_time                  DATE
);
/

CREATE OR REPLACE TYPE xxnuc_log_entry_tab_type IS TABLE OF xxnuc_log_entry_obj;
/

--0.2
CREATE OR REPLACE TYPE xxnuc_pod_entry_obj AS OBJECT (
  log_entry_id         NUMBER        
, client_key_1         VARCHAR2(50)  
, client_key_2         VARCHAR2(50)  
, client_key_3         VARCHAR2(50)  
, client_key_4         VARCHAR2(50)  
, stop_sequence_number NUMBER        
, signer               VARCHAR2(75)  
, signing_date         DATE          
, entry_time           DATE          
, entry_user           VARCHAR2(101) 
, notes                VARCHAR2(300) 
, carrier_scac         VARCHAR2(50)  
, vendor_id            VARCHAR2(50)  
);
/

CREATE OR REPLACE TYPE xxnuc_pod_entry_tab_type IS TABLE OF xxnuc_pod_entry_obj;
/

SHOW ERROR
/

REM ====================================================
REM EOF: XXNUC_OMSI_EXTRACTS_OBJECTS.sql
REM ====================================================

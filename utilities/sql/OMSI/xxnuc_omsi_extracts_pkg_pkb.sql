WHENEVER SQLERROR CONTINUE

CREATE OR REPLACE PACKAGE BODY xxnuc_omsi_extracts_pkg
AS
/*******************************************************************************
* Program Name : XXNUC_OMSI_EXTRACTS_PKG
* File Name    : XXNUC_OMSI_EXTRACTS_PKG_PKB.sql
* Written by   : Vinay Bhonsle
* Description  : package to extract date from OMSI for EBS processing
* History      :
* $Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/OMSI/xxnuc_omsi_extracts_pkg_pkb.sql 10117 2016-06-29 15:25:57Z sudeep.deshpande $
* WHO                  WHEN          Version    WHAT
* ------------------- ------------  ---------  -----------------------------
* Vinay Bhonsle       30-OCT-2015    0.1        Initial Draft
* Sudeep              11-MAR-2016   0.2        Added operations 2100, 2200 to cursor for shipment appointment extract
* Sudeep              18-APR-2016   0.3        Added NOT exists clause to cursor 'log_entry_cur' in procedure 'omsi_shipment_apptment_extract'
*                                              This will fix the issue for fetching operations 1400, 2100 and 2200
* Sudeep              25-MAY-2016   0.4        Procedure omsi_shipment_apptment_extract modified to include xxnuc_pod_entry_tab_type
* Sudeep              29-JUN-2016   0.5        Added ORDER BY clause to cursor 'log_entry_cur' in procedure 'omsi_shipment_apptment_extract'
*******************************************************************************/
--
-------------------------------------------------------------------------------
-- Procedure to extract Freight log entries for EBS
-------------------------------------------------------------------------------
   PROCEDURE omsi_freightlog_extract (
      p_log_entry                OUT      xxnuc_log_entry_tab_type
     ,p_freight_log_entry        OUT      xxnuc_freight_entry_tab_type)
   IS
      --
      l_log_entry_tab               xxnuc_log_entry_tab_type;
      l_freight_entry_tab           xxnuc_freight_entry_tab_type;
      --
      l_log_cnt                     NUMBER;
      l_freight_cnt                 NUMBER;

      --
      CURSOR log_entry_cur
      IS
         SELECT ROWID lerowid
               ,log_entry_id
               ,operation_id
               ,operation
               ,result_code
               ,result_message
               ,is_read
               ,process_time
           FROM log_entry le
          WHERE 1 = 1
            AND le.operation = 6800
            AND le.is_read = 0
            AND EXISTS (SELECT 1
                          FROM freight_bill_log_entry
                         WHERE 1 = 1
                           AND client_key_4 = 'EBS'
                           AND log_entry_id = le.log_entry_id)
            AND ROWNUM <= 2000;

      CURSOR freight_entry_cur (
         c_log_entry_id                      NUMBER)
      IS
         SELECT ROWID fblerowid
               ,log_entry_id
               ,client_key_1
               ,client_key_2
               ,client_key_3
               ,client_key_4
               ,stop_sequence_number
               ,dsm_id
               ,shipper_ref_number
               ,carrier_name
               ,carrier_scac
               ,vendor_id
               ,line_haul_charge
               ,fuel_surcharge
               ,customer_number
               ,customer_order_number
               ,po_number
               ,bol_number
               ,accessorial_code
               ,edi_code
               ,accessorial_charge
               ,shipper_comment
               ,carrier_claim
               ,carrier_comment
               ,is_delivered
               ,audit_status
               ,delivering_carrier_name
               ,delivering_carrier_scac
               ,delivering_carrier_vendor_id
               ,gl_item_code
               ,pro_number
               ,popu_signing_date
               ,pod_signing_date
           FROM freight_bill_log_entry
          WHERE 1 = 1
            AND client_key_4 = 'EBS'
            AND log_entry_id = c_log_entry_id;
   --
   BEGIN
      -- Initialize variables
      l_log_entry_tab            := xxnuc_log_entry_tab_type ();
      l_log_entry_tab.DELETE ();
      l_freight_entry_tab        := xxnuc_freight_entry_tab_type ();
      l_freight_entry_tab.DELETE ();
      --
      l_log_cnt                  := 0;
      l_freight_cnt              := 0;

      -- Log entry cursor to fetch header records.
      FOR log_entry_rec IN log_entry_cur
      LOOP
         BEGIN
            l_log_cnt                  := l_log_cnt + 1;
            l_log_entry_tab.EXTEND (1);
            l_log_entry_tab (l_log_cnt) := xxnuc_log_entry_obj (log_entry_rec.log_entry_id
                                                               ,log_entry_rec.operation_id
                                                               ,log_entry_rec.operation
                                                               ,log_entry_rec.result_code
                                                               ,log_entry_rec.result_message
                                                               ,log_entry_rec.is_read
                                                               ,log_entry_rec.process_time);

            -- freight entry records to fetch line records
            FOR freight_entry_rec IN freight_entry_cur (log_entry_rec.log_entry_id)
            LOOP
               BEGIN
                  l_freight_cnt              := l_freight_cnt + 1;
                  l_freight_entry_tab.EXTEND (1);
                  l_freight_entry_tab (l_freight_cnt) := xxnuc_freight_entry_obj (freight_entry_rec.log_entry_id
                                                                                 ,freight_entry_rec.client_key_1
                                                                                 ,freight_entry_rec.client_key_2
                                                                                 ,freight_entry_rec.client_key_3
                                                                                 ,freight_entry_rec.client_key_4
                                                                                 ,freight_entry_rec.stop_sequence_number
                                                                                 ,freight_entry_rec.dsm_id
                                                                                 ,freight_entry_rec.shipper_ref_number
                                                                                 ,freight_entry_rec.carrier_name
                                                                                 ,freight_entry_rec.carrier_scac
                                                                                 ,freight_entry_rec.vendor_id
                                                                                 ,freight_entry_rec.line_haul_charge
                                                                                 ,freight_entry_rec.fuel_surcharge
                                                                                 ,freight_entry_rec.customer_number
                                                                                 ,freight_entry_rec.customer_order_number
                                                                                 ,freight_entry_rec.po_number
                                                                                 ,freight_entry_rec.bol_number
                                                                                 ,freight_entry_rec.accessorial_code
                                                                                 ,freight_entry_rec.edi_code
                                                                                 ,freight_entry_rec.accessorial_charge
                                                                                 ,freight_entry_rec.shipper_comment
                                                                                 ,freight_entry_rec.carrier_claim
                                                                                 ,freight_entry_rec.carrier_comment
                                                                                 ,freight_entry_rec.is_delivered
                                                                                 ,freight_entry_rec.audit_status
                                                                                 ,freight_entry_rec.delivering_carrier_name
                                                                                 ,freight_entry_rec.delivering_carrier_scac
                                                                                 ,freight_entry_rec.delivering_carrier_vendor_id
                                                                                 ,freight_entry_rec.gl_item_code
                                                                                 ,freight_entry_rec.pro_number
                                                                                 ,freight_entry_rec.popu_signing_date
                                                                                 ,freight_entry_rec.pod_signing_date);
               --
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     DBMS_OUTPUT.put_line ('Err freight_entry_cur: ' || SQLERRM);
               END;
            END LOOP;

            BEGIN
               UPDATE log_entry
                  SET is_read = 3
                WHERE 1 = 1
                  AND log_entry_id = log_entry_rec.log_entry_id
                  AND ROWID = log_entry_rec.lerowid;
            EXCEPTION
               WHEN OTHERS
               THEN
                  DBMS_OUTPUT.put_line ('Err LOG_ENTRY Update: ' || SQLERRM);
            END;
         EXCEPTION
            WHEN OTHERS
            THEN
               DBMS_OUTPUT.put_line ('Err log_entry_cur: ' || SQLERRM);
         END;
      END LOOP;

      p_log_entry                := l_log_entry_tab;
      p_freight_log_entry        := l_freight_entry_tab;
   --
   EXCEPTION
      WHEN OTHERS
      THEN
         DBMS_OUTPUT.put_line ('Err Extract Process: ' || SQLERRM);
   END omsi_freightlog_extract;

-------------------------------------------------------------------------------
-- Procedure to extract Shipment Log and Appointment Log entries for EBS
-------------------------------------------------------------------------------
   PROCEDURE omsi_shipment_apptment_extract (
      p_log_entry                OUT      xxnuc_log_entry_tab_type
     ,p_shipment_log_entry       OUT      xxnuc_shipment_entry_tab_type
     ,p_appointment_log_entry    OUT      xxnuc_apptment_entry_tab_type
     ,p_pod_log_entry            OUT      xxnuc_pod_entry_tab_type)
   IS
      --
      l_log_entry_tab               xxnuc_log_entry_tab_type;
      l_shipment_entry_tab          xxnuc_shipment_entry_tab_type;
      l_appointment_entry_tab       xxnuc_apptment_entry_tab_type;
      l_pod_entry_tab               xxnuc_pod_entry_tab_type;
      --
      l_log_cnt                     NUMBER;
      l_shipment_cnt                NUMBER;
      l_apptment_cnt                NUMBER;
      l_pod_log_cnt                 NUMBER;

      --
      CURSOR log_entry_cur
      IS
         SELECT rec_type
               ,log_entry_id
               ,operation_id
               ,operation
               ,result_code
               ,result_message
               ,is_read
               ,process_time
           FROM (SELECT 'S' rec_type
                       ,log_entry_id
                       ,operation_id
                       ,operation
                       ,result_code
                       ,result_message
                       ,is_read
                       ,process_time
                   FROM log_entry le
                  WHERE 1 = 1
                    AND EXISTS (SELECT 1
                                  FROM shipment_log_entry
                                 WHERE 1 = 1
                                   AND client_key_4 = 'EBS'
                                   AND log_entry_id = le.log_entry_id)
                 UNION
                 SELECT 'A' rec_type
                       ,log_entry_id
                       ,operation_id
                       ,operation
                       ,result_code
                       ,result_message
                       ,is_read
                       ,process_time
                   FROM log_entry le
                  WHERE 1 = 1
                    AND EXISTS (SELECT 1
                                  FROM appointment_log_entry
                                 WHERE 1 = 1
                                   AND client_key_4 = 'EBS'
                                   AND log_entry_id = le.log_entry_id)
        --Added for 0.3
        --Start
                 UNION
                 SELECT 'L' rec_type
                      , log_entry_id
                      , operation_id
                      , operation
                      , result_code
                      , result_message
                      , is_read
                      , process_time
                   FROM log_entry le
                  WHERE 1 = 1
                    AND NOT EXISTS (SELECT 1
                                      FROM appointment_log_entry
                                     WHERE 1 = 1
                                       AND client_key_4 = 'EBS'
                                       AND log_entry_id = le.log_entry_id)
                    AND NOT EXISTS (SELECT 1
                                      FROM shipment_log_entry
                                     WHERE 1 = 1
                                       AND client_key_4 = 'EBS'
                                       AND log_entry_id = le.log_entry_id)
        --End
        --Added for 0.3
                )
          WHERE 1 = 1
            AND is_read = 0
            --AND operation IN (100, 200, 300, 500, 600, 700, 800, 1400) --Changed for 0.2
            --AND operation IN (100, 200, 300, 500, 600, 700, 800, 1400, 2100, 2200)  --Changed for 0.4
            AND operation IN (100, 200, 300, 500, 600, 700, 800, 1400, 1500, 2100, 2200)
            AND ROWNUM <= 2000
          ORDER BY operation_id     --Added for 0.5
      ;

      CURSOR shipment_cur (
         c_log_entry_id                      log_entry.log_entry_id%TYPE)
      IS
         SELECT *
           FROM shipment_log_entry
          WHERE 1 = 1
            AND client_key_4 = 'EBS'
            AND log_entry_id = c_log_entry_id;

      CURSOR appointment_cur (
         c_log_entry_id                      log_entry.log_entry_id%TYPE)
      IS
         SELECT *
           FROM appointment_log_entry
          WHERE 1 = 1
            AND client_key_4 = 'EBS'
            AND log_entry_id = c_log_entry_id;

      --Added for 0.3
      --Start
      CURSOR appntmnt_log_cur (
         c_operation_id                      operation.operation_id%TYPE)
      IS
         SELECT client_key_1
              , client_key_2
              , client_key_3
              , client_key_4
           FROM appointment_logging
          WHERE 1 = 1
            AND client_key_4 = 'EBS'
            AND operation_id = c_operation_id;
      --End
      --Added for 0.3

      --Added for 0.4
      --Start
      CURSOR pod_log_cur (
         c_log_entry_id                      log_entry.log_entry_id%TYPE)
      IS
         SELECT *
           FROM pod_log_entry
          WHERE 1 = 1
            AND client_key_4 = 'EBS'
            AND log_entry_id = c_log_entry_id;
      --End
      --Added for 0.4
   --
   BEGIN
      -- Initialize variables
      l_log_entry_tab            := xxnuc_log_entry_tab_type ();
      l_log_entry_tab.DELETE ();
      l_shipment_entry_tab       := xxnuc_shipment_entry_tab_type ();
      l_shipment_entry_tab.DELETE ();
      l_appointment_entry_tab    := xxnuc_apptment_entry_tab_type ();
      l_appointment_entry_tab.DELETE ();
      l_pod_entry_tab            := xxnuc_pod_entry_tab_type ();
      l_pod_entry_tab.DELETE ();
      --
      l_log_cnt                  := 0;
      l_shipment_cnt             := 0;
      l_apptment_cnt             := 0;
      l_pod_log_cnt              := 0;

      -- Log entry cursor to fetch header records.
      FOR log_entry_rec IN log_entry_cur
      LOOP
         BEGIN
            l_log_cnt                  := l_log_cnt + 1;
            l_log_entry_tab.EXTEND (1);
            l_log_entry_tab (l_log_cnt) := xxnuc_log_entry_obj (log_entry_rec.log_entry_id
                                                               ,log_entry_rec.operation_id
                                                               ,log_entry_rec.operation
                                                               ,log_entry_rec.result_code
                                                               ,log_entry_rec.result_message
                                                               ,log_entry_rec.is_read
                                                               ,log_entry_rec.process_time);

            -- fetch line details for log entry based on rec_type
            IF log_entry_rec.rec_type = 'S'
            THEN
               FOR shipment_entry_rec IN shipment_cur (log_entry_rec.log_entry_id)
               LOOP
                  BEGIN
                     l_shipment_cnt             := l_shipment_cnt + 1;
                     l_shipment_entry_tab.EXTEND (1);
                     l_shipment_entry_tab (l_shipment_cnt) := xxnuc_shipment_entry_obj (shipment_entry_rec.log_entry_id
                                                                                       ,shipment_entry_rec.client_key_1
                                                                                       ,shipment_entry_rec.client_key_2
                                                                                       ,shipment_entry_rec.client_key_3
                                                                                       ,shipment_entry_rec.client_key_4
                                                                                       ,shipment_entry_rec.bid_total
                                                                                       ,shipment_entry_rec.bid_amount
                                                                                       ,shipment_entry_rec.bid_quantity
                                                                                       ,shipment_entry_rec.bid_type
                                                                                       ,shipment_entry_rec.carrier_name
                                                                                       ,shipment_entry_rec.carrier_scac_code
                                                                                       ,shipment_entry_rec.vendor_id
                                                                                       ,shipment_entry_rec.carrier_comments
                                                                                       ,shipment_entry_rec.carrier_truck_number
                                                                                       ,shipment_entry_rec.carrier_driver_number
                                                                                       ,shipment_entry_rec.carrier_contract_number
                                                                                       ,shipment_entry_rec.carrier_equipment_number
                                                                                       ,shipment_entry_rec.is_completed
                                                                                       ,shipment_entry_rec.is_cancelled
                                                                                       ,shipment_entry_rec.dsm_id
                                                                                       ,shipment_entry_rec.equipment_type
                                                                                       ,shipment_entry_rec.time_awarded
                                                                                       ,shipment_entry_rec.delivering_carrier_name
                                                                                       ,shipment_entry_rec.delivering_carrier_scac
                                                                                       ,shipment_entry_rec.delivering_carrier_vendor_id
                                                                                       ,shipment_entry_rec.cancelation_reason_code
                                                                                       ,shipment_entry_rec.brokered_to_carrier);
                  --
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        DBMS_OUTPUT.put_line ('Err freight_entry_cur: ' || SQLERRM);
                  END;
               END LOOP;
            ELSIF log_entry_rec.rec_type = 'A'
            THEN
               FOR apptment_entry_rec IN appointment_cur (log_entry_rec.log_entry_id)
               LOOP
                  BEGIN
                     l_apptment_cnt          := l_apptment_cnt + 1;
                     l_appointment_entry_tab.EXTEND (1);
                     l_appointment_entry_tab (l_apptment_cnt) :=
                        xxnuc_appointment_entry_obj (apptment_entry_rec.log_entry_id
                                                    ,apptment_entry_rec.client_key_1
                                                    ,apptment_entry_rec.client_key_2
                                                    ,apptment_entry_rec.client_key_3
                                                    ,apptment_entry_rec.client_key_4
                                                    ,apptment_entry_rec.stop_sequence_number
                                                    ,apptment_entry_rec.start_time
                                                    ,apptment_entry_rec.end_time
                                                    ,apptment_entry_rec.stop_duration
                                                    ,apptment_entry_rec.is_inbound
                                                    ,apptment_entry_rec.is_external
                                                    ,apptment_entry_rec.location_code
                                                    ,apptment_entry_rec.door_name
                                                    ,apptment_entry_rec.carrier_name
                                                    ,apptment_entry_rec.carrier_scac
                                                    ,apptment_entry_rec.vendor_id
                                                    ,apptment_entry_rec.customer_order_number
                                                    ,apptment_entry_rec.shipper_ref_number
                                                    ,apptment_entry_rec.po_number
                                                    ,apptment_entry_rec.bol_number
                                                    ,apptment_entry_rec.consignee_supplier
                                                    ,apptment_entry_rec.log_in_time
                                                    ,apptment_entry_rec.log_in_notes
                                                    ,apptment_entry_rec.log_out_time
                                                    ,apptment_entry_rec.log_out_notes
                                                    ,apptment_entry_rec.gate_in_time
                                                    ,apptment_entry_rec.gate_in_notes
                                                    ,apptment_entry_rec.gate_out_time
                                                    ,apptment_entry_rec.gate_out_notes
                                                    ,apptment_entry_rec.scheduling_user
                                                    ,apptment_entry_rec.scheduling_company
                                                    ,apptment_entry_rec.trailer_number
                                                    ,apptment_entry_rec.delivering_carrier_name
                                                    ,apptment_entry_rec.delivering_carrier_scac
                                                    ,apptment_entry_rec.delivering_carrier_vendor_id
                                                    ,apptment_entry_rec.brokered_to_carrier);
                  --
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        DBMS_OUTPUT.put_line ('Err freight_entry_cur: ' || SQLERRM);
                  END;
               END LOOP;
            --Added for 0.3
            --Start
            ELSIF log_entry_rec.rec_type = 'L' and log_entry_rec.operation <> '1500'
            THEN
               FOR appntmnt_log_rec IN appntmnt_log_cur (log_entry_rec.operation_id)
               LOOP
                  BEGIN
                     l_shipment_cnt          := l_shipment_cnt + 1;
                     l_shipment_entry_tab.EXTEND (1);
                     l_shipment_entry_tab (l_shipment_cnt) :=
                        xxnuc_shipment_entry_obj (log_entry_rec.log_entry_id
                                                ,appntmnt_log_rec.client_key_1
                                                ,appntmnt_log_rec.client_key_2
                                                ,appntmnt_log_rec.client_key_3
                                                ,appntmnt_log_rec.client_key_4
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL
                                                ,NULL);
                  --
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        DBMS_OUTPUT.put_line ('Err appntmnt_log_cur: ' || SQLERRM);
                  END;
               END LOOP;
            --End
            --Added for 0.3

            --Added for 0.4
            --Start
            ELSIF log_entry_rec.rec_type = 'L' and log_entry_rec.operation = '1500'
            THEN
               FOR pod_log_rec IN pod_log_cur (log_entry_rec.log_entry_id)
               LOOP
                     l_pod_log_cnt          := l_pod_log_cnt + 1;
                     l_pod_entry_tab.EXTEND (1);
                     l_pod_entry_tab (l_pod_log_cnt) :=
                        xxnuc_pod_entry_obj (pod_log_rec.log_entry_id
                                           , pod_log_rec.client_key_1
                                           , pod_log_rec.client_key_2
                                           , pod_log_rec.client_key_3
                                           , pod_log_rec.client_key_4
                                           , pod_log_rec.stop_sequence_number
                                           , pod_log_rec.signer
                                           , pod_log_rec.signing_date
                                           , pod_log_rec.entry_time
                                           , pod_log_rec.entry_user
                                           , pod_log_rec.notes
                                           , pod_log_rec.carrier_scac
                                           , pod_log_rec.vendor_id);
               END LOOP;
            --End
            --Added for 0.4
            END IF;

            BEGIN
               UPDATE log_entry
                  SET is_read = 1
                WHERE 1 = 1
                  AND log_entry_id = log_entry_rec.log_entry_id;
            EXCEPTION
               WHEN OTHERS
               THEN
                  DBMS_OUTPUT.put_line ('Err LOG_ENTRY Update: ' || SQLERRM);
            END;
         EXCEPTION
            WHEN OTHERS
            THEN
               DBMS_OUTPUT.put_line ('Err log_entry_cur: ' || SQLERRM);
         END;
      END LOOP;

      -- assign values to out variables
      p_log_entry                := l_log_entry_tab;
      p_shipment_log_entry       := l_shipment_entry_tab;
      p_appointment_log_entry    := l_appointment_entry_tab;
      p_pod_log_entry            := l_pod_entry_tab;
   --
   EXCEPTION
      WHEN OTHERS
      THEN
         DBMS_OUTPUT.put_line ('Err Extract Process: ' || SQLERRM);
   END omsi_shipment_apptment_extract;
--
END xxnuc_omsi_extracts_pkg;
/

SHOW ERROR
/
REM ====================================================
REM EOF: XXNUC_OMSI_EXTRACTS_PKG_PKB.sql
REM ====================================================
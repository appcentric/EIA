/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_comm_msgs_insert.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Insert records
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_comm_msgs_insert.sql 11339 2016-08-12 13:25:53Z akshat.paharia $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

SET DEFINE OFF;

TRUNCATE table xxnuc_comm_msgs;

Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-021','Order Inserted into Staging table Successfully for SCPOrderID  ! . Further EBS Concurrent Program wil import the Order in Base tables and update the Status accordingly.');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-020','! is Null');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-131','Orig_sys_document_ref is null');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-132','Customer is not valid !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-133','Price list id is not valid for orig_sys_document_ref  !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-134','Order type id is not valid  !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-137','Invoice to org id is not valid for orig_sys_document_ref  !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-138','Ship to og is not valid !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-139','Salesresp id is not valid for orig_sys_document_ref  !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-141','Transaction failed with ! Records');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-142','Transaction is in warning with ! Records');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-140','Transaction completed successfully with ! Records');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-143','Invoice creation failed with error for Request Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-144','Transaction failed with error ! for invoice number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-145','Transaction failed at ! for invoice number ! - line number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-022','Order insertion into Staging table Failed for Order ID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-013','! Completed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'TST-COD','Message for testing...');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-002','Transaction completed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-000','Transaction completed with ! success record(s) and ! failure record(s)');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-001','Transaction failed with ! success record(s) and ! failure record(s)');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-106','File received is not in required format');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-008','Transaction completed with ! success record(s), ! failure record(s) for Request ID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-100','Bank Account Number ! Not Found');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-019','Transaction completed with error for Request Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-012','! In Progress');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-101','Statement Number ! Already Present ');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-102','Currency Code Not Found For Bank Account Number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-103','Transaction Code is Null for Bank Account Number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-104','Party ID not found for Bank Account Number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-009','Validation Failed For Bank Account Number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-010','Successfully Imported Bank Account Number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-011','Import failed For Bank Account Number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-146','Transaction completed with error for Request Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-016','Transaction completed with warning for Request Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-017','Journal Import completed successfully with request id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-018','Transaction completed successfully with request id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-023','Order Imported Successfully for Order Number ! ');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-024','Order Imported Failed for Order ID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-400','! must be between ! and ! according to eligibility criterion defined on ! with !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-007','Concurrent Program completed successfully with ! Records');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-147','Transaction errored while enqueuing the label xml data to SOA');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-005','Transaction completed with Error for Batch Id ! with ! record(s)');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-003','Transaction in process...');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-004','Transaction completed with Success for  Batch Id ! with  ! record(s) ');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-006','Concurrent program completed with error for Request Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-014','File Move Initiated');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-015','File Move Completed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-025','Processing of label xml data to SOA completed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-026','Transaction Sussessfully Submitted to EBS with Request ID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-027','Received Error while Submitting Request in EBS');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-029','Transaction failed for PaymentId !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-028','Transaction Completed for Payment Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-030','Transaction completed with OTM Transmission Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values (null,'BMG-155','! is not valid resource for !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-158','Receiving Transaction processor program submitted with Request ID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-159','Did not find RCVTransaction Id for PO Id !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-148','Unable to retrieve information for PO');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-149','Receipt creation Failed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-150','Launch Receipts Failed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-151','Receipt creation for waybill number ! failed.');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-152','All Lots failed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-153','All LPNs failed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-154','Quality Results Validation Failed');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-156','ReceiveEDN timed out, no response from event delivery network for RequestID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-157','Transaction waiting for RequestID !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-160','LOT(s) ! failed processing');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-161','LPN(s) ! failed processing');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-162','No record found in EBS for batch !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-163','Transcation Source Code is not valid');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-164','Please check the Oracle EBS Log for more details');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-165','! is not valid Transcation Type for !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-167','RVCTP request not submitted');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-168','Shipment Num:! already exists');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-169','Lot Num:! already exists');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-170','Lot Num:! successfully created');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-171','Lpn Num:! successfully created for bundle num:!');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-172','Lpn Num:! already exists for bundle num:!');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-173','Transaction Completed in EBS for Shipment_Num:!');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-174','LPN Num(s) ! already exist(s)');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-175','Sample already exists for Lot_Num:!');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-176','Sample num:! created successfully.');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-177','No Data found for !.');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-178','Heat Number (Parent Lot Number in EBS) is null OR Numeric Size and Flat Size both are null. Please correct data for BolNumber: !,Order No: !, Order Line No: !,Delivery Detail Id: !.');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-179','Lot generation failed for liquid melt for heat number !');
Insert into XXNUC_COMM_MSGS (COMPONENT_ID,MESSAGE_CODE,MESSAGE_DESCRIPTION) values ('All','BMG-180','Transaction in process for file !');
COMMIT;

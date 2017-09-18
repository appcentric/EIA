PRE-INSTALLATION
===================

Step A. Run Refresh AR Transaction Summary Table
 
  This concurrent program needs to be assigned first to a request group. Follow the below steps to do assign to a request group
  1. Navigate System Administrator -> Security -> Responsibility -> Request
  2. Query for "All Reports" Application "Receivables"
  3. Assign Program : Refresh AR Transaction Summary Table to the Request Group

  4. Navigate to Receivables Manager NYS and Launch the Program from the SRS Menu
  5. Repeat the same for NSAR Operating Unit

==================
INSTALLATION
===================

Overview
**********
Step A. Create WF_BPEL_Q and enable subscriptions

sqlplus apps/apps
@XXNUC_DROP_WF_BPEL_Q.sql
@XXNUC_CREATE_WF_BPEL_Q.sql


Step B. Enable the Subscriptions

@XXNUC_ENABLE_EVENT_SUBSCRIPTION.sql

Step C. Create the required Packages and Views

sqlplus apps/apps
@XXNUC_IBY_PAYMENT_UTILS_PKS.sql
@XXNUC_PO_INT_WRAPPER_UTILS_PKS.sql

@XXNUC_CUST_BAL_SUMM_V.sql
@XXNUC_CUST_ORIG_SYS_REFS_V.sql
@XXNUC_CUST_SITE_BAL_SUMM_V.sql
@XXNUC_SITE_ORIG_SYS_REFS_V.sql
@XXNUC_SUP_ORIG_SYS_REFS_V.sql

@XXNUC_SUP_SITE_ORIG_SYS_REFS_V.sql
@XXNUC_IBY_PAYMENT_UTILS_PKB.sql
@XXNUC_PO_INT_WRAPPER_UTILS_PKB.sql


Step D. Install Concurrent Programs (AOL)

 XXNUC_AP_PAY_PUBLISH_SINGLE.ldt
 XXNUC_AP_VOID_CHECK_PUBLISH_LAST_RUNDATE.ldt
 XXNUC_AP_VOID_PAYMENT_PUBLISH.ldt

FNDLOAD apps/apps 0 Y UPLOAD $FND_TOP/patch/115/import/afcpprog.lct XXNUC_AP_PAY_PUBLISH_SINGLE.ldt 
FNDLOAD apps/apps 0 Y UPLOAD $FND_TOP/patch/115/import/afcpprog.lct XXNUC_AP_VOID_PAYMENT_PUBLISH.ldt 
FNDLOAD apps/apps 0 Y UPLOAD $FND_TOP/patch/115/import/afscprof.lct XXNUC_AP_VOID_CHECK_PUBLISH_LAST_RUNDATE.ldt

==================
POST-INSTALLATION
===================

Step A. Restart the Workflow Agent Listener Service in the E-Business Service

Step B. Assign the following Concurrent Programs to the Appropraite Request group as noteded below

Request Group: All Reports (Application: Payables)
1. Program Name: Nucor AP Void Payment Publish
2. Program Name: Nucor AP Payment Publish Single



Step C. Schedule the "Nucor AP Void Payment Publish" to run every day. (Note: This program just picks all the checks that are void on the previous day and publishes to the queue
to communicate the information to AS400 and Legacy systems


Step D.Set the Profile option for user SOAUSER to "Online": PO:Workflow Processing Mode





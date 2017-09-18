create or replace
PACKAGE XXNUC_IBY_PAYMENT_UTILS_PKG AUTHID CURRENT_USER as
 



  -- This procedure raises a Oracle standard Business Event based on the checks that are void as of that date that is passed
  -- This procedure will attached to concurrent program and the concurrent program will itself will be scheduled
  -- oracle.apps.ap.payment
  
 PROCEDURE publish_void_payment(x_retmsg OUT VARCHAR2
                              ,x_retcode OUT VARCHAR2
			      ,p_run_date IN VARCHAR2 DEFAULT NULL
			      );
-- SUBSCRIPTION Rule procedure to Business event oracle.apps.iby.fd.OutboundPaymentInstruction.PaymentsFormatted
-- Business event subscrption will have Custom Workflow (Receive Event - Start Activity)
-- and also the below PLSQL rule function
-- This subscription rule will ensure that the workflow is triggered only on certain conditions

  FUNCTION subcribe_payment_formatted  (p_subscription in RAW,
                         p_event        in out NOCOPY WF_EVENT_T) return varchar2;


PROCEDURE publish_check_info  (x_retmsg OUT VARCHAR2
                                ,x_retcode OUT VARCHAR2
                                , p_org_id    in  NUMBER
			        ,p_check_id  in  NUMBER);
END XXNUC_IBY_PAYMENT_UTILS_PKG;
/
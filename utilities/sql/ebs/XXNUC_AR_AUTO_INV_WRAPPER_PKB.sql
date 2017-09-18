CREATE OR REPLACE
PACKAGE BODY XXNUC_AR_AUTO_INV_WRAPPER_PK
AS

 PROCEDURE submit_import(return_message                 OUT VARCHAR2
			,return_code                    OUT VARCHAR2
                        ,numberofinstances              IN VARCHAR2 DEFAULT NULL
                        ,organization                   IN VARCHAR2 DEFAULT NULL
                        ,batchsourceid                  IN VARCHAR2 DEFAULT NULL
                        ,batchsourcename                IN VARCHAR2 DEFAULT NULL
                        ,defaultdate                    IN VARCHAR2 DEFAULT NULL
                        ,transactionflexfield           IN VARCHAR2 DEFAULT NULL
                        ,transactiontype                IN VARCHAR2 DEFAULT NULL
                        ,lowbilltocustomernumber        IN VARCHAR2 DEFAULT NULL
                        ,highbilltocustomernumber       IN VARCHAR2 DEFAULT NULL
                        ,lowbilltocustomername          IN VARCHAR2 DEFAULT NULL
                        ,highbilltocustomername         IN VARCHAR2 DEFAULT NULL
                        ,lowgldate                      IN VARCHAR2 DEFAULT NULL
                        ,highgldate                     IN VARCHAR2 DEFAULT NULL
                        ,lowshipdate                    IN VARCHAR2 DEFAULT NULL
                        ,highshipdate                   IN VARCHAR2 DEFAULT NULL
                        ,lowtransactionnumber           IN VARCHAR2 DEFAULT NULL
                        ,hightransactionnumber          IN VARCHAR2 DEFAULT NULL
                        ,lowsalesordernumber            IN VARCHAR2 DEFAULT NULL
                        ,highsalesordernumber           IN VARCHAR2 DEFAULT NULL
                        ,lowinvoicedate                 IN VARCHAR2 DEFAULT NULL
                        ,highinvoicedate                IN VARCHAR2 DEFAULT NULL
                        ,lowshiptocustomernumber        IN VARCHAR2 DEFAULT NULL
                        ,highshiptocustomernumber       IN VARCHAR2 DEFAULT NULL
                        ,lowshiptocustomername          IN VARCHAR2 DEFAULT NULL
                        ,highshiptocustomername         IN VARCHAR2 DEFAULT NULL
                        ,baseduedateontrxdate           IN VARCHAR2 DEFAULT NULL
                        ,duedateadjustmentdays          IN VARCHAR2 DEFAULT NULL
                        ,ordid                          IN VARCHAR2 DEFAULT NULL
  )
IS
l_wait_interval    NUMBER         DEFAULT 10;
l_max_wait         NUMBER         DEFAULT 1000;
l_request_phase    VARCHAR2 (100);
l_request_status   VARCHAR2 (100);
l_dev_phase        VARCHAR2 (100);
l_dev_status       VARCHAR2 (100);
l_req_mesg         VARCHAR2 (100);
l_req_status       BOOLEAN;
request_id         NUMBER;
application        VARCHAR2(80) := 'AR';
program            VARCHAR2(80) := 'RAXMTR';
description        VARCHAR2(80) := '';
start_time         VARCHAR2(80);
sub_request        INTEGER ;
BEGIN
      FND_FILE.put_line(FND_FILE.log, 'Launching Auto Invoice Program ');
      XXNUC_FND_REQUEST_WRAPPER_PK.submit_request(request_id
                                                 ,return_code
                                                 ,return_message
                                                 ,application
                                                 ,program
                                                 ,description
                                                 ,start_time
                                                 ,sub_request
                                                 ,numberofinstances
                                                 ,organization
                                                 ,batchsourceid
                                                 ,batchsourcename
                                                 ,defaultdate
                                                 ,transactionflexfield
                                                 ,transactiontype
                                                 ,lowbilltocustomernumber
                                                 ,highbilltocustomernumber
                                                 ,lowbilltocustomername
                                                 ,highbilltocustomername
                                                 ,lowgldate
                                                 ,highgldate
                                                 ,lowshipdate
                                                 ,highshipdate
                                                 ,lowtransactionnumber
                                                 ,hightransactionnumber
                                                 ,lowsalesordernumber
                                                 ,highsalesordernumber
                                                 ,lowinvoicedate
                                                 ,highinvoicedate
                                                 ,lowshiptocustomernumber
                                                 ,highshiptocustomernumber
                                                 ,lowshiptocustomername
                                                 ,highshiptocustomername
                                                 ,baseduedateontrxdate
                                                 ,duedateadjustmentdays);

   COMMIT;

   FND_FILE.put_line(FND_FILE.log, 'Auto Invoice Request ID '||request_id);

   IF (NOT request_id = 0)
   THEN
    l_req_status := fnd_concurrent.wait_for_request (request_id,
                                                     l_wait_interval,
                                                     l_max_wait,
                                                     l_request_phase,
                                                     l_request_status,
                                                     l_dev_phase,
                                                     l_dev_status,
                                                     l_req_mesg );

        IF UPPER (l_request_phase) = 'COMPLETED'
            THEN
                IF UPPER (l_request_status) IN ('ERROR','WARNING')
                THEN
                    return_code  := 'E';
                    return_message := 'Auto Invoice Master Program errored with the following message - '||l_req_mesg||' Request Id '||request_id;
                    RETURN;
                END IF;
        END IF;

        FND_FILE.put_line(FND_FILE.log, 'XXNUC_AR_POST_INVOICE_PKG.Calling the Populate_attributes OrgId='||fnd_global.org_id);

        XXNUC_AR_POST_INVOICE_PKG.populate_attributes(return_message,return_code);
     ELSE
          return_code := 'E';
          FND_FILE.put_line(FND_FILE.log, 'Failed to Launch Autoinvoice Master Program. Return Code= '||return_code||' Return message = '||return_message);
     END IF;
 FND_FILE.put_line(FND_FILE.log, ' Program Complete');

EXCEPTION
 WHEN OTHERS THEN
  return_message := 'Unexpected Error encountered while executing the procedure XXNUC_AR_AUTO_INVOICE_WRAPPER_PK.submit_import. Error - '||SQLERRM;
  return_code := 'E';
 FND_FILE.put_line(FND_FILE.log, return_message);
END submit_import;
END XXNUC_AR_AUTO_INV_WRAPPER_PK;
/
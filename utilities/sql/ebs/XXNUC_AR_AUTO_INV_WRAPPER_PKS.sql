CREATE OR REPLACE PACKAGE  XXNUC_AR_AUTO_INV_WRAPPER_PK 
AUTHID CURRENT_USER
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
  );
END XXNUC_AR_AUTO_INV_WRAPPER_PK;
/
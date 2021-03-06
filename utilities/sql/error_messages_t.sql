CREATE TABLE ERROR_MESSAGES (ERROR_ID      NUMBER
                            ,NOTIFIER_ROLE VARCHAR2(200)
			    ,NOTIFIED      VARCHAR2(1)
			    ,TIMESTAMP     TIMESTAMP
			    ,FAULT_XML      CLOB
                            );

CREATE SEQUENCE ERROR_MESSAGES_S START WITH 1 CACHE 100 INCREMENT BY 1;

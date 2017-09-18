CREATE TABLE XXNUC_SOA_DEPLOY_REQUESTS
  (
    "REQUEST_ID"          NUMBER,
    "REQUEST_DATE"        DATE,  
    "REL_ARTIFACT_ID"     NUMBER,
    "RELEASE_ID"          NUMBER,
    "ENV_ID"              NUMBER,
    "STATUS"              VARCHAR2(100),
    "CREATION_TSTAMP"     TIMESTAMP(6),
    "UPDATE_TSTAMP"       TIMESTAMP(6),
    "CREATED_BY"          VARCHAR2(100),
    "LAST_UPDATED_BY"     VARCHAR2(100),
    "REL_ARTIFACT_TYPE"   VARCHAR2(30),   
    "SVN_PATH"            VARCHAR2(240),
    "ARTIFACT_NAME"       VARCHAR2(240),
    "SVN_VERSION"         VARCHAR2(512),
        "PARTITION"       VARCHAR2(100),
        "DEPLOYER_URI"    VARCHAR2(240),
        "MESSAGE"         VARCHAR2(240)
  );
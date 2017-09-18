CREATE TABLE l2_gmd_upd_tstrslt_hdr_stg
(
	header_id           NUMBER,
    sample_id           NUMBER,
    sample_no           VARCHAR2 (80),
    orgn_id             NUMBER,
    lab_orgn_id         NUMBER,
    division            VARCHAR2 (10),
    record_source       VARCHAR2 (5),
    batch_id            NUMBER,
    batch_no            VARCHAR2 (32),
	batchstep_id        NUMBER,
    batchstep_no        NUMBER,
    item_id             NUMBER,
    item_no             VARCHAR2 (80),
    lot_no              VARCHAR2 (32),
    attribute_category  VARCHAR2 (30),
    attribute1          VARCHAR2 (240),
    attribute2          VARCHAR2 (240),
    attribute3          VARCHAR2 (240),
    attribute4          VARCHAR2 (240),
    attribute5          VARCHAR2 (240),
    attribute6          VARCHAR2 (240),
    attribute7          VARCHAR2 (240),
    attribute8          VARCHAR2 (240),
    attribute9          VARCHAR2 (240),
    attribute10         VARCHAR2 (240),
	is_read        VARCHAR2  (10) ,
    created_date       DATE,
    created_by          NUMBER
);




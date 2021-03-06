CREATE TABLE l2_gmd_upd_tstrslt_lns_stg
(
    header_id           NUMBER,
	line_id             NUMBER,
    sample_id           NUMBER,
	seqnum              NUMBER,
    test_id             NUMBER,
    test_code           VARCHAR2 (80),
	result_id           NUMBER,
    result_value        VARCHAR2 (80),
    result_date         DATE,
    tester_id           NUMBER,
    tester              VARCHAR2 (40),
	action_code         VARCHAR2 (80),
	evaluation_ind      VARCHAR2 (80),
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
    created_date       DATE
);

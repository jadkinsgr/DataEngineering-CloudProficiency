CREATE TABLE sourceSystem.clinical.lab (
    patientid BIGINT,
    encounterid BIGINT,
    labresultid STRING,
    lab_test_name STRING,
    result_value BIGINT,
    numeric_value BIGINT,
    ref_range STRING,
    ordered_date DATE,
    collected_date DATE,
    result_date DATE,
    result_status STRING
)
USING delta
COMMENT 'Created by the file upload UI'
TBLPROPERTIES (
    'delta.checkpoint.writeStatsAsJson' = 'false',
    'delta.checkpoint.writeStatsAsStruct' = 'true',
    'delta.minReaderVersion' = '1',
    'delta.minWriterVersion' = '2'
);
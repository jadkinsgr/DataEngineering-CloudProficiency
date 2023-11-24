CREATE TABLE sourceSystem.clinical.patient (
    patientid BIGINT,
    Sex STRING,
    ethnicity STRING,
    Race STRING,
    Age BIGINT,
    primary_care_provider BIGINT
)
USING delta
COMMENT 'Created by the file upload UI'
TBLPROPERTIES (
    'delta.checkpoint.writeStatsAsJson' = 'false',
    'delta.checkpoint.writeStatsAsStruct' = 'true',
    'delta.minReaderVersion' = '1',
    'delta.minWriterVersion' = '2'
);

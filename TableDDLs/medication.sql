CREATE TABLE sourceSystem.clinical.medications (
    encounterid BIGINT,
    patientid BIGINT,
    medicationorderid BIGINT,
    order_name STRING,
    medication_name STRING,
    medication_simple_generic_name STRING,
    order_date DATE,
    start_date DATE,
    end_date DATE,
    discontinued_date DATE,
    sig STRING,
    frequency STRING,
    route STRING,
    quantity_unit STRING,
    dose_unit STRING,
    quantity STRING,
    minimum_dose BIGINT,
    maximum_dose BIGINT,
    number_of_doses STRING,
    cpoe_flg STRING,
    ndc STRING,
    rxnorm BIGINT
)
USING delta
COMMENT 'Created by the file upload UI'
TBLPROPERTIES (
    'delta.checkpoint.writeStatsAsJson' = 'false',
    'delta.checkpoint.writeStatsAsStruct' = 'true',
    'delta.minReaderVersion' = '1',
    'delta.minWriterVersion' = '2'
);
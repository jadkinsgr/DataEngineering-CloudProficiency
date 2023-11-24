CREATE TABLE sourceSystem.clinical.encounter (
    patientid BIGINT COMMENT 'Unique identifier for each patient in the clinical database.',
    encounterid BIGINT COMMENT 'Unique identifier for each encounter, representing a specific interaction between a patient and healthcare providers.',
    encounter_date TIMESTAMP COMMENT 'The date and time when the encounter took place.',
    admit_date TIMESTAMP COMMENT 'The date and time when the patient was admitted to the hospital for the encounter.',
    discharge_date TIMESTAMP COMMENT 'The date and time when the patient was discharged from the hospital after the encounter.',
    reporting_year BIGINT COMMENT 'The year in which the encounter was reported.',
    discharge_department_name STRING COMMENT 'The name of the department to which the patient was discharged after the encounter.',
    discharge_attending_npi BIGINT COMMENT 'Unique identifier for the attending physician involved in the discharge process.',
    discharge_attending_specialty STRING COMMENT 'The specialty of the attending physician involved in the discharge process.',
    billing_provider_npi BIGINT COMMENT 'Unique identifier for the billing provider involved in the discharge process.',
    attending_npi BIGINT COMMENT 'Unique identifier for the attending physician involved in the encounter.',
    drg BIGINT COMMENT 'Unique identifier for a specific diagnosis related group (DRG) associated with the encounter.',
    drg_type STRING COMMENT 'The type of DRG associated with the encounter (e.g., general, cardiology, oncology).',
    mdc STRING COMMENT 'Unique identifier for a specific medical department involved in the encounter.',
    admit_diagnosis STRING,
    financial_class STRING,
    encounter_type STRING,
    admission_source STRING,
    point_of_origin STRING,
    admission_type STRING,
    discharge_disposition STRING,
    length_of_stay BIGINT
)
USING delta
COMMENT 'The \'encounter\' table records clinical information related to patient encounters in a healthcare setting. It includes details such as the date of the encounter, the department where the patient was discharged, and the specialty attending. This data can be useful for tracking patient care over time, analyzing the efficiency of different departments, and understanding trends in patient admissions and discharges. It also contains financial data such as the billing provider and financial class, which can be used to study cost-effectiveness and revenue generation within the healthcare system.'
TBLPROPERTIES (
    'delta.checkpoint.writeStatsAsJson' = 'false',
    'delta.checkpoint.writeStatsAsStruct' = 'true',
    'delta.minReaderVersion' = '1',
    'delta.minWriterVersion' = '2'
);

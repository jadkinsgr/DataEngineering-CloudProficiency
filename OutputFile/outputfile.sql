Select 
pat.patientid as patient_id
,pat.Sex
,pat.Age
,pat.primary_care_provider
,coalesce(med.medication_simple_generic_name, med.medication_name) medication_simple_generic_name -- Some medications do not have a simple generic name -- this is better then null (in my opinion)
,meddose.avg_minimum_dose
,med.dose_unit
,enc.admit_diagnosis
FROM encounter enc --51 records of encounters 
LEFT JOIN  clinical.reporting.patient pat on enc.patientid = pat.patientid -- 51 records - patients such as 111013238188 has as many as 14 encounters
LEFT JOIN  clinical.reporting.medications med on med.encounterid = enc.encounterid -- 264 records - 51 records have a combined 264 medications
LEFT JOIN  clinical.reporting.minimummedicationdose meddose on meddose.Medication_Name = coalesce(med.medication_simple_generic_name, med.medication_name) -- Control - NDC is missing for some so is generic name - this is the bext best match rate


--Where pat.patientid = 111013208632 -- 2 encounters
--where enc.encounterid = 51573853 -- 15 medications per encounter 51573853
--order by enc.encounterid asc
order by pat.patientid asc

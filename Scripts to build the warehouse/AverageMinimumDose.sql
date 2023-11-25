CREATE OR REPLACE Table MinimumMedicationDose AS
Select
coalesce(medication_simple_generic_name, medication_name) as Medication_Name
, AVG(minimum_dose) as avg_minimum_dose -- medication_name is the only column without nulls to join on when creating the final output file. rxnorm, generic name, ndc all have nulls -- NDC would worry me a bit 
FROM clinical.reporting.medications
Where minimum_dose is not null
Group by coalesce(medication_simple_generic_name, medication_name)

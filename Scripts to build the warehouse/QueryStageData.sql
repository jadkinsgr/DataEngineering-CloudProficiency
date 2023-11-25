CREATE OR REPLACE Table Encounter AS
Select * from (Select Distinct * From clinical.source.encounter);

CREATE OR REPLACE Table Lab AS
Select * from (Select Distinct * From clinical.source.lab);

CREATE OR REPLACE Table Medications AS
Select * from (Select Distinct * From clinical.source.medications);

CREATE OR REPLACE Table Patient AS
Select * from (Select Distinct * From clinical.source.patient);


CREATE OR REPLACE Table Encounter AS
Select * from (Select Distinct * From clinical.stage.encounter);

CREATE OR REPLACE Table Lab AS
Select * from (Select Distinct * From clinical.stage.lab);

CREATE OR REPLACE Table Medications AS
Select * from (Select Distinct * From clinical.stage.medications);

CREATE OR REPLACE Table Patient AS
Select * from (Select Distinct * From clinical.stage.patient);


--quality scan Encounter--
Select count(*) from clinical.source.encounter; -- 51 rec
Select count(*) from (Select Distinct * From clinical.source.encounter) ; -- 51 rec

--quality scan lab--
Select count(*) from clinical.source.lab;-- 9 rec
Select Distinct count(*) from (Select Distinct * From clinical.source.lab);-- 9 rec

--quality scan medication-- (Duplication problem)
Select count(*) from clinical.source.medications;-- 438
Select Distinct count(*) from (Select Distinct * From clinical.source.medications);-- 219 (every row is duplicated twice)

--quality scan patient--
Select count(*) from clinical.source.patient;-- 7
Select Distinct count(*) from (Select Distinct * From clinical.source.patient);-- 7


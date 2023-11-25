
-- Query 1
SELECT * FROM clinical.source.medications; -- 219, unique values, 438 duplicates

-- Query 2
SELECT Distinct * FROM clinical.source.medications; -- 219, unique values

--for every one order id there are two duplicate rows -- Adkins validated in source data
Select medicationorderID, count(*) countval 
FROM clinical.source.medications med
group by med.medicationorderid
order by countval desc;

--for every one order id there are two duplicate rows -- Illustration
Select *
FROM clinical.source.medications med
Where medicationorderid = 1608949093

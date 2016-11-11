--CASE #6
CREATE PROCEDURE cancelled_insurance
@patient_id DECIMAL
AS
BEGIN
UPDATE Patient
SET Patient.insurance_plan_ID = NULL, patient.fees_ID= 1-- change fee plan to the one with No Insurance
WHERE patient.patient_id=@patient_id
END;


EXEC cancelled_insurance 7

--use the following to view the updated Patient Table
SELECT * FROM Patient
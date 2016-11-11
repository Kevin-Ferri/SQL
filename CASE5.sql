--CASE #5
CREATE PROCEDURE add_to_balance
@patient_id DECIMAL
AS
BEGIN
UPDATE Patient
SET patient.balance=((SELECT patient.balance FROM Patient WHERE patient.patient_id = @patient_id) +30)
WHERE patient.patient_id=@patient_id
END;
EXEC add_to_balance 5


--to view the updated Patient Table, use the following
SELECT * FROM Patient
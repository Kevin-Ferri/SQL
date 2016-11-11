--CASE #3

CREATE PROCEDURE Add_to_waiting_list
 @patient_id DECIMAL,
 @physician_id DECIMAL
 AS
 BEGIN
INSERT INTO waiting_list (Waiting_list_id, waiting_list.Patient_id, waiting_list.Physician_id)
VALUES (NEXT VALUE FOR Waiting_list_seq, @patient_id, @physician_id)
SELECT Waiting_list.Patient_id, Waiting_list.Physician_id,
	 patient.patient_first_name, Patient.patient_last_name, 
	Physician.Physician_first_name, Physician.Physician_last_name
FROM Waiting_list
JOIN Patient ON Waiting_list.Patient_id = Patient.patient_id
JOIN Physician ON Waiting_list.Physician_id = Physician.physician_id
WHERE Physician.physician_id=@physician_id
ORDER BY Waiting_list.physician_id, Waiting_list_id desc
END;
--run each of these executions to fill the list
EXEC Add_to_waiting_list 10,2
EXEC Add_to_waiting_list 5,1
EXEC Add_to_waiting_list 6,2
EXEC Add_to_waiting_list 3,2
EXEC Add_to_waiting_list 8,1
EXEC Add_to_waiting_list 10,1
--run a final one below with the physician_id as 2. this newest patient is on top so is the next one for physican_id 2.
EXEC Add_to_waiting_list 7,2
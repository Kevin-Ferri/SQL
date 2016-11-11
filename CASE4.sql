--CASE #4
--for patient_id 3
SELECT Physician.physician_id, Physician.Physician_first_name, Physician.Physician_last_name
FROM Physician 
WHERE physician.physician_id NOT IN 
			((SELECT patient_history.physician_id 
				FROM Patient_history WHERE Patient_history.patient_id =3))
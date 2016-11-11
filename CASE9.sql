--CASE #9
SELECT patient_history.patient_id, patient.patient_last_name, patient.patient_first_name, 
	patient_history.physician_id, Physician.Physician_last_name, Physician.Physician_first_name,
	COUNT (Patient_history.physician_id) AS "Number of Visits"
FROM Patient_history
JOIN Patient ON Patient.patient_id=patient_history.patient_id
JOIN Physician ON Physician.physician_id=patient_history.physician_id
GROUP BY patient_history.patient_id, patient_history.physician_id,
patient.patient_last_name, patient.patient_first_name,
Physician.Physician_last_name, Physician.Physician_first_name
HAVING (SELECT (COUNT (patient_history.patient_id))) >1
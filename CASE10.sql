--CASE #10

SELECT 	patient_history.physician_id, Physician.Physician_last_name, Physician.Physician_first_name,
	COUNT(DISTINCT patient_history.patient_id) AS "Number of Unique Visits" 
FROM Patient_history
JOIN Physician ON Physician.physician_id=patient_history.physician_id
GROUP BY patient_history.physician_id, Physician.Physician_last_name, Physician.Physician_first_name
ORDER BY [Number of Unique Visits] DESC 
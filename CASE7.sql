--CASE #7

--limit physician_day to only 3 of the same day in appointment day for one physician_id
SELECT Physician.physician_id, Physician.Physician_last_name, Physician.Physician_first_name
FROM Physician
JOIN Appointment ON appointment.physician_id=Physician.physician_id
WHERE  appointment.physician_id IN (
	SELECT Appointment.physician_id
	FROM Appointment
	GROUP BY Appointment.physician_id, Appointment.Year_month_day
	HAVING COUNT (Appointment.Year_month_day)>2 
		AND (Appointment.Year_month_day=(convert(date,(getdate()+1)))) )
	AND
	appointment.physician_id IN (SELECT Appointment.physician_id
	FROM Appointment
	GROUP BY Appointment.physician_id, Appointment.Year_month_day
	HAVING COUNT (Appointment.Year_month_day)>2 
		AND (Appointment.Year_month_day=(convert(date,(getdate()+2)))))
GROUP BY Physician.physician_id, Physician.Physician_last_name, Physician.Physician_first_name
--CASE #8
SELECT TOP 1 insurance_plan.Insurance_plan_name, Copayment, COUNT (patient.Insurance_plan_id) AS "Number of Enrollees"
FROM Insurance_Plan
JOIN Patient ON Insurance_Plan.insurance_plan_id = Patient.insurance_plan_ID
GROUP BY insurance_plan.Insurance_plan_name, Insurance_Plan.Copayment
ORDER BY (COUNT (patient.Insurance_plan_id)) DESC
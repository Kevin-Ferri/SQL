 --CASE #2
SELECT Patient.patient_first_name, Patient.patient_last_name, Insurance_Plan.Insurance_plan_name
 FROM Patient
 JOIN Insurance_Plan ON Patient.insurance_plan_ID=Insurance_Plan.insurance_plan_id
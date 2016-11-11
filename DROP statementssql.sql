DROP TABLE Patient_history
DROP TABLE Waiting_list
DROP TABLE Appointment
DROP TABLE Patient
DROP TABLE Patient_contact
DROP TABLE Insurance_Plan
DROP TABLE Fees
DROP TABLE Physician
DROP TABLE Physician_type
DROP TABLE Room
DROP TABLE Building

DROP sequence appointment_id_seq
DROP sequence building_seq
DROP sequence insurance_seq
DROP sequence Patient_contact_seq
DROP sequence Patient_history_seq
DROP sequence patient_seq
DROP sequence physician_seq
DROP sequence room_id_seq
DROP sequence room_number_seq
DROP sequence waiting_list_seq

DROP PROCEDURE add_to_waiting_list
DROP PROCEDURE cancelled_insurance
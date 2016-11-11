
INSERT INTO Physician_type (physician_type_id, name_type)
VALUES (1, 'Internal Medicine'), (2, 'Cardiology'), (3, 'Neonatology'), (4, 'Neurology'), (5, 'Nuclear medicine');

CREATE SEQUENCE building_seq MINVALUE 1;

INSERT INTO building(building_id, building_name)
VALUES (NEXT VALUE FOR building_seq, 'Agnes'), (NEXT VALUE FOR building_seq, 'Palladius'), (NEXT VALUE FOR building_seq, 'Chrysler'), 
(NEXT VALUE FOR building_seq, 'Empire'), (NEXT VALUE FOR building_seq, 'Shanghai'), (NEXT VALUE FOR building_seq, 'Apthorp');

CREATE SEQUENCE physician_seq MINVALUE 1;

INSERT INTO Physician(physician_id, physician_first_name, physician_last_name, building_id, physician_type_id)
VALUES (NEXT VALUE FOR physician_seq, 'Wade', 'Wilson',1, 1), (NEXT VALUE FOR physician_seq, 'Jack', 'Sparrow',2,2), (NEXT VALUE FOR physician_seq, 'Tony', 'Stark',3,3), 
(NEXT VALUE FOR physician_seq, 'Hal', 'Jordan',1,1), (NEXT VALUE FOR physician_seq, 'Steven', 'Rogers',1,1), (NEXT VALUE FOR physician_seq, 'Charles', 'Xavier',2,2),
(NEXT VALUE FOR physician_seq, 'Jack', 'Harkness',2,2), (NEXT VALUE FOR physician_seq, 'Monteray', 'Jack',5,5), (NEXT VALUE FOR physician_seq, 'Jean', 'Grey',5,5),
(NEXT VALUE FOR physician_seq, 'Drake', 'Mallard',3,3), (NEXT VALUE FOR physician_seq, 'Oliver', 'Queen',3,3), (NEXT VALUE FOR physician_seq, 'Kitty', 'Pride',1,1),
(NEXT VALUE FOR physician_seq, 'River', 'Song',4,4), (NEXT VALUE FOR physician_seq, 'Barry', 'Allen',6,3), (NEXT VALUE FOR physician_seq, 'Felicia', 'Hardy',1,1);

INSERT INTO Fees(fees_id, rates)
VALUES (1, 2000), (2, 1500), (3, 1000), (4,500)

CREATE SEQUENCE insurance_seq MINVALUE 1;

INSERT INTO Insurance_plan(insurance_plan_id, insurance_company, insurance_plan_name, fees_id, copayment)
VALUES (NEXT VALUE FOR insurance_seq, 'Shield', 'Red', 3, 50), (NEXT VALUE FOR insurance_seq, 'Higher for Hire', 'Orange',2, 30), (NEXT VALUE FOR insurance_seq, 'Wayne Enterprises', 'Brown',2, 30), 
(NEXT VALUE FOR insurance_seq, 'Daily Bugle', 'Blue',3, 50), (NEXT VALUE FOR insurance_seq, 'Drekmore', 'Purple',2, 30),
(NEXT VALUE FOR insurance_seq, 'Weapon X', 'Green',4, 100), (NEXT VALUE FOR insurance_seq, 'Acme', 'Gold',4, 100),
(NEXT VALUE FOR insurance_seq, 'Khan Industries', 'Yellow',2, 30), (NEXT VALUE FOR insurance_seq, 'Pizza Planet', 'Black',3, 50);

CREATE SEQUENCE Patient_contact_seq MINVALUE 1;

INSERT INTO Patient_contact (patient_contact_id, patient_phone, patient_email, street, patient_city, patient_state, patient_zip)
VALUES (NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'ny', 'state', 10805), 
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805),
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805), 
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805),
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805), 
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805),
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805), 
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805),
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805), 
(NEXT VALUE FOR Patient_contact_seq, 555555555, 'email', 'street', 'city', 'ny', 10805);

CREATE SEQUENCE patient_seq MINVALUE 1;

INSERT INTO Patient(patient_id, patient_first_name, patient_last_name, insurance_plan_id, fees_id, patient_contact_id)
VALUES (NEXT VALUE FOR patient_seq, 'Ava', 'Island', null, 1, 1), (NEXT VALUE FOR patient_seq, 'Mason', 'Cheng', 1, 3, 2), 
 (NEXT VALUE FOR patient_seq, 'Jillian', 'Johnson', null, 1, 3), (NEXT VALUE FOR patient_seq, 'Jordan', 'Anderson', 1, 3, 4),
(NEXT VALUE FOR patient_seq, 'Liam', 'Brown', 1, 3, 5), (NEXT VALUE FOR patient_seq, 'Michael', 'Miller', 2, 2, 6),
(NEXT VALUE FOR patient_seq, 'Emma', 'Davis', 4, 3, 7), (NEXT VALUE FOR patient_seq, 'Isabella', 'Garcia', 7, 4, 8), 
(NEXT VALUE FOR patient_seq, 'Clara', 'Oswald', 5, 2, 9), (NEXT VALUE FOR patient_seq, 'Rose', 'Tyler', null, 1, 10);

CREATE SEQUENCE Room_id_seq MINVALUE 1;
CREATE SEQUENCE Room_number_seq MINVALUE 1;

INSERT INTO Room(room_id, room_number, building_id)
VALUES (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 1), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 2),
 (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 1), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 3),
 (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 2), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 4),
 (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 4), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 5),
 (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 3), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 2),
(NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 5), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 1),
(NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 6), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 2),
(NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 3), (NEXT VALUE FOR Room_id_seq, NEXT VALUE FOR Room_number_seq, 6);


--add 30 to the next value to keep consistency for the patient_history appointment_id
CREATE SEQUENCE Appointment_id_seq MINVALUE 1;
INSERT INTO appointment (appointment_id, physician_id, room_id, Year_month_day, appointment_time, patient_id)
VALUES (NEXT VALUE FOR Appointment_id_seq +30, 1, 1, '2016-10-15', '14:00:00', 1), (NEXT VALUE FOR Appointment_id_seq+30, 2, 2, '2016-10-15', '11:00:00', 3), (NEXT VALUE FOR Appointment_id_seq+30, 3, 4, '2016-10-16', '9:00:00', 7),
 (NEXT VALUE FOR Appointment_id_seq+30, 1, 12, '2016-10-15', '14:00:00', 6),  (NEXT VALUE FOR Appointment_id_seq+30, 6, 5, '2016-10-15', '11:00:00', 10),  (NEXT VALUE FOR Appointment_id_seq+30, 8, 11, '2016-10-16', '9:00:00', 8),
  (NEXT VALUE FOR Appointment_id_seq+30, 4, 4, '2016-10-15', '14:00:00', 2),  (NEXT VALUE FOR Appointment_id_seq+30, 2, 10, '2016-10-15', '11:00:00', 4),  (NEXT VALUE FOR Appointment_id_seq+30, 5, 12, '2016-10-15', '9:00:00', 9),
   (NEXT VALUE FOR Appointment_id_seq+30, 7, 2, '2016-10-16', '14:00:00', 3),  (NEXT VALUE FOR Appointment_id_seq+30, 2, 14, '2016-10-15', '11:00:00', 5),  (NEXT VALUE FOR Appointment_id_seq+30, 6,10, '2016-10-15', '9:00:00', 8),
 (NEXT VALUE FOR Appointment_id_seq+30, 5, 3, '2016-10-16', '14:00:00', 1),  (NEXT VALUE FOR Appointment_id_seq+30, 8, 8, '2016-10-16', '11:00:00', 2),  (NEXT VALUE FOR Appointment_id_seq+30, 7, 2, '2016-10-15', '9:00:00', 7),
 (NEXT VALUE FOR Appointment_id_seq+30, 2, 2, '2016-10-16', '11:00:00', 3), (NEXT VALUE FOR Appointment_id_seq+30, 2, 10, '2016-10-16', '11:00:00', 4),(NEXT VALUE FOR Appointment_id_seq+30, 2, 14, '2016-10-16', '11:00:00', 5);

 --see case #3 to build the data for the Table for Waiting_list

CREATE SEQUENCE Patient_history_seq MINVALUE 1;

--the following is for CASE #4. Use the following stored procedure to add appointments with only patient and physician information to be used for Patient history
CREATE PROCEDURE Use_for_patient_history
@patient_id DECIMAL,
@physician_id DECIMAL,
@appointment_id DECIMAL
AS
BEGIN
INSERT INTO appointment (Patient_id,Physician_id,appointment_id, Year_month_day, appointment_time)
VALUES (@patient_id, @physician_id, @appointment_id, '2015-9-11', '8:00:00')
END;
EXEC Use_for_patient_history 3, 3, 1
EXEC Use_for_patient_history 3, 2, 2
EXEC Use_for_patient_history 3, 1, 3
EXEC Use_for_patient_history 3, 7, 4
EXEC Use_for_patient_history 3, 10, 5
EXEC Use_for_patient_history 3, 1, 6
EXEC Use_for_patient_history 5, 3, 7
EXEC Use_for_patient_history 2, 2, 8
EXEC Use_for_patient_history 6, 1, 9
EXEC Use_for_patient_history 5, 7, 10
EXEC Use_for_patient_history 9, 10, 11
EXEC Use_for_patient_history 4, 1, 12

CREATE PROCEDURE Add_to_patient_history
@patient_id DECIMAL,
@physician_id DECIMAL,
@appointment_id DECIMAL
AS
BEGIN
INSERT INTO patient_history (patient_history.patient_history_id, patient_history.Patient_id, patient_history.Physician_id, patient_history.appointment_id)
VALUES (NEXT VALUE FOR Patient_history_seq, @patient_id, @physician_id, @appointment_id)
END;

EXEC Add_to_patient_history 3, 3, 1
EXEC Add_to_patient_history 3, 2, 2
EXEC Add_to_patient_history 3, 1, 3
EXEC Add_to_patient_history 3, 7, 4
EXEC Add_to_patient_history 3, 10, 5
EXEC Add_to_patient_history 3, 1, 6
EXEC Add_to_patient_history 5, 3, 7
EXEC Add_to_patient_history 2, 2, 8
EXEC Add_to_patient_history 6, 1, 9
EXEC Add_to_patient_history 5, 7, 10
EXEC Add_to_patient_history 9, 10, 11
EXEC Add_to_patient_history 4, 1, 12

UPDATE Patient
SET patient.balance= 0
WHERE balance is null;

CREATE SEQUENCE Waiting_List_seq MINVALUE 1;


---use the following updates to get the current dates for Case #7

UPDATE Appointment
SET  Year_month_day = (convert(date,getdate()+2))
WHERE Year_month_day = '2016-10-16';

UPDATE Appointment
SET  Year_month_day = (convert(date,getdate()+1))
WHERE Year_month_day = '2016-10-15';

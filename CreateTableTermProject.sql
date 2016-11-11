--Create each table in order as below, this will allow for all keys to be made accordingly with the tables.
--for me it has worked multiple times by doing Selecting all and executing

CREATE TABLE Building(
building_id DECIMAL PRIMARY KEY NOT NULL,
building_name VARCHAR (100) NOT NULL
);

CREATE TABLE Room(
room_id DECIMAL PRIMARY KEY NOT NULL,
room_number DECIMAL,
building_id DECIMAL,
FOREIGN KEY (building_id) REFERENCES Building (building_id)
);

CREATE TABLE Physician_type(
physician_type_id DECIMAL PRIMARY KEY NOT NULL,
name_type VARCHAR (30)
);

CREATE TABLE Physician(
physician_id DECIMAL PRIMARY KEY NOT NULL,
physician_type_id DECIMAL,
Physician_first_name VARCHAR (50) NOT NULL,
Physician_last_name VARCHAR (50) NOT NULL,
building_id DECIMAL (18,0),
FOREIGN KEY (building_id) REFERENCES Building(building_id),
FOREIGN KEY (physician_type_id) REFERENCES Physician_type(physician_type_id)
);

CREATE TABLE Fees(
fees_id DECIMAL PRIMARY KEY NOT NULL,
Rates DECIMAL (20, 2),
);

CREATE TABLE Insurance_Plan(
insurance_plan_id DECIMAL PRIMARY KEY NOT NULL,
fees_id DECIMAL,
Copayment DECIMAL (20, 2),
Insurance_company VARCHAR (255),
Insurance_plan_name VARCHAR (255),
FOREIGN KEY (fees_id) REFERENCES Fees(fees_id)
);


CREATE TABLE Patient_contact(
patient_contact_id DECIMAL PRIMARY KEY NOT NULL,
patient_phone DECIMAL (11),
patient_email VARCHAR (255),
street VARCHAR (255),
patient_city VARCHAR (255),
patient_state VARCHAR (50),
patient_zip DECIMAL (11)
);

CREATE TABLE Patient(
patient_id DECIMAL PRIMARY KEY NOT NULL,
insurance_plan_ID DECIMAL (18,0),
fees_ID DECIMAL (18,0),
patient_contact_id DECIMAL(18,0),
patient_first_name VARCHAR (255),
patient_last_name VARCHAR (255),
balance DECIMAL (20,2),
FOREIGN KEY (insurance_plan_id) REFERENCES Insurance_Plan(insurance_plan_id),
FOREIGN KEY (fees_id) REFERENCES Fees(fees_id),
FOREIGN KEY (patient_contact_id) REFERENCES Patient_contact(patient_contact_id)
);


CREATE TABLE Appointment(
appointment_id DECIMAL PRIMARY KEY NOT NULL,
physician_id DECIMAL NOT NULL,
room_id DECIMAL,
patient_id DECIMAL NOT NULL,
Year_month_day DATE NOT NULL,
appointment_time TIME NOT NULL,
FOREIGN KEY (physician_id) REFERENCES Physician(physician_id),
FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

CREATE TABLE Waiting_list(
Waiting_list_id DECIMAL PRIMARY KEY NOT NULL,
Physician_id DECIMAL NOT NULL,
Patient_id DECIMAL NOT NULL,
FOREIGN KEY (physician_id) REFERENCES Physician(physician_id),
FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

CREATE TABLE Patient_history(
patient_history_id DECIMAL PRIMARY KEY NOT NULL,
patient_id DECIMAL NOT NULL,
FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
physician_id DECIMAL,
FOREIGN KEY (physician_id) REFERENCES Physician(physician_id),
appointment_id DECIMAL,
FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

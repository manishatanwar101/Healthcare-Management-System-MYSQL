# HEALTHCARE MANAGMENT SYSTEM

create database healthcare;
use healthcare;


-- Create Patient table
CREATE TABLE Patient (
    patient_id INT  auto_increment PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT,
    phone VARCHAR(20),
    insurance_info TEXT,
    email_id varchar(255) UNIQUE
);



#  Create Doctor table
CREATE TABLE Doctor (
    doctor_id INT  auto_increment PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL,
    schedule TEXT,
    email_id varchar(255) UNIQUE
);


-- Create Appointment table
CREATE TABLE Appointment (
    appointment_id INT  auto_increment PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- Create Billing table
CREATE TABLE Billing (
    billing_id INT auto_increment PRIMARY KEY,
    patient_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    billing_date DATE NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- Create Inventory table
CREATE TABLE Inventory (
    inventory_id INT auto_increment PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    expiration_date DATE
);


INSERT INTO Patient (first_name, last_name, dob, gender, address, phone, insurance_info, email_id) VALUES
('Aarav', 'Sharma', '1995-02-15', 'Male', 'Delhi', '9876543210', 'HDFC Health Plus', 'aarav.sharma@gmail.com'),
('Diya', 'Patel', '2001-06-10', 'Female', 'Mumbai', '9812345678', 'Star Health', 'diya.patel@gmail.com'),
('Rohan', 'Gupta', '1989-09-21', 'Male', 'Noida', '9988776655', 'ICICI Lombard', 'rohan.gupta@gmail.com'),
('Meera', 'Verma', '1997-12-11', 'Female', 'Gurugram', '9786541230', 'Care Health', 'meera.verma@gmail.com'),
('Kabir', 'Malhotra', '1992-08-04', 'Male', 'Chandigarh', '9823456712', 'Reliance Health', 'kabir.malhotra@gmail.com'),
('Nisha', 'Yadav', '1990-01-30', 'Female', 'Faridabad', '9856214789', 'HDFC Ergo', 'nisha.yadav@gmail.com'),
('Vikram', 'Jain', '1985-04-18', 'Male', 'Jaipur', '9723456781', 'Max Bupa', 'vikram.jain@gmail.com'),
('Ananya', 'Singh', '1998-07-22', 'Female', 'Lucknow', '9765432109', 'Tata AIG', 'ananya.singh@gmail.com'),
('Harsh', 'Bansal', '1993-05-12', 'Male', 'Delhi', '9871203456', 'Star Health', 'harsh.bansal@gmail.com'),
('Riya', 'Chopra', '2000-11-03', 'Female', 'Mumbai', '9821309876', 'ICICI Lombard', 'riya.chopra@gmail.com'),
('Kunal', 'Rathore', '1991-02-28', 'Male', 'Agra', '9890456712', 'Care Health', 'kunal.rathore@gmail.com'),
('Sneha', 'Rao', '1994-03-16', 'Female', 'Pune', '9845012398', 'HDFC Health Plus', 'sneha.rao@gmail.com'),
('Arnav', 'Kapoor', '1996-05-09', 'Male', 'Delhi', '9812314567', 'Reliance Health', 'arnav.kapoor@gmail.com'),
('Isha', 'Mehta', '1999-10-30', 'Female', 'Gurugram', '9898989898', 'Max Bupa', 'isha.mehta@gmail.com'),
('Mohit', 'Bhatt', '1987-08-22', 'Male', 'Noida', '9755554321', 'Care Health', 'mohit.bhatt@gmail.com'),
('Pooja', 'Aggarwal', '1993-03-05', 'Female', 'Jaipur', '9888876543', 'HDFC Ergo', 'pooja.aggarwal@gmail.com'),
('Sarthak', 'Joshi', '1992-09-17', 'Male', 'Faridabad', '9812233445', 'Star Health', 'sarthak.joshi@gmail.com'),
('Tanya', 'Rana', '1995-04-02', 'Female', 'Pune', '9876501234', 'ICICI Lombard', 'tanya.rana@gmail.com'),
('Aditya', 'Arora', '1990-06-25', 'Male', 'Delhi', '9823409876', 'Care Health', 'aditya.arora@gmail.com'),
('Nikita', 'Sethi', '1998-12-14', 'Female', 'Mumbai', '9812341209', 'Tata AIG', 'nikita.sethi@gmail.com');


INSERT INTO Doctor (first_name, last_name, specialization, schedule, email_id) VALUES
('Ravi', 'Sharma', 'Cardiologist', 'Mon-Fri 9AM-2PM', 'ravi.sharma@hms.com'),
('Neha', 'Verma', 'Dermatologist', 'Tue-Sat 10AM-4PM', 'neha.verma@hms.com'),
('Arjun', 'Patel', 'Orthopedic', 'Mon-Fri 8AM-1PM', 'arjun.patel@hms.com'),
('Sneha', 'Gupta', 'Pediatrician', 'Mon-Sat 9AM-3PM', 'sneha.gupta@hms.com'),
('Karan', 'Mehta', 'Neurologist', 'Wed-Sun 11AM-5PM', 'karan.mehta@hms.com'),
('Priya', 'Singh', 'Gynecologist', 'Mon-Fri 10AM-4PM', 'priya.singh@hms.com'),
('Amit', 'Jain', 'ENT Specialist', 'Tue-Sat 9AM-1PM', 'amit.jain@hms.com'),
('Ruchi', 'Bansal', 'Dentist', 'Mon-Sat 11AM-6PM', 'ruchi.bansal@hms.com'),
('Rohit', 'Yadav', 'General Physician', 'Mon-Sun 8AM-2PM', 'rohit.yadav@hms.com'),
('Anjali', 'Saxena', 'Ophthalmologist', 'Mon-Fri 10AM-3PM', 'anjali.saxena@hms.com'),
('Manish', 'Kumar', 'Psychiatrist', 'Mon-Sat 9AM-2PM', 'manish.kumar@hms.com'),
('Kavita', 'Rana', 'Radiologist', 'Tue-Sun 10AM-5PM', 'kavita.rana@hms.com'),
('Deepak', 'Chawla', 'Surgeon', 'Mon-Fri 8AM-1PM', 'deepak.chawla@hms.com'),
('Simran', 'Malik', 'Dermatologist', 'Tue-Sat 9AM-2PM', 'simran.malik@hms.com'),
('Gaurav', 'Joshi', 'Cardiologist', 'Mon-Fri 9AM-4PM', 'gaurav.joshi@hms.com'),
('Sonia', 'Arora', 'Orthopedic', 'Mon-Fri 8AM-1PM', 'sonia.arora@hms.com'),
('Rahul', 'Kapoor', 'Dentist', 'Mon-Sat 10AM-4PM', 'rahul.kapoor@hms.com'),
('Meena', 'Aggarwal', 'General Physician', 'Mon-Sat 9AM-2PM', 'meena.aggarwal@hms.com'),
('Rajesh', 'Bhatt', 'Pediatrician', 'Mon-Sat 10AM-3PM', 'rajesh.bhatt@hms.com'),
('Tina', 'Sethi', 'Gynecologist', 'Tue-Sat 11AM-5PM', 'tina.sethi@hms.com');


INSERT INTO Appointment (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2025-10-01 10:00:00', 'Completed'),
(1, 3, '2025-10-02 11:30:00', 'Completed'),
(3, 5, '2025-10-03 09:00:00', 'Cancelled'),
(4, 2, '2025-10-04 13:15:00', 'Completed'),
(5, 4, '2025-10-05 15:45:00', 'Pending'),
(6, 6, '2025-10-06 10:30:00', 'Completed'),
(7, 7, '2025-10-07 14:00:00', 'Completed'),
(8, 8, '2025-10-08 09:30:00', 'Pending'),
(9, 9, '2025-10-09 11:00:00', 'Completed'),
(10, 10, '2025-10-10 10:15:00', 'Completed'),
(11, 11, '2025-10-11 16:00:00', 'Cancelled'),
(12, 12, '2025-10-12 12:00:00', 'Completed'),
(13, 13, '2025-10-13 09:45:00', 'Completed'),
(14, 14, '2025-10-14 13:30:00', 'Pending'),
(15, 15, '2025-10-15 11:15:00', 'Completed'),
(16, 16, '2025-10-16 10:00:00', 'Completed'),
(17, 17, '2025-10-17 14:45:00', 'Cancelled'),
(18, 18, '2025-10-18 09:15:00', 'Completed'),
(19, 19, '2025-10-19 13:00:00', 'Completed'),
(20, 20, '2025-10-20 11:45:00', 'Pending');



INSERT INTO Billing (patient_id, amount, billing_date, payment_status) VALUES
(1, 500.00, '2025-10-01', 'Paid'),
(2, 750.00, '2025-10-02', 'Paid'),
(3, 400.00, '2025-10-03', 'Refunded'),
(4, 650.00, '2025-10-04', 'Paid'),
(5, 300.00, '2025-10-05', 'Unpaid'),
(6, 850.00, '2025-10-06', 'Paid'),
(7, 500.00, '2025-10-07', 'Paid'),
(8, 250.00, '2025-10-08', 'Unpaid'),
(9, 600.00, '2025-10-09', 'Paid'),
(10, 550.00, '2025-10-10', 'Paid'),
(11, 700.00, '2025-10-11', 'Refunded'),
(12, 450.00, '2025-10-12', 'Paid'),
(13, 900.00, '2025-10-13', 'Paid'),
(14, 350.00, '2025-10-14', 'Unpaid'),
(15, 400.00, '2025-10-15', 'Paid'),
(16, 750.00, '2025-10-16', 'Paid'),
(17, 300.00, '2025-10-17', 'Refunded'),
(18, 550.00, '2025-10-18', 'Paid'),
(19, 650.00, '2025-10-19', 'Paid'),
(20, 480.00, '2025-10-20', 'Unpaid');

INSERT INTO Inventory (inventory_id, item_name, quantity, expiration_date) VALUES
(1, 'Paracetamol Tablets', 500, '2026-03-01'),
(2, 'Disposable Syringes', 1000, '2027-01-15'),
(3, 'Gloves Box', 200, '2026-06-30'),
(4, 'Face Masks', 800, '2027-09-10'),
(5, 'Saline Bottles', 300, '2026-12-20'),
(6, 'Antibiotic Capsules', 400, '2025-11-30'),
(7, 'Vitamin D Tablets', 250, '2026-05-10'),
(8, 'Pain Relief Spray', 180, '2025-10-15'),
(9, 'BP Machine', 20, '2028-12-31'),
(10, 'Thermometer', 60, '2028-12-31'),
(11, 'Stethoscope', 30, '2028-12-31'),
(12, 'Hand Sanitizer', 500, '2026-02-01'),
(13, 'Bandage Roll', 350, '2027-07-25'),
(14, 'Cough Syrup', 200, '2025-12-31'),
(15, 'Gauze Pads', 400, '2026-11-01'),
(16, 'Insulin Injection', 150, '2025-09-10'),
(17, 'Glucose Bottle', 180, '2026-08-20'),
(18, 'Ointment Cream', 300, '2026-03-15'),
(19, 'Cotton Pack', 250, '2026-10-05'),
(20, 'Medical Scissors', 15, '2028-12-31');

# select all data from inventory table 
select * from inventory;

# select all dat from billing table
select  * from billing;

# select all data from appointment
select * from appointment;

# select all dat from doctor
select * from doctor;

# select * from patient
select * from patient;


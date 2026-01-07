use healthcare;# Before performing query we ensure that our database is connected
show tables; # ensuring tables names for use in query so that no error


-- 1. Display all patient details
SELECT * FROM Patient;

-- 2. Show first name, last name, and gender of all patients
SELECT first_name, last_name, gender FROM Patient;

-- 3. List all doctors along with their specialization
SELECT first_name, last_name, specialization FROM Doctor;

-- 4. Display all completed appointments
SELECT * FROM Appointment
WHERE status = 'Completed';

-- 5. Show billing details where payment status is Paid
SELECT * FROM Billing
WHERE payment_status = 'Paid';

-- 6. Display inventory items having quantity more than 300
SELECT * FROM Inventory
WHERE quantity > 300;

-- 7. Show unique insurance providers of patients
SELECT DISTINCT insurance_info FROM Patient;

-- 8. Count total number of patients in the hospital
SELECT COUNT(*) AS total_patients FROM Patient;

-- 9. Display all appointments scheduled after 10 October 2025
SELECT * FROM Appointment
WHERE appointment_date > '2025-10-10';

-- 10. List inventory items that will expire before the year 2026
SELECT * FROM Inventory
WHERE expiration_date < '2026-01-01';

-- 11. Display patient name along with their appointment date and status
SELECT p.first_name, p.last_name, a.appointment_date, a.status
FROM Patient p
JOIN Appointment a
ON p.patient_id = a.patient_id;

-- 12. Show doctor name along with their scheduled appointment dates
SELECT d.first_name, d.last_name, a.appointment_date
FROM Doctor d
JOIN Appointment a
ON d.doctor_id = a.doctor_id;

-- 13. List patients who have unpaid bills along with bill amount
SELECT p.first_name, p.last_name, b.amount
FROM Patient p
JOIN Billing b
ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Unpaid';

-- 14. Find the total revenue generated from paid bills
SELECT SUM(amount) AS total_revenue
FROM Billing
WHERE payment_status = 'Paid';

-- 15. Count the total number of appointments handled by each doctor
SELECT d.first_name, d.last_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctor d
JOIN Appointment a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id;

-- 16. Display names of patients who have cancelled appointments
SELECT DISTINCT p.first_name, p.last_name
FROM Patient p
JOIN Appointment a
ON p.patient_id = a.patient_id
WHERE a.status = 'Cancelled';

-- 17. Show specialization-wise appointment count of doctors
SELECT d.specialization, COUNT(a.appointment_id) AS appointment_count
FROM Doctor d
JOIN Appointment a
ON d.doctor_id = a.doctor_id
GROUP BY d.specialization;

-- 18. Find the average billing amount of all patients
SELECT AVG(amount) AS average_bill FROM Billing;

-- 19. Display patient name along with their total billing amount
SELECT p.first_name, p.last_name, SUM(b.amount) AS total_amount
FROM Patient p
JOIN Billing b
ON p.patient_id = b.patient_id
GROUP BY p.patient_id;

-- 20. List top 5 patients who have the highest total billing amount
SELECT p.first_name, p.last_name, SUM(b.amount) AS total_bill
FROM Patient p
JOIN Billing b
ON p.patient_id = b.patient_id
GROUP BY p.patient_id
ORDER BY total_bill DESC
LIMIT 5;

use medical;

-- select 1
select pname, name from patient, pharmacy where patient.city=pharmacy.city and  patient.city='fazilka';

-- alter 2
alter table doctors rename to doctor;

-- select distinct 3
 select distinct speciality from doctor;
 
 -- order by 4
 select `med_name`,`med_cost(rs)` from `medical`.`medicine` order by `med_cost(rs)`;
 
-- 5 between
SELECT * FROM Medicine
WHERE `Med_Cost(Rs)` BETWEEN 200 AND 500; 

-- 6 count
SELECT COUNT(city), city
FROM patient    
GROUP BY city;

-- 7 update
UPDATE `medical`.`appointments`
SET videolink='https://meet.google.com/rrw-ssyg-bhw'
WHERE appointmentid=9;

-- 8 limit
use medical;
SELECT DoctorID,FullName,`Years Of Practise`
FROM Doctor
ORDER BY `Years Of Practise` DESC
LIMIT 5;

-- 9 exists
SELECT DoctorId,FullName from Doctor
WHERE NOT EXISTS
(SELECT DISTINCT DoctorId from Appointments WHERE Appointments.DoctorID=Doctor.DoctorID);

-- 10 View + Alias + group by+ min/max
create view `Consultancy Fees Range` as
  select `Speciality`, min(`Consultancy Fees (Rs)`) as `Minimum_Fees`, max(`Consultancy Fees (Rs)`) as `Maximum_Fees` from `doctor`
  group by Speciality;
  
  select * from `Consultancy Fees Range`;
  
  DROP view `Consultancy Fees Range`;
  
  -- 11 like and wildcards
  select *from patient
where pname like 'su%';

select *from patient
where pname like '%kumar';

select *from patient
where pname like 'a__%j';

-- 12 self join
 select `a`.`fullname` as doctorname1, `b`.`fullname` as doctorname2
from `doctor` a,`doctor` b
where a.`consultancy fees (rs)` = b.`consultancy fees (rs)`;

-- 13 null keyword with using INNER JOIN
SELECT Appointments.AppointmentID,Appointments.DoctorID,Bill_Payment.Med_ID
FROM Appointments
INNER JOIN Bill_Payment ON Bill_Payment.Appointment_ID=Appointments.AppointmentID AND Bill_Payment.Med_ID IS NULL;

-- 14 INNER JOIN
SELECT patient.patient_id,patient.pname, Appointments.DoctorID,Bill_Payment.Med_ID,Doctor.`Consultancy Fees (Rs)`, Medicine.`Med_Cost(Rs)`
FROM patient
INNER JOIN Appointments ON patient.patient_id = Appointments.PatientID
INNER JOIN Doctor ON Doctor.DoctorID = Appointments.DoctorID
INNER JOIN Bill_Payment ON Bill_Payment.Appointment_ID = Appointments.AppointmentID
INNER JOIN Medicine ON Medicine.Med_ID = Bill_Payment.Med_ID;

-- 15 VIEWS
create view `total_bill` AS
SELECT Appointments.AppointmentID, patient.patient_id, patient.pname, Appointments.DoctorID, Bill_Payment.Med_ID, Doctor.`Consultancy Fees (Rs)`,
Medicine.`Med_Cost(Rs)`
FROM patient
INNER JOIN Appointments ON patient.patient_id = Appointments.PatientID
INNER JOIN Doctor ON Doctor.DoctorID = Appointments.DoctorID
INNER JOIN Bill_Payment ON Bill_Payment.Appointment_ID = Appointments.AppointmentID
LEFT JOIN Medicine ON Medicine.Med_ID = Bill_Payment.Med_ID;

select `patient_id`, `pname` AS `Patient Name`,`Consultancy Fees (Rs)` + ( if(`med_cost(Rs)` is null, 0, `med_cost(Rs)`) ) AS Total_Bill_Paid
from `total_bill`;

-- providing discount to top 10 appointments
Create View `After_Discount_Total_Bill` AS
Select  `AppointmentID`, `patient_id`, `Consultancy Fees (Rs)` ,`med_cost(Rs)`,
( if(`AppointmentID` <= 10, `Consultancy Fees (Rs)` - ( (0.5)*(`Consultancy Fees (Rs)`)), `Consultancy Fees (Rs)` ))
AS `Consultancy_Fees_After_Discount (RS)` from `total_bill`;

Select `AppointmentID`, `patient_id`, `Consultancy Fees (Rs)` ,`med_cost(Rs)`, `Consultancy_Fees_After_Discount (RS)`,
`Consultancy_Fees_After_Discount (RS)` + ( if(`med_cost(Rs)` is null, 0, `med_cost(Rs)`) ) AS Total_Bill_Paid from `After_Discount_Total_Bill`;

-- DROPING the views
DROP VIEW `after_discount_total_bill`;
DROP VIEW `total_bill`;

-- 16 LEFT JOIN
select bill_payment.Bill_ID, patient.Pname as `Patient Name`, medicine.Med_id, medicine.med_name as `Medicine Name`, medicine.date_of_expiry as `D.O.E` from bill_payment
INNER JOIN appointments ON Bill_Payment.Appointment_ID = Appointments.AppointmentID
INNER JOIN patient ON appointments.PatientID = patient.patient_id
LEFT JOIN medicine ON bill_payment.med_id = medicine.med_id;

-- 17 RIGHT JOIN
select bill_payment.Bill_ID, patient.Pname as `Patient Name`, medicine.Med_id, medicine.med_name as `Medicine Name`, medicine.date_of_expiry as `D.O.E` from bill_payment
INNER JOIN appointments ON Bill_Payment.Appointment_ID = Appointments.AppointmentID
INNER JOIN patient ON appointments.PatientID = patient.patient_id
RIGHT JOIN medicine ON bill_payment.med_id = medicine.med_id;

-- 18 Full join 
select bill_payment.Bill_ID, patient.Pname as `Patient Name`, medicine.Med_id, medicine.med_name as `Medicine Name`, medicine.date_of_expiry as `D.O.E` from bill_payment
INNER JOIN appointments ON Bill_Payment.Appointment_ID = Appointments.AppointmentID
INNER JOIN patient ON appointments.PatientID = patient.patient_id
LEFT JOIN medicine ON bill_payment.med_id = medicine.med_id
UNION ALL
select bill_payment.Bill_ID, patient.Pname as `Patient Name`, medicine.Med_id, medicine.med_name as `Medicine Name`, medicine.date_of_expiry as `D.O.E` from bill_payment
INNER JOIN appointments ON Bill_Payment.Appointment_ID = Appointments.AppointmentID
INNER JOIN patient ON appointments.PatientID = patient.patient_id
RIGHT JOIN medicine ON bill_payment.med_id = medicine.med_id;

-- 19 DELETE COMMAND
DELETE FROM Appointments WHERE PatientID=5;
DELETE FROM patient WHERE patient_id = 4;
CREATE DATABASE IF NOT EXISTS `MEDICAL`;
USE `MEDICAL`;

DROP TABLE IF EXISTS `Symptom`;
DROP TABLE IF EXISTS `Bill_Payment`;
DROP TABLE IF EXISTS `Medicine`;
DROP TABLE IF EXISTS `pharmacy`;
DROP TABLE IF EXISTS `Appointments`;
DROP TABLE IF EXISTS `patient`;
DROP TABLE IF EXISTS `Doctors`;
DROP TABLE IF EXISTS `Doctor`;


DROP VIEW IF EXISTS `Consultancy Fees Range`;
DROP VIEW IF EXISTS `after_discount_total_bill`;
DROP VIEW IF EXISTS `total_bill`;




/* DOCTOR TABLE */
CREATE TABLE `Doctors` (
    `DoctorID` int,
    `FullName` varchar(50),
    `Degree` varchar(20),
    `Speciality` varchar(30),
    `Years Of Practise` int,
    `Phone Number` varchar(15),
    `Consultancy Fees (Rs)` int,
     PRIMARY KEY (DoctorID)
);

describe `Doctors`;
select * from `Doctors`;

INSERT INTO `Doctors` VALUES(1,'Dr. Amarpreet Singh Riar','MD','Gastroenterologist ',12,'+91 6432732901',1200);
INSERT INTO `Doctors` VALUES(2,'Dr. (Maj.)Sharad Shrivastava','MD','Orthopedic',6,'+91 9432732901',500);
INSERT INTO `Doctors` VALUES(3,'Dr. Anirban Biswas','MBBS ','Pulmonologist',8,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(4,'Dr. Aman Vij','MBBS ','Allergist',9,'+91 8432732990',800);
INSERT INTO `Doctors` VALUES(5,'Dr. Mansi Arya','BHMS','Homoeopath',10,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(6,'Dr. Sunil Kumar Dwivedi','MBBS ','internist',5,'+91 8432732996',500);
INSERT INTO `Doctors` VALUES(7,'Dr. Chhavi Bansal','BDS ','Nutritionist',8,'+91 8432732990',800);
INSERT INTO `Doctors` VALUES(8,'Dr. Sneh Khera','MBBS ','Nutritionist',10,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(9,'Dr. Inderjeet Singh','BHMS','Nutritionist',15,'+91 8432732901',1200);
INSERT INTO `Doctors` VALUES(10,'Dr. Suman Mohan','MBBS ','Allergist',4,'+91 8432732990',500);
INSERT INTO `Doctors` VALUES(11,'Dr. Manish Munjal','BDS ','Nephrologist',2,'+91 6432732901',500);
INSERT INTO `Doctors` VALUES(12,'Dr. Ajay Jain','MBBS ','Ear-Nose-Throat',8,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(13,'Dr. Anshul Gupta','MBBS ','Pulmonologist',11,'+91 8432732990',1200);
INSERT INTO `Doctors` VALUES(14,'Dr. B B Khatri','MBBS ','Allergist',5,'+91 8432732990',500);
INSERT INTO `Doctors` VALUES(15,'Dr. Vidit Tripathi','MBBS ','Nutritionist',9,'+91 6432732901',500);
INSERT INTO `Doctors` VALUES(16,'Dr. Arun Wadhawan','MBBS ','Ear-Nose-Throat',6,'+91 8432732990',500);
INSERT INTO `Doctors` VALUES(17,'Dr. Neha Sood','MBBS ','Orthopedic',3,'+91 9432732901',500);
INSERT INTO `Doctors` VALUES(18,'Dr. Vineet Narula','MBBS ','Ear-Nose-Throat',2,'+91 8432732996',500);
INSERT INTO `Doctors` VALUES(19,'Dr. Yogesh Jain','MBBS ','internist',6,'+91 6432732901',800);
INSERT INTO `Doctors` VALUES(20,'Dr. Rakesh Singh','MBBS ','Ear-Nose-Throat',11,'+91 8432732990',1200);
INSERT INTO `Doctors` VALUES(21,'Dr. Sudha Asokan','BAMS','Gastroenterologist ',9,'+91 9432732901',800);
INSERT INTO `Doctors` VALUES(22,'Dr. Mahesh Shah','BAMS','Nutritionist',10,'+91 8432732990',1200);
INSERT INTO `Doctors` VALUES(23,'Dr. S K Singh','MBBS ','Pulmonologist',8,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(24,'Dr. Sudhir Bhola','BAMS','Nutritionist',9,'+91 6432732901',500);
INSERT INTO `Doctors` VALUES(25,'Dr. Jyoti Arora Monga','BAMS','Ayurveda',5,'+91 6432732901',500);
INSERT INTO `Doctors` VALUES(26,'Dr. Vijay Abbot','BAMS','Ayurveda',6,'+91 8432732996',500);
INSERT INTO `Doctors` VALUES(27,'Dr. Rakesh Gupta','MBBS ','internist',7,'+91 6432732901',800);
INSERT INTO `Doctors` VALUES(28,'Dr. Sugeeta Mutreja','BAMS','Ayurveda',9,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(29,'Dr. Ruchi Gupta','MD','Gynecologist/Obstetrician',8,'+91 8432732990',800);
INSERT INTO `Doctors` VALUES(30,'Dr. Praveen Rustagi','BAMS','Nutritionist',7,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(31,'Dr. S.K Kashyap','MBBS ','Dermatologist',11,'+91 8432732996',1200);
INSERT INTO `Doctors` VALUES(32,'Dr. Nipun Jain','BDS ','Nutritionist',3,'+91 6432732901',500);
INSERT INTO `Doctors` VALUES(33,'Dr. Rohit Batra','MBBS ','Gynecologist',4,'+91 8432732990',500);
INSERT INTO `Doctors` VALUES(34,'Dr. Lipy Gupta','MBBS ','Dermatologist',7,'+91 8432732996',800);
INSERT INTO `Doctors` VALUES(35,'Dr. Gaurav Garg','MBBS ','Dermatologist',5,'+91 8432732901',500);
INSERT INTO `Doctors` VALUES(36,'Dr. Parmil Kumar Sharma','MBBS ','Allergist',3,'+91 8432732996',500);
INSERT INTO `Doctors` VALUES(37,'Dr. Shruti Gupta','MBBS ','Orthopedic',8,'+91 6432732901',800);
INSERT INTO `Doctors` VALUES(38,'Dr. Manisha Chopra','MD','Dermatologist',5,'+91 8432732996',500);
INSERT INTO `Doctors` VALUES(39,'Dr. Ranjan Upadhyay','MBBS ','Pulmonologist',7,'+91 8432732990',800);
INSERT INTO `Doctors` VALUES(40,'Dr. Gayatri Bala Juneja','BDS ','Neurologist',8,'+91 8432732996',800);


/* PATIENT TABLE */
CREATE TABLE patient(
	Pname VARCHAR(30),
	age int,
	gender varchar(1),
	city varchar(25),
	phone varchar(10),
	patient_id int,
	primary key(patient_id)
);

describe patient;
select * from patient;

INSERT INTO patient VALUES('sushant',19,'M','fazilka','6239725202',1); 
INSERT INTO patient VALUES('garima',19,'F','bathinda','6239725231',2); 
INSERT INTO patient VALUES('yash gupta',19,'M','agra','6239725201',3);
INSERT INTO patient VALUES('vinar yadav',20,'M','meerut','6239734021',4);
INSERT INTO patient  values ('abhinav',19,'M','jaipur','9417615768',5);
INSERT INTO patient VALUES('rekha',55,'F','mohali','6239738021',6);
INSERT INTO patient VALUES('ravi kumar',33,'M','amritsar','6234535021',7);
INSERT INTO patient VALUES('namamish',20,'M','unao','9039734021',8);
INSERT INTO patient VALUES('hartik',20,'M','hoshiarpur','9089734021',9);
INSERT INTO patient VALUES('hardik',29,'M','mumbai','8943734021',10);
INSERT INTO patient VALUES('vijay',32,'M','bathinda','6239734871',11);
INSERT INTO patient VALUES('ketan',23,'M','abohar','9362734021',12);
INSERT INTO patient VALUES('sehaj',21,'M','jalandhar','6239734431',13);
INSERT INTO patient VALUES('aashima',20,'F','meerut','8769734021',14);
INSERT INTO patient VALUES('sudhir',20,'M','jodhpur','6239454021',15);
INSERT INTO patient VALUES('rakesh',36,'M','bathinda','6239876021',16);
INSERT INTO patient VALUES('tushar',20,'M','indore','6239734021',17);
INSERT INTO patient VALUES('tarun',17,'M','saharanpur','6451734021',18);
INSERT INTO patient VALUES('mohit',26,'M','kurukshetra','8876734021',19);
INSERT INTO patient VALUES('sahil kumar',24,'M','pune','6239734531',20);
INSERT INTO patient VALUES('priyanka',23,'F','ganganagar','6873734021',21);
INSERT INTO patient VALUES('deepali',27,'F','kota','6239765421',22);
INSERT INTO patient VALUES('jai',20,'M','gandhinagar','6239546721',23);
INSERT INTO patient VALUES('aviraj',24,'M','alwar','8954034021',24);
INSERT INTO patient VALUES('divya',32,'F','rajpura','7659734021',25);
INSERT INTO patient VALUES('shivam',34,'M','panipat','6239734311',26);
INSERT INTO patient VALUES('sahil',32,'M','gurugram','9876734021',27);
INSERT INTO patient VALUES('dhairya',20,'M','jhansi','6243524021',28);
INSERT INTO patient VALUES('sanyam',25,'M','ludhiana','8976734021',29);
INSERT INTO patient VALUES('anuj',30,'M','una','9076734021',30);
INSERT INTO patient VALUES('rahul',27,'M','kanpur','6265734021',31);
INSERT INTO patient VALUES('radhe shaam',48,'M','sirsa','9417615468',32);
INSERT INTO patient VALUES('sunita',54,'F','kota','8877234321',33);
INSERT INTO patient VALUES('rajesh',58,'M','fazilka','6543657890',34);	
INSERT INTO patient VALUES('riya',26,'F','saharanpur','6754678901',35);	
INSERT INTO patient VALUES('subhash',28,'M','bathinda','7865678901',36);	
INSERT INTO patient VALUES('aviral',23,'M','alwar','6754390871',37);	
INSERT INTO patient VALUES('des raj',68,'M','ludhiana','7658459032',38);
INSERT INTO patient VALUES('ankush',33,'M','noida','7685448901',39);	
INSERT INTO patient VALUES('yogesh','43','M','rajpura','8765437829',40);
INSERT INTO patient VALUES('yuvraj',32,'M','ludhiana','8765437865',41);	
INSERT INTO patient VALUES('rani',45,'F','kolkata','8765432876',42);	
INSERT INTO patient VALUES('vivek',28,'M','lucknow','7658490341',43);	
INSERT INTO patient VALUES('raj',19,'M','fazilka','9876435210',44);	
INSERT INTO patient VALUES('avinash',38,'M','lucknow','7685340981',45);


/* APPOINTMENT TABLE */
CREATE TABLE `Appointments`(
    `AppointmentID` int not null,
    `PatientID` int,
    `DoctorID` int,
    `DATE` date,
    `StartTime` time,
    `EndTime` time,
    `VideoLink` VARCHAR(50),
    PRIMARY KEY (`AppointmentID`)
);

ALTER TABLE `Appointments`
ADD FOREIGN KEY (`PatientID`) REFERENCES `patient`(`patient_id`) ON DELETE CASCADE,
ADD FOREIGN KEY (`DoctorID`) REFERENCES `Doctors`(`DoctorID`) ON DELETE CASCADE;

describe `Appointments`;
select * from `Appointments`;

INSERT INTO Appointments VALUES(1,1,2,'2021-11-25','09:30:00','10:00:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(2,2,21,'2021-11-25','11:30:00','12:00:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(3,3,7,'2021-11-25','12:30:00','13:00:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(4,4,12,'2021-11-25','13:30:00','14:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(5,5,17,'2021-11-25','16:30:00','17:00:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(6,6,31,'2021-11-26','12:30:00','13:00:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(7,7,6,'2021-11-26','13:30:00','14:00:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(8,8,24,'2021-11-26','16:30:00','17:00:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(9,9,37,'2021-11-26','17:00:00','17:30:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(10,10,18,'2021-11-27','09:30:00','10:30:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(11,11,32,'2021-11-27','11:00:00','11:30:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(12,12,19,'2021-11-27','12:30:00','13:00:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(13,13,17,'2021-11-27','13:30:00','14:00:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(14,14,32,'2021-11-27','16:30:00','17:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(15,15,11,'2021-11-27','17:30:00','18:00:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(16,16,7,'2021-11-28','13:30:00','14:00:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(17,17,19,'2021-11-28','16:30:00','17:00:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(18,18,24,'2021-11-28','17:00:00','17:30:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(19,19,11,'2021-11-28','18:30:00','19:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(20,20,1,'2021-11-29','11:00:00','11:30:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(21,21,34,'2021-11-29','12:30:00','13:00:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(22,22,29,'2021-11-29','13:30:00','14:00:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(23,23,1,'2021-11-29','16:30:00','17:00:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(24,24,11,'2021-11-29','12:30:00','13:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(25,25,33,'2021-11-30','13:30:00','14:00:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(26,26,37,'2021-11-30','16:30:00','17:00:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(27,27,11,'2021-11-30','17:00:00','17:30:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(28,28,35,'2021-12-01','09:30:00','10:30:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(29,29,20,'2021-12-01','11:00:00','11:30:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(30,30,27,'2021-12-01','12:30:00','13:00:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(31,31,21,'2021-12-01','13:30:00','14:00:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(32,32,21,'2021-12-01','16:30:00','17:00:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(33,33,22,'2021-12-02','12:30:00','13:00:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(34,34,37,'2021-12-02','13:30:00','14:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(35,35,31,'2021-12-02','16:30:00','17:00:00','https://meet.google.com/rrw-vvyg-aas');
INSERT INTO Appointments VALUES(36,36,11,'2021-12-02','17:00:00','17:30:00','https://meet.google.com/rrw-vvyg-fds');
INSERT INTO Appointments VALUES(37,37,11,'2021-12-03','09:30:00','10:30:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(38,38,24,'2021-12-03','11:00:00','11:30:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(39,39,23,'2021-12-03','12:30:00','13:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(40,40,6,'2021-12-03','13:30:00','14:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(41,41,38,'2021-12-04','09:30:00','10:30:00','https://meet.google.com/raw-vvyg-bhd');
INSERT INTO Appointments VALUES(42,42,33,'2021-12-04','11:00:00','11:30:00','https://meet.google.com/rrw-vasg-fsa');
INSERT INTO Appointments VALUES(43,43,12,'2021-12-04','12:30:00','13:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(44,44,34,'2021-12-04','13:30:00','14:00:00','https://meet.google.com/rrw-ssyg-bhd');
INSERT INTO Appointments VALUES(45,45,15,'2021-12-04','14:30:00','15:00:00','https://meet.google.com/rrw-ssyg-xhd');


/* PHARMACY TABLE*/
create table `pharmacy`
(
	`pharmacy_id` int primary key,
	`name` varchar(50),
	`city` varchar(30)
);

describe `pharmacy`;
select * from `pharmacy`;

INSERT INTO `pharmacy` values
	(101,'bharat medicals','fazilka'),
	(102,'balaji medicals','bathinda'),
	(103,'dileep medicals','abohar'),
	(104,'kalra medicals','ludhiana'),
	(105,'agra meidcal store','agra'),
	(106,'rajeev medical store','kanpur'),
	(107,'sandeep medicals','lucknow'),
	(108,'rajdhani medical store','meerut'),
	(109,'jaipur medicals','jaipur'),
	(110,'heera medicals','alwar'),
	(111,'dilsher medicals','moga'),
	(112,'satguru medicos','jalandhar'),
	(113,'rajeev medicals','rajpura'),
	(114,'waheguru medicals','amritsar'),
	(115,'sanjeevni medicals','kota'),
	(116,'shivratan medicos','noida'),
	(117,'global medicals','gurugram'),
	(118,'veera medicals','panipat'),
	(119,'sai ji medicals','kurukshetra'),
	(120,'vijay medicals','mohali'),
	(121,'gurukirpa medicals','hoshiarpur'),
	(122,'sahil medicals','saharanpur'),
	(123,'Maa durga medicals','kolkata'),
	(124,'baljeet medicals','sirsa'),
	(125,'subhash medicals','una'),
	(126,'uday medicos','jhansi'),
	(127,'shiva ji medicals','mumbai'),
	(128,'shiv medicos','pune'),
	(129,'vishva medicals','jodhpur'),
	(130,'rameshwar medicos','indore'),
	(131,'himgiri medical store','ganganagar'),
	(132,'ramesh medical store','gandhinagar'),
    (133,'guru medicos','unao');


/* MEDICINE TABLE */
CREATE TABLE `Medicine`(
`Med_ID` INT AUTO_INCREMENT NOT NULL,
`Med_Name` VARCHAR(60),
`Date_of_Expiry` DATE,
`Rating` INT,
`Condition` VARCHAR(35),
`Med_Cost(Rs)` INT,
`Pharmacy_ID` INT,
PRIMARY KEY (`Med_ID`)
);

ALTER TABLE `Medicine`
ADD FOREIGN KEY (`Pharmacy_ID`) REFERENCES `pharmacy`(`pharmacy_id`) ON DELETE CASCADE;

describe `Medicine`;
select * from `Medicine`;

INSERT INTO `Medicine` VALUES 
    (1012,'Cartigen Forte Plus','2022-8-5',5,'Cervical',200,101),
    (1121,'Lysteda','2022-12-12',6,'Menstrual disorder',150,115),
    (1031,'Limcee','2023-9-30',8,'Scurvy',650,102),
    (1840,'Doxycyline','2024-7-16',9,'Malaria',310,130),
    (1059,'Pimecrolimus','2023-1-23',7,'Vitiligo',560,131),
    (1367,'Allopurinol','2022-11-2',10,'Kidney Stone',410,119),
    (1277,'Actos','2021-12-31',7,'Diabetes',670,126),
    (1586,'Amoxicillin','2023-6-10',8,'Antibiotic',225,113),
    (1395,'Mirtazapin','2024-5-30',10,'Depression',460,133),
    (1607,'Naproxen','2023-4-12',5,'Cervical',250,109),
    (2508,'Promethazine','2024-1-5',7,'Vomiting',160,105),
    (2615,'Acetaminophen','2023-2-8',9,'Common Cold',230,108),
    (2924,'Aspirin','2021-12-18',8,'Antipyretic',125,104),
    (2331,'Tranexamic acid','2023-4-19',8,'Menstrual disorder',185,118),
    (2641,'oxycodone','2024-5-9',7,'Painkiller',130,110),
    (2750,'Proguanil','2023-1-16',5,'Malaria',290,103),
    (2963,'Albuterol','2023-8-15',9,'Asthama',1150,116),
    (2872,'Augmentin','2023-10-28',10,'Skin infection',640,126),
    (2089,'Afrezza','2024-12-5',8,'Diabetes',750,115),
    (2394,'Clindamycin','2021-12-25',9,'Acne',370,123),
    (3608,'Ciprofloxacin','2023-1-8',6,'Antibiotic',210,127),
    (3214,'Bactrim','2024-2-22',10,'Food poisoning',840,102),
    (3320,'Minoxidil','2024-3-15',8,'High Blood Pressure',360,125),
    (3632,'Tacrolimus','2024-4-26',9,'Vitiligo',630,120),
    (3042,'Amitriptyline','2024-8-20',7,'Migrane',350,133),
    (3158,'Clindamycin','2023-11-16',5,'Skin infection',580,122),
    (3268,'Escitalopram','2021-12-4',7,'Depression',450,109),
    (3173,'Malarone','2024-2-25',8,'Malaria',350,114),
    (3081,'Tylenol','2024-6-5',7,'Antipyretic',140,107),
    (3692,'Clonazepam','2024-5-5',6,'Anxiety',530,119),
    (4101,'Ibuprofen','2023-11-28',10,'Cervical',380,121),
    (4615,'Pregabalin','2024-1-19',7,'Anxiety',580,102),
    (4823,'Bromhexine','2022-6-21',8,'Asthama',1075,107),
    (4236,'Lisinopril','2025-3-4',10,'High Blood Pressure',410,118),
    (4540,'Beyaz','2024-9-18',5,'Acne',340,101),
    (4259,'Ampicillin','2023-12-26',9,'Food poisoning',790,128),
    (4763,'Tendomac','2023-11-30',8,'Muscle pain',380,113),
    (4176,'Liraglutide','2022-4-5',10,'Diabetes',1250,124),
    (4980,'Inderal','2024-1-6',8,'Migrane',380,129),
    (4999,'Zoloft','2021-11-5',9,'Depression',430,105),
    (5124,'Contrave','2023-4-8',8,'Weight Loss',750,129),
    (5069,'Ambien','2024-8-16',6,'Insomnia',640,127),
    (5782,'Nuvigil','2022-9-21',7,'Narcolepsy',520,104),
    (5236,'Chantix','2025-7-28',9,'Smoking Cessation',730,130),
    (8456,'Phentermine','2023-10-15',8,'Obesity',840,132),
    (6023,'Campral','2022-12-23',10,'Alcohol Dependence',640,132),
    (7102,'Pseudoephedrine','2022-3-14',7,'Cough and Nasal congestion',220,107),
    (9005,'Vyvanse','2023-2-19',9,'Binge Eating Disorder',760,106),
    (9263,'Trazodone','2023-6-12',8,'Insomnia',680,128),
    (8526,'Bupropion','2022-5-28',7,'Smoking Cessation',690,107),
    (9201,'Renerve plus Bt Capsule','2022-5-14',8,'Cervical',250,'112'),
    (6201,'Thiazide Diuretics','2023-6-4',7,'Kidney Stone',650,'102'),
    (7112,'Zyloprim','2023-4-3',8,'Kidney Stone',675,'110');


/* BILL PAYMENT TABLE */
CREATE TABLE `Bill_Payment`(
`Bill_ID` INT AUTO_INCREMENT NOT NULL,
`Mode of Payment` VARCHAR(20),
`Med_ID` INT,
`Appointment_ID` INT NOT NULL,
PRIMARY KEY (`Bill_ID`)
);
	
ALTER TABLE `Bill_Payment`
ADD FOREIGN KEY (`Med_ID`) REFERENCES `Medicine` (`Med_ID`) ON DELETE CASCADE,
ADD FOREIGN KEY (`Appointment_ID`) REFERENCES `Appointments` (`AppointmentID`) ON DELETE CASCADE;

describe `Bill_Payment`;
select * from `Bill_Payment`;

INSERT INTO `Bill_Payment` VALUES 
    (20124101 , 'CREDIT CARD' , 1012 , 1),
    (20124102 , 'DEBIT CARD' , 3214 , 2),
    (20124103 , 'UPI', 4999 , 3),
    (20124104 , 'NET BANKING' , 2615 , 4),
    (20124105 , 'DEBIT CARD' , 1607 , 5),
    (20124106 , 'UPI' , 3632 , 6),
    (20124107 , 'CREDIT CARD' , 3173 , 7),
    (20124108 , 'NET BANKING' , 1395 , 8),
    (20124109 , 'CREDIT CARD' , 4101 , 9),
    (20124110 , 'UPI' , 3608 , 10 ),
    (20124111 , 'CREDIT CARD' , 1031 , 11),
    (20124112 , 'UPI' , 2750 , 12),
    (20124113 , 'NET BANKING' , 9201 , 13),
    (20124114 , 'DEBIT CARD' , NULL , 14),
    (20124115 , 'CREDIT CARD' ,  4980 , 15),
    (20124116 , 'UPI' , 1031 , 16),
    (20124117 , 'NET BANKING' , 1840 , 17),
    (20124118 , 'CREDIT CARD' , NULL , 18),
    (20124119 , 'UPI' , 1367 , 19),
    (20124120 , 'NET BANKING' , 4259 , 20),
    (20124121 , 'CREDIT CARD' , 1059 , 21),
    (20124122 , 'DEBIT CARD' , 1121 , 22),
    (20124123 , 'UPI' , 8456 , 23),
    (20124124 , 'NET BANKING' , 2641 , 24),
    (20124125 , 'DEBIT CARD' , 4763 , 25),
    (20124126 , 'UPI' , 4236 , 26),
    (20124127 , 'CREDIT CARD' , NULL , 27),
    (20124128 , 'NET BANKING' , 2872 , 28),
    (20124129 , 'CREDIT CARD' , 2924 , 29 ),
    (20124130 , 'DEBIT CARD' , 3320 , 30),
    (20124131 , 'UPI' , 9005 , 31),
    (20124132 , 'NET BANKING' , 4176 , 32),
    (20124133 , 'DEBIT CARD' , 2089 , 33),
    (20124134 , 'UPI' , NULL , 34),
    (20124135 , 'CREDIT CARD' , 3158 , 35),
    (20124136 , 'NET BANKING' , 6201 , 36),
    (20124137 , 'CREDIT CARD' , 7112 , 37),
    (20124138 , 'DEBIT CARD' , 5782 , 38),
    (20124139 , 'UPI' , 2963 , 39),
    (20124140 , 'NET BANKING' , 1586 , 40),
    (20124141 , 'DEBIT CARD' , NULL , 41),
    (20124142 , 'UPI' , 2394 , 42),
    (20124143 , 'CREDIT CARD' , 3081 , 43),
    (20124144 , 'UPI' , 4540 , 44),
    (20124145 , 'DEBIT CARD' , 8526 , 45);


CREATE TABLE `Symptom`(
indication varchar(70),
patient_id int
);

ALTER TABLE `Symptom`
ADD FOREIGN KEY (`patient_id`) REFERENCES `patient`(`patient_id`) ON DELETE CASCADE;

INSERT INTO `Symptom` VALUES
('neck pain',1),
('dizziness',1),
('headache',1),
('fever',2),
('abdominal pain',2),
('insomnia',3),
('anxiety',3),
('throat pain',4),
('cold',4),
('neck pain',5),
('dizziness',5),
('white patches',6),
('itching',6),
('abdominal pain',7),
('weakness',7),
('anxiety',8),
('mood swings',8),
('head ache',9),
('nausea',9),
('bleeding gums',11),
('red rashes',11),
('throat pain pain',10),
('ear pain',10),
('insomnia',14),
('mood swings',14),
('abdominal pain',12),
('fever',12),
('neck pain',13),
('headache',13),
('headache',15),
('nausea',15),
('bleeding gum',16),
('fever',16),
('abdominal pain',17),
('weekness',17),
('insomnia',18),
('anxiety',18),
('nausea',19),
('trouble urinating',19),
('gastric problem',20),
('pressure at abdominal',20),
('white patches',21),
('itching',21),
('joint pain',22),
('fatigue',22),
('abdominal pain',23),
('gastric problem',23),
('abdominal pain',24),
('trouble urinating',24),
('mood swings',25),
('fatigue',25),
('high bp',26),
('nausea',27),
('abdominal pain',27),
('hairfall',28),
('skin rashes',28),
('cold',29),
('ear pain',29),
('low bp',30),
('shortness of breath',31),
('chest tightness',31),
('weight loss',32),
('excess urination',32),
('weight loss',33),
('exess urination',33),
('high bp',34),
('hairfall',35),
('skin rash',35),
('abdominal pain',36),
('trouble urinating',36),
('nausea',37),
('abdominal pain',37),
('fever',40),
('weakness',40),
('hairfall',41),
('skin rash',41),
('more sleep',38),
('fatigue',38),
('chest pain',39),
('difficulty breathing',39),
('joint pain',42),
('fatigue',42),
('cough',43),
('cold',43),
('pimple',44),
('oily skin',44),
('urge to smoke',45),
('weight gain',45);


select * from `Doctors`;
select * from `patient`;
select * from `Appointments`;
select * from `pharmacy`;
select * from `Medicine`;
select * from `Bill_Payment`;
select * from `Symptom`;

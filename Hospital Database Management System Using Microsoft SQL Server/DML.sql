
USE HospitalDB;

--===============================================--
-----*Inserting data into PatientInformation*------
--===============================================--
Insert Into PatientInformation (FirstName, LastName, DOB, Gender, Address, PhoneNumber, Email) 
Values 
('Rahim', 'Ahmed', '1990-01-10', 'M', '1 Dhanmondi, Dhaka', '0171000001', 'rahim.ahmed@email.bd'),
('Fatema', 'Khatun', '1992-04-15', 'F', '15 Gulshan, Dhaka', '0171000002', 'fatema.khatun@email.bd'),
('Ayesha', 'Begum', '1989-06-20', 'F', '27 Banani, Dhaka', '0171000003', 'ayesha.begum@email.bd'),
('Kamal', 'Hossain', '1985-10-30', 'M', '9 Uttara, Dhaka', '0171000004', 'kamal.hossain@email.bd'),
('Nasima', 'Aktar', '1995-07-18', 'F', '18 Mirpur, Dhaka', '0171000005', 'nasima.aktar@email.bd'),
('Rafiq', 'Uddin', '1993-03-11', 'M', '2 Mohammadpur, Dhaka', '0171000006', 'rafiq.uddin@email.bd'),
('Hasina', 'Begum', '1994-08-24', 'F', '3 Jatrabari, Dhaka', '0171000007', 'hasina.begum@email.bd'),
('Jamal', 'Sheikh', '1987-12-12', 'M', '5 Keraniganj, Dhaka', '0171000008', 'jamal.sheikh@email.bd'),
('Laila', 'Akter', '1991-11-09', 'F', '77 Motijheel, Dhaka', '0171000009', 'laila.akter@email.bd'),
('Sohel', 'Rana', '1996-02-19', 'M', '50 Farmgate, Dhaka', '0171000010', 'sohel.rana@email.bd');


--===============================================--
------*Inserting data into DoctorInformation*------
--===============================================--
Insert Into DoctorInformation (FirstName, LastName, Specialization, PhoneNumber, Email, WorkSchedule) 
Values 
('Farid', 'Ali', 'Cardiology', '0172000001', 'farid.ali@email.bd', 'Mon-Fri: 9am-5pm'),
('Nazia', 'Haque', 'Dermatology', '0172000002', 'nazia.haque@email.bd', 'Mon-Wed, Fri: 10am-4pm'),
('Rokib', 'Hasan', 'Neurology', '0172000003', 'rokib.hasan@email.bd', 'Tue-Thu: 9am-3pm'),
('Sumaiya', 'Zaman', 'Pediatrics', '0172000004', 'sumaiya.zaman@email.bd', 'Mon-Fri: 11am-6pm'),
('Iqbal', 'Khan', 'Orthopedics', '0172000005', 'iqbal.khan@email.bd', 'Wed-Sat: 8am-2pm'),
('Sabrina', 'Ahmed', 'Gynecology', '0172000006', 'sabrina.ahmed@email.bd', 'Sun-Thu: 10am-4pm'),
('Arif', 'Chowdhury', 'Radiology', '0172000007', 'arif.chowdhury@email.bd', 'Sat-Wed: 9am-3pm'),
('Nahid', 'Islam', 'Psychiatry', '0172000008', 'nahid.islam@email.bd', 'Thu-Sun: 1pm-7pm'),
('Tasnim', 'Akter', 'Pathology', '0172000009', 'tasnim.akter@email.bd', 'Mon, Wed, Fri: 10am-5pm'),
('Rashid', 'Hossain', 'Surgery', '0172000010', 'rashid.hossain@email.bd', 'Tue-Sat: 8am-3pm');


--===============================================--
------*Inserting data into NurseInformation*-------
--===============================================--
Insert Into NurseInformation (FirstName, LastName, PhoneNumber, Email, Shift) 
Values 
('Joya', 'Khan', '0173000001', 'joya.khan@email.bd', 'Day'),
('Ripon', 'Das', '0173000002', 'ripon.das@email.bd', 'Night'),
('Anika', 'Rahman', '0173000003', 'anika.rahman@email.bd', 'Day'),
('Salim', 'Sarker', '0173000004', 'salim.sarker@email.bd', 'Night'),
('Bristi', 'Biswas', '0173000005', 'bristi.biswas@email.bd', 'Day'),
('Shariful', 'Miah', '0173000006', 'shariful.miah@email.bd', 'Night'),
('Rehana', 'Chowdhury', '0173000007', 'rehana.chowdhury@email.bd', 'Day'),
('Mahfuz', 'Rahman', '0173000008', 'mahfuz.rahman@email.bd', 'Night'),
('Tania', 'Begum', '0173000009', 'tania.begum@email.bd', 'Day'),
('Sajib', 'Barua', '0173000010', 'sajib.barua@email.bd', 'Night');


--===============================================--
--------*Inserting data into Appointments*---------
--===============================================--
Insert Into Appointments (PatientID, DoctorID, DateAndTime, PurposeOfVisit) 
Values 
(1, 1, '2023-09-25 10:00:00', 'Routine Checkup'),
(2, 2, '2023-09-25 11:00:00', 'Skin rash'),
(3, 3, '2023-09-26 09:00:00', 'Migraine concerns'),
(4, 4, '2023-09-26 15:00:00', 'Child Vaccination'),
(5, 5, '2023-09-27 12:00:00', 'Knee pain'),
(6, 6, '2023-09-27 14:00:00', 'Pregnancy check'),
(7, 7, '2023-09-28 10:00:00', 'X-ray review'),
(8, 8, '2023-09-28 16:00:00', 'Anxiety symptoms'),
(9, 9, '2023-09-29 11:00:00', 'Blood test results'),
(10, 10, '2023-09-29 09:00:00', 'Post surgery review');


--===============================================--
------*Inserting data into WardInformation*--------
--===============================================--
Insert Into WardInformation (WardType, BedCount)
Values 
('General', 20),
('ICU', 5),
('Maternity', 10),
('Pediatric', 8),
('Surgical', 15),
('Orthopedic', 7),
('Cardiac', 6),
('Isolation', 4),
('Neurology', 5),
('Burn', 3);


--===============================================--
------*Inserting data into PatientAdmission*-------
--===============================================--
Insert Into PatientAdmission (PatientID, WardID, DateOfAdmission, ExpectedDischarge)
Values 
(1, 1, '2023-09-20', '2023-09-25'),
(2, 2, '2023-09-21', '2023-09-26'),
(3, 3, '2023-09-22', '2023-09-27'),
(4, 4, '2023-09-23', '2023-09-28'),
(5, 5, '2023-09-20', '2023-09-25'),
(6, 6, '2023-09-21', '2023-09-26'),
(7, 7, '2023-09-22', '2023-09-27'),
(8, 8, '2023-09-23', '2023-09-28'),
(9, 9, '2023-09-24', '2023-09-29'),
(10, 10, '2023-09-25', '2023-09-30');


--===============================================--
-----*Inserting data into BillingInformation*------
--===============================================--
Insert Into BillingInformation (PatientID, TotalAmount, PaidAmount, BillingDate)
Values 
(1, 1500.00, 1500.00, '2023-09-25'),
(2, 2500.00, 2000.00, '2023-09-26'),
(3, 1200.00, 1200.00, '2023-09-27'),
(4, 1000.00, 500.00, '2023-09-28'),
(5, 1600.00, 1600.00, '2023-09-25'),
(6, 1800.00, 1500.00, '2023-09-26'),
(7, 2200.00, 2000.00, '2023-09-27'),
(8, 1100.00, 1100.00, '2023-09-28'),
(9, 1700.00, 1700.00, '2023-09-29'),
(10, 2000.00, 1500.00, '2023-09-30');


--===============================================--
-------*Inserting data into MedicalRecords*--------
--===============================================--
Insert Into MedicalRecords (PatientID, Diagnosis, Prescription, Notes)
Values 
(1, 'High Blood Pressure', 'Amlodipine 5mg', 'Monitor BP daily.'),
(2, 'Allergic Dermatitis', 'Antihistamines', 'Avoid allergens.'),
(3, 'Migraine', 'Ibuprofen', 'Stay in a dim room.'),
(4, 'Healthy Child', 'Vitamin D drops', 'Routine vaccination.'),
(5, 'Osteoarthritis', 'Paracetamol', 'Limit physical strain.'),
(6, 'Pregnant - First Trimester', 'Folic Acid', 'Regular check-ups.'),
(7, 'Fractured wrist', 'Painkillers', 'Wrist to be in cast.'),
(8, 'Generalized Anxiety Disorder', 'SSRIs', 'Therapy sessions suggested.'),
(9, 'Anemia', 'Iron supplements', 'Consume iron-rich food.'),
(10, 'Recovering from Surgery', 'Antibiotics', 'Regular dressing.');


--===============================================--
----------*Inserting data into LabTests*-----------
--===============================================--
Insert Into LabTests (PatientID, TestName, TestResults, TestDate)
Values 
(1, 'Blood Pressure', '140/90', '2023-09-21'),
(2, 'Allergy Panel', 'Positive for Pollen', '2023-09-22'),
(3, 'MRI Brain', 'Normal', '2023-09-23'),
(4, 'Blood Test', 'Normal', '2023-09-24'),
(5, 'X-Ray Knee', 'Signs of degeneration', '2023-09-25'),
(6, 'Ultrasound', 'Healthy fetus', '2023-09-26'),
(7, 'X-Ray Wrist', 'Fracture seen', '2023-09-27'),
(8, 'Mental Health Assessment', 'GAD', '2023-09-28'),
(9, 'Iron Levels', 'Low', '2023-09-29'),
(10, 'Wound Swab', 'No infection', '2023-09-30');


--===============================================--
----------*Inserting data into Pharmacy*-----------
--===============================================--
Insert Into Pharmacy (MedicineName, StockCount, Price)
Values 
('Amlodipine 5mg', 100, 5.00),
('Antihistamines', 80, 4.50),
('Ibuprofen', 150, 4.00),
('Vitamin D drops', 60, 6.00),
('Paracetamol', 200, 3.50),
('Folic Acid', 75, 5.50),
('Painkillers', 90, 5.00),
('SSRIs', 65, 12.00),
('Iron supplements', 70, 6.50),
('Antibiotics', 100, 10.00);


--=======================================================================--
--*Inserting data into MedicinePrescription, linking with MedicalRecords*--
--=======================================================================--
Insert Into MedicinePrescription (RecordID, MedicineID, Dosage, Duration)
Values  
(1, 1, 'One daily', '30 Days'),
(2, 2, 'One daily', '14 Days'),
(3, 3, 'As needed', '7 Days'),
(4, 4, 'One drop daily', '60 Days'),
(5, 5, 'Twice daily', '15 Days'),
(6, 6, 'One daily', '90 Days'),
(7, 7, 'As needed', '7 Days'),
(8, 8, 'One daily', '30 Days'),
(9, 9, 'One daily', '30 Days'),
(10, 10, 'Twice daily', '7 Days');


--===============================================--
-----*Inserting data into EmployeeInformation*-----
--===============================================--
Insert Into EmployeeInformation (FirstName, LastName, Role, PhoneNumber, Email, HireDate)
Values 
('Nazia', 'Haque', 'Doctor', '0172000002', 'nazia.haque@email.bd', '2018-03-12'),
('Rokib', 'Hasan', 'Doctor', '0172000003', 'rokib.hasan@email.bd', '2017-09-15'),
('Sumaiya', 'Zaman', 'Doctor', '0172000004', 'sumaiya.zaman@email.bd', '2020-01-20'),
('Iqbal', 'Khan', 'Doctor', '0172000005', 'iqbal.khan@email.bd', '2016-06-05'),
('Sabrina', 'Ahmed', 'Doctor', '0172000006', 'sabrina.ahmed@email.bd', '2018-12-10'),
('Arif', 'Chowdhury', 'Doctor', '0172000007', 'arif.chowdhury@email.bd', '2019-02-02'),
('Nahid', 'Islam', 'Doctor', '0172000008', 'nahid.islam@email.bd', '2015-07-08'),
('Tasnim', 'Akter', 'Doctor', '0172000009', 'tasnim.akter@email.bd', '2020-04-14'),
('Rashid', 'Hossain', 'Doctor', '0172000010', 'rashid.hossain@email.bd', '2017-08-19'),
('Joya', 'Khan', 'Nurse', '0173000001', 'joya.khan@email.bd', '2018-11-11'),
('Ripon', 'Das', 'Nurse', '0173000002', 'ripon.das@email.bd', '2019-12-12'),
('Anika', 'Rahman', 'Nurse', '0173000003', 'anika.rahman@email.bd', '2021-01-01'),
('Salim', 'Sarker', 'Nurse', '0173000004', 'salim.sarker@email.bd', '2016-02-14'),
('Bristi', 'Biswas', 'Nurse', '0173000005', 'bristi.biswas@email.bd', '2015-03-03'),
('Shariful', 'Miah', 'Nurse', '0173000006', 'shariful.miah@email.bd', '2017-04-24'),
('Rehana', 'Chowdhury', 'Nurse', '0173000007', 'rehana.chowdhury@email.bd', '2018-05-05'),
('Mahfuz', 'Rahman', 'Nurse', '0173000008', 'mahfuz.rahman@email.bd', '2020-06-16'),
('Tania', 'Begum', 'Nurse', '0173000009', 'tania.begum@email.bd', '2019-07-07'),
('Sajib', 'Barua', 'Nurse', '0173000010', 'sajib.barua@email.bd', '2021-08-08');


--===============================================--
------*Inserting data into MedicalProcedures*------
--===============================================--
Insert Into MedicalProcedures (ProcedureName, Description, DateAndTime, PatientID)
Values 
('Cardiac Bypass', 'Surgery to improve blood flow to the heart', '2023-01-15 09:00:00', 1),
('Knee Replacement', 'Surgery to replace worn-out knee joints', '2023-02-05 10:30:00', 2),
('Appendectomy', 'Surgery to remove the appendix', '2023-02-20 11:00:00', 3),
('Cataract Surgery', 'Procedure to treat the clouding of the eye', '2023-03-05 09:30:00', 4),
('Dental Implant', 'Procedure to replace missing teeth', '2023-03-15 10:00:00', 5),
('Tonsillectomy', 'Surgery to remove the tonsils', '2023-04-01 08:00:00', 6),
('Spinal Fusion', 'Surgery to join two bones together in the spine', '2023-04-18 12:00:00', 7),
('Hernia Repair', 'Surgery to treat a hernia', '2023-05-10 10:45:00', 8),
('Gastric Bypass', 'Surgery for weight loss', '2023-05-24 11:30:00', 9),
('Cholecystectomy', 'Surgery to remove the gallbladder', '2023-06-03 09:15:00', 10);


--===============================================--
----------------------*AND*------------------------
--===============================================--
Select * From DoctorInformation
Where FirstName = 'Farid' And LastName = 'Ali';


--===============================================--
---------------------*NOT IN*----------------------
--===============================================--
Select * From DoctorInformation
Where DoctorID Not In (1, 2, 3);


--===============================================--
--------------------*BETWEEN*----------------------
--===============================================--
Select * From DoctorInformation
Where DoctorID Between 10 And 20;


--===============================================--
-----------------------*LIKE*----------------------
--===============================================--
Select * From DoctorInformation
Where FirstName Like 'Fa%';


--===============================================--
-----------------*BETWEEN & AND*-------------------
--===============================================--
Select * From DoctorInformation
Where DoctorID Between 10 And 20 And FirstName Like 'Ra%';


--===============================================--
---------------------*COUNT*-----------------------
--===============================================--
Select Count(*) As TotalPatientsAdmitted
From PatientAdmission;


--===============================================--
--------------------*AVERAGE*----------------------
--===============================================--
Select Avg(PaidAmount) As AveragePaidAmount
From BillingInformation;


--===============================================--
---------------------*MAXIMUM*---------------------
--===============================================--
Select Max(TotalAmount) As HighestBillAmount
From BillingInformation;


--===============================================--
--------------------*MINIMUM*----------------------
--===============================================--
Select Min(DateOfAdmission) As EarliestAdmissionDate
From PatientAdmission;


--===============================================--
--------------------*ORDER BY*---------------------
--===============================================--
Select FirstName, LastName, DOB
From PatientInformation
Order By DOB DESC;


--===============================================--
--------------------*GROUP BY*---------------------
--===============================================--
Select DoctorID, Count(*) As NumberOfPatients
From Appointments
Group By DoctorID;


--===============================================--
----------------------*HAVING*---------------------
--===============================================--
Select DoctorID, Count(*) As NumberOfPatients
From Appointments
Group By DoctorID
Having Count(*) > 0;


--===============================================--
---------------------*ROLLUP*----------------------
--===============================================--
Select DoctorID, Count(*) As NumberOfPatients
From Appointments
Group By Rollup (DoctorID);


--===============================================--
------------------*GROUPING SETS*------------------
--===============================================--
Select DoctorID, PatientID, Count(*) As NumberOfAppointments
From Appointments
Group By Grouping Sets (DoctorID, PatientID, ());


--===============================================--
----------------------*CUBE*-----------------------
--===============================================--
Select DoctorID, PatientID, Count(*) As NumberOfAppointments
From Appointments
Group By Cube (DoctorID, PatientID);


--===============================================--
----------------------*OVER*-----------------------
--===============================================--
Select DoctorID, Count(*) Over (Partition By DoctorID Order By DateAndTime) As RunningTotalAppointments
From Appointments;


--===============================================--
---------------------*RANK*------------------------
--===============================================--
Select FirstName, LastName, DOB,
       Rank() Over (Order By DOB) As AgeRank
From PatientInformation;


--===============================================--
---------------------*EXISTS*----------------------
--===============================================--
Select FirstName, LastName
From PatientInformation
Where Exists (Select 1 From Appointments Where Appointments.PatientID = PatientInformation.PatientID And PatientID = 1);


--===============================================--
-------------------*NOT EXISTS*--------------------
--===============================================--
Select FirstName, LastName
From PatientInformation
Where Not Exists (Select 1 From Appointments Where Appointments.PatientID = PatientInformation.PatientID);


--===============================================--
----------------------*ANY*------------------------
--===============================================--
Select Distinct DoctorID
From Appointments
Where DateAndTime > Any (Select DateAndTime From Appointments Where DateAndTime > '2023-09-26');


--===============================================--
-----------------------*ALL*-----------------------
--===============================================--
Select Distinct DoctorID
From Appointments A1
Where DateAndTime > All (Select DateAndTime From Appointments A2 Where A1.DoctorID = A2.DoctorID And DateAndTime <= '2023-09-23');


--===============================================--
-----------------------*CAST*----------------------
--===============================================--
Select Cast(TotalAmount As varchar(20)) As TotalAmountString
From BillingInformation;


--===============================================--
--------------------*CONVERT*----------------------
--===============================================--
Select Convert(varchar, DOB, 103) As FormattedDOB
From PatientInformation;


--===============================================--
-----------------------*DATE*----------------------
--===============================================--
Select Cast(DateAndTime As Date) As AppointmentDate
From Appointments;


--===============================================--
---------------------*TIME*------------------------
--===============================================--
Select Cast(DateAndTime As Time) As AppointmentTime
From Appointments;


--===============================================--
------------------*ANALYTICS*----------------------
--===============================================--
Select 
    di.FirstName + ' ' + di.LastName As DoctorName,
    di.Specialization,
    Count(a.AppointmentID) As 'TotalAppointments',
    MIN(a.DateAndTime) As 'FirstAppointmentDate',
    MAX(a.DateAndTime) As 'LastAppointmentDate',
    LEAD(di.FirstName + ' ' + di.LastName) Over(Order By di.DoctorID) As 'NextDoctorName',
    LAG(di.FirstName + ' ' + di.LastName) Over(Order By di.DoctorID) As 'PreviousDoctorName',
    PERCENT_RANK() Over(Order By di.DoctorID ASC) As 'DoctorPercentRank'
From 
    DoctorInformation di
Left Join 
    Appointments a On di.DoctorID = a.DoctorID
Group By
    di.FirstName, di.LastName, di.Specialization, di.DoctorID
Order By
    TotalAppointments DESC, di.DoctorID;


--===============================================--
-------------------*JOIN TABLE*--------------------
--===============================================--
Select 
    p.FirstName, 
    p.LastName, 
    a.DateAndTime As AppointmentDate
From 
    PatientInformation p
Join 
    Appointments a On p.PatientID = a.PatientID;


--===============================================--
--------------*JOIN with WHERE CLAUSE*-------------
--===============================================--
Select 
    p.FirstName, 
    p.LastName, 
    a.DateAndTime As AppointmentDate
From 
    PatientInformation p
Join 
    Appointments a On p.PatientID = a.PatientID
Where 
    a.DateAndTime > '2023-09-27';


--===============================================--
---------------*JOIN with ORDER BY*----------------
--===============================================--
Select 
    p.FirstName, 
    p.LastName, 
    a.DateAndTime As AppointmentDate
From 
    PatientInformation p
Join 
    Appointments a On p.PatientID = a.PatientID
Order By 
    a.DateAndTime DESC;


--===============================================--
----------*JOIN with GROUP BY and HAVING*----------
--===============================================--
Select 
    p.FirstName, 
    p.LastName, 
    Count(a.AppointmentID) As NumberOfAppointments
From 
    PatientInformation p
Join 
    Appointments a On p.PatientID = a.PatientID
Group By 
    p.PatientID, p.FirstName, p.LastName
Having 
    Count(a.AppointmentID) > 0;


--===============================================--
-------------------*SUB QUERY*---------------------
--===============================================--
Select 
    p.FirstName, 
    p.LastName, 
    a.DateAndTime As AppointmentDate
From 
    PatientInformation p
Join 
    Appointments a On p.PatientID = a.PatientID
Where 
    a.DateAndTime = (Select Max(DateAndTime) From Appointments);


--===============================================--
----------------------*UNION*----------------------
--===============================================--
Select Top 5 FirstName, PatientID
From PatientInformation
Union
Select Top 5 FirstName, PatientID
From PatientInformation 
Order By PatientID DESC;


--===============================================--
----------------------*CASE*-----------------------
--===============================================--
Select 
    DateAndTime,
    Case 
        When Datepart(Hour, DateAndTime) < 12 Then 'Morning'
        When Datepart(Hour, DateAndTime) BETWEEN 12 AND 17 Then 'Afternoon'
        Else 'Evening'
    End As TimeOfDay
From Appointments;


--===============================================--
------------------*MERGE TABLE*--------------------
--===============================================--
Create Table MedicalProcedures_Merge
(
    ProcedureID int,
    ProcedureName nvarchar(255),
    Description nvarchar(1000),
    DateAndTime datetime,
    PatientID int
);


--===============================================--
--(Allow explicit inserts into the identity column)
--===============================================--
Set Identity_Insert MedicalProcedures ON;


--===============================================--
-------------*MERGE (Insert, Update)*--------------
--===============================================--
Merge Into MedicalProcedures As Target
Using MedicalProcedures_Merge As Source
On Target.ProcedureID = Source.ProcedureID
When Matched Then 
    Update Set 
        Target.ProcedureName = Source.ProcedureName, 
        Target.Description = Source.Description,
        Target.DateAndTime = Source.DateAndTime,
        Target.PatientID = Source.PatientID
When Not Matched By Target Then
    Insert (ProcedureID, ProcedureName, Description, DateAndTime, PatientID)
    Values (Source.ProcedureID, Source.ProcedureName, Source.Description, Source.DateAndTime, Source.PatientID);


--=========================================================================--
--(Turn off the ability to insert explicit values into the identity column)--
--=========================================================================--
Set Identity_Insert MedicalProcedures OFF;


--===============================================--
----------(Optional: Cleanup after merge)----------
--===============================================--
Delete From MedicalProcedures_Merge;


--===============================================--
---------*CTE (Common Table Expressions)*----------
--===============================================--
With CTE_MultipleAppointments As 
(
    Select 
        PatientID, 
        Count(AppointmentID) As NumOfAppointments
    From 
        Appointments
    Group By 
        PatientID
    Having 
        COUNT(AppointmentID) > 0
)
Select 
    p.FirstName, 
    p.LastName,
    c.NumOfAppointments
From 
    CTE_MultipleAppointments c
Join 
    PatientInformation p On c.PatientID = p.PatientID;
--===============================================--
------/*Hospital Database Management System*/------
--===============================================--
Create Database HospitalDB
On Primary
(
	Name = 'HospitalDB_Data_1', Filename ='C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HospitalDB_Data_1.mdf',
	Size = 25MB,
	MaxSize = 100MB,
	FileGrowth = 5%
)
Log On
(
	Name = 'HospitalDB_Log_1', Filename ='C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HospitalDB_Log_1.ldf',
	Size = 2MB,
	MaxSize = 25MB,
	FileGrowth = 1%
);

USE HospitalDB;

--===============================================--
----------*Patient Information Table*--------------
--===============================================--
Create Table PatientInformation 
(
    PatientID int primary key identity,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    DOB date,
    Gender char(1),
    Address nvarchar(255),
    PhoneNumber nvarchar(15),
    Email nvarchar(100)
);


--===============================================--
-----------*Doctor Information Table*--------------
--===============================================--
Create Table DoctorInformation 
(
    DoctorID int primary key identity,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    Specialization nvarchar(100),
    PhoneNumber nvarchar(15),
    Email nvarchar(100),
    WorkSchedule nvarchar(255)
);


--===============================================--
------------*Nurse Information Table*--------------
--===============================================--
Create Table NurseInformation 
(
    NurseID int primary key identity,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    PhoneNumber nvarchar(15),
    Email nvarchar(100),
    Shift nvarchar(50)
);


--===============================================--
--------------*Appointments Table*-----------------
--===============================================--
Create Table Appointments 
(
    AppointmentID int primary key identity,
    PatientID int foreign key references PatientInformation(PatientID),
    DoctorID int foreign key references DoctorInformation(DoctorID),
    DateAndTime datetime,
    PurposeOfVisit nvarchar(255)
);


--===============================================--
-------------*Ward Information Table*--------------
--===============================================--
Create Table WardInformation 
(
    WardID int primary key identity,
    WardType nvarchar(50),
    BedCount int
);


--===============================================--
------------*Patient Admission Table*--------------
--===============================================--
Create Table PatientAdmission 
(
    AdmissionID int primary key identity,
    PatientID int foreign key references PatientInformation(PatientID),
    WardID int foreign key references WardInformation(WardID),
    DateOfAdmission date,
    ExpectedDischarge date
);


--===============================================--
----------*Billing Information Table*--------------
--===============================================--
Create Table BillingInformation 
(
    BillID int primary key identity,
    PatientID int foreign key references PatientInformation(PatientID),
    TotalAmount decimal(10,2),
    PaidAmount decimal(10,2),
    BillingDate date
);


--===============================================--
------------*Medical Records Table*----------------
--===============================================--
Create Table MedicalRecords 
(
    RecordID int primary key identity,
    PatientID int foreign key references PatientInformation(PatientID),
    Diagnosis nvarchar(255),
    Prescription nvarchar(255),
    Notes nvarchar(500)
);


--===============================================--
---------------*Lab Tests Table*-------------------
--===============================================--
Create Table LabTests 
(
    TestID int primary key identity,
    PatientID int foreign key references PatientInformation(PatientID),
    TestName nvarchar(100),
    TestResults nvarchar(255),
    TestDate date
);


--===============================================--
----------------*Pharmacy Table*-------------------
--===============================================--
Create Table Pharmacy 
(
    MedicineID int primary key identity,
    MedicineName nvarchar(100),
    StockCount int,
    Price decimal(10,2)
);


--===============================================--
----------*Medicine Prescription Table*------------
--===============================================--
Create Table MedicinePrescription 
(
    PrescriptionID int primary key identity,
    RecordID int foreign key references MedicalRecords(RecordID),
    MedicineID int foreign key references Pharmacy(MedicineID),
    Dosage nvarchar(100),
    Duration nvarchar(50)
);


--===============================================--
-----------*Employee Information Table*------------
--===============================================--
Create Table EmployeeInformation 
(
    EmployeeID int primary key identity,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    Role nvarchar(50),
    PhoneNumber nvarchar(15),
    Email nvarchar(100),
    HireDate date
);


--===============================================--
------------*MedicalProcedures Table*--------------
--===============================================--
Create Table MedicalProcedures
(
    ProcedureID int identity(1,1) primary key nonclustered,
    ProcedureName nvarchar(255),
    Description nvarchar(1000),
    DateAndTime datetime default getdate(),
    PatientID int references PatientInformation(PatientID)
);


--===============================================--
-------------*CREATE CLUSTERED INDEX*--------------
--===============================================--
Create Clustered Index IDX_MedicalProcedures_ProcedureID On MedicalProcedures (ProcedureID);


--===============================================--
----------*CREATE a NON-CLUSTERED INDEX*-----------
--===============================================--
Create NonClustered Index IDX_MedicalProcedures_ProcedureName On MedicalProcedures (ProcedureName);


--===============================================--
--------------*SCALAR VALUE FUNCTION*--------------
--===============================================--
Create Function dbo.GetPatientAge(@PatientID int)
Returns int
As
Begin
    Return 
    (
        Select Datediff(Year, DOB, Getdate()) 
        From PatientInformation 
        Where PatientID = @PatientID
    )
End;

--Test Function:=>
--================
Select dbo.GetPatientAge(1);


--===============================================--
--------------*TABLE VALUE FUNCTION*---------------
--===============================================--
Create Function dbo.GetAppointmentsByDate(@Date date)
Returns Table
As
Return
(
    Select AppointmentID, DateAndTime, PatientID 
    From Appointments
    Where Cast(DateAndTime As Date) = @Date
);

--Test Function:=>
--================
Select * From dbo.GetAppointmentsByDate('2023-09-27');


--===============================================--
------*MULTI STATEMENT TABLE VALUE FUNCTION*-------
--===============================================--
Create Function dbo.GetNextThreeAppointments(@PatientID int)
Returns @UpcomingAppointments Table 
(
    AppointmentID int,
    DateAndTime datetime
)
As
Begin
    Insert Into @UpcomingAppointments(AppointmentID, DateAndTime)
    Select Top 3 AppointmentID, DateAndTime 
    From Appointments 
    Where PatientID = @PatientID AND DateAndTime > Getdate() 
    Order By DateAndTime ASC;

    Return;
End;

--Test Function:=>
--================
Select * From dbo.GetNextThreeAppointments(1);


--==========================================================--
--*STORED PROCEDURE(Create, Select, Insert, Update, Delete)*--
--==========================================================--
Create Procedure sp_DoctorInformation_CRUD
    @Operation nvarchar(10), 
    @DoctorID int = Null,
    @FirstName nvarchar(50) = Null, 
    @LastName nvarchar(50) = Null
As
Begin
    If @Operation = 'SELECT'
    Begin
        If @DoctorID IS NULL
            Select * From DoctorInformation;
        Else
            Select * From DoctorInformation Where DoctorID = @DoctorID;
    End

    If @Operation = 'INSERT'
    Begin
        Insert Into DoctorInformation (FirstName, LastName)
        Values (@FirstName, @LastName);
    End

    If @Operation = 'UPDATE'
    Begin
        Update DoctorInformation
        Set FirstName = @FirstName, LastName = @LastName
        Where DoctorID = @DoctorID;
    End

    If @Operation = 'DELETE'
    Begin
        Delete From DoctorInformation Where DoctorID = @DoctorID;
    End
End;

--TEST PROCEDURE:=>
--=================
Exec sp_DoctorInformation_CRUD 'SELECT';
Exec sp_DoctorInformation_CRUD 'INSERT', Null, 'Jahid', 'Hasan';
Exec sp_DoctorInformation_CRUD 'SELECT', 11;
Exec sp_DoctorInformation_CRUD 'UPDATE', 11, 'Jahid', 'Khan';
Exec sp_DoctorInformation_CRUD 'DELETE', 11;


--===============================================--
-----------*PROCEDURE INPUT PARAMETER*-------------
--===============================================--
Create Procedure sp_GetDoctorDetailsByID
    @InputDoctorID int
As
Begin
    Select * From DoctorInformation Where DoctorID = @InputDoctorID;
End;

--Usage:=>
--========
Exec sp_GetDoctorDetailsByID 5;


--===============================================--
-----------*PROCEDURE OUTPUT PARAMETER*------------
--===============================================--
Create Procedure sp_GetDoctorNameByID
    @InputDoctorID int,
    @OutputFullName nvarchar(100) Output
As
Begin
    Select Top 1 @OutputFullName = FirstName +' '+ LastName 
    From DoctorInformation 
    Where DoctorID = @InputDoctorID;

    Print @OutputFullName;
End;

--Usage:=>
--========
Exec sp_GetDoctorNameByID 5, '';


--===============================================--
------*RETURN STATEMENT in STORED PROCEDURE*-------
--===============================================--
Create Procedure sp_CheckDoctorExistence
    @InputDoctorID int
As
Begin
    If Exists (Select 1 From DoctorInformation Where DoctorID = @InputDoctorID)
        Return 1;
    Else
        Return 0;
End;

--Usage:=>
--========
Declare @Status int;
Exec @Status = sp_CheckDoctorExistence 5;
Select @Status as ExistenceStatus;


--===============================================--
------------------*Trigger Table*------------------
--===============================================--
Create Table MedicationLog
(
    LogID int primary key identity(1,1),
    MedicationName nvarchar(255),
    PrescribedByDoctorID int,
    PrescribedForPatientID int,
    DatePrescribed date,
    Dosage nvarchar(100)
);


--===============================================--
-----------------*INSTEAD TRIGGER*-----------------
--===============================================--
Create Trigger trg_InsteadDeleteMedicationLog
On MedicationLog
Instead Of Delete
As
Begin
    Print 'Direct deletions from MedicationLog are not allowed. Please contact the database administrator.';
End;

Delete From MedicationLog Where LogID = 2;


--===============================================--
------------------*AFTER TRIGGER*------------------
--===============================================--
Create Trigger trg_AfterInsertMedicationLog
On MedicationLog
After Insert
As
Begin
    Declare @LogID int;
    Select @LogID = LogID From INSERTED;
    Print 'Medication with LogID ' + Cast(@LogID as nvarchar(10)) + ' has been successfully added.';
End;

Insert Into MedicationLog(MedicationName, PrescribedByDoctorID, PrescribedForPatientID, DatePrescribed, Dosage)
Values ('Amoxicillin', 5, 10, Getdate(), '500mg every 8 hours');


--===============================================--
-----------------*CREATE VIEW*---------------------
--===============================================--
Create View vw_AllPatients
As
Select PatientID, FirstName, LastName, DOB
From PatientInformation;

--Test Data From This View:=>
--===========================
Select * From vw_AllPatients;


--===============================================--
--------*CREATE VIEW with Only ENCRYPTION*---------
--===============================================--
Create View vw_EncryptedPatients With Encryption
As
Select PatientID, FirstName, LastName, DOB
From PatientInformation;

--Test Data From This View:=>
--===========================
Select * From vw_EncryptedPatients;


--===============================================--
-------*CREATE VIEW with Only SCHEMABINDING*-------
--===============================================--
Create View vw_SchemaBoundPatients With Schemabinding
As
Select PatientID, FirstName, LastName, DOB
From dbo.PatientInformation;

--Test Data From This View:=>
--===========================
Select * From vw_SchemaBoundPatients;


--========================================================--
--*CREATE VIEW With ENCRYPTION and SCHEMABINDING Together*--
--========================================================--
Create View vw_EncryptedSchemaBoundPatients With Encryption, Schemabinding
As
Select PatientID, FirstName, LastName, DOB
From dbo.PatientInformation;

--Test Data From This View:=>
--===========================
Select * From vw_EncryptedSchemaBoundPatients;


--===============================================--
---------*ALTER TABLE(Add, Drop column)*-----------
--===============================================--
Alter Table EmployeeInformation
Add MiddleName nvarchar(50);


Alter Table EmployeeInformation
Drop Column MiddleName;

--===============================================--
-------------------*Test Table*--------------------
--===============================================--
Select * From PatientInformation;
Select * From DoctorInformation;
Select * From NurseInformation;
Select * From Appointments;
Select * From WardInformation;
Select * From PatientAdmission;
Select * From BillingInformation;
Select * From MedicalRecords;
Select * From LabTests;
Select * From Pharmacy;
Select * From MedicinePrescription;
Select * From EmployeeInformation;


--===============================================--
-------------------*Drop Table*--------------------
--===============================================--
Drop Table PatientInformation;
Drop Table DoctorInformation;
Drop Table NurseInformation;
Drop Table Appointments;
Drop Table WardInformation;
Drop Table PatientAdmission;
Drop Table BillingInformation;
Drop Table MedicalRecords;
Drop Table LabTests;
Drop Table Pharmacy;
Drop Table MedicinePrescription;
Drop Table EmployeeInformation;


--===============================================--
-------------------*Drop Index*--------------------
--===============================================--
Drop Index IDX_MedicalProcedures_ProcedureID;
Drop Index IDX_MedicalProcedures_ProcedureName;


--===============================================--
-----------------*Drop Function*-------------------
--===============================================--
Drop Function dbo.GetPatientAge;
Drop Function dbo.GetAppointmentsByDate;
Drop Function dbo.GetNextThreeAppointments;


--===============================================--
----------------*Drop Procedure*-------------------
--===============================================--
Drop Proc sp_DoctorInformation_CRUD;
Drop Proc sp_GetDoctorDetailsByID;
Drop Proc sp_GetDoctorNameByID;


--===============================================--
-----------------*Drop Trigger*--------------------
--===============================================--
Drop Trigger trg_InsteadDeleteMedicationLog;
Drop Trigger trg_AfterInsertMedicationLog;


--===============================================--
-------------------*Drop View*---------------------
--===============================================--
Drop View vw_AllPatients;
Drop View vw_EncryptedPatients;
Drop View vw_SchemaBoundPatients;
Drop View vw_EncryptedSchemaBoundPatients;
CREATE TABLE Doctors (
    DoctorID INT IDENTITY(1,1) PRIMARY KEY,
    DoctorName NVARCHAR(100) NOT NULL,
    Specialization NVARCHAR(100) NOT NULL,
    HireDate DATE,
    IsActive BIT DEFAULT 1,
);

CREATE TABLE Patients (
    PatientID INT IDENTITY(1,1) PRIMARY KEY,
    PatientName NVARCHAR(100) NOT NULL,
    IDNumber CHAR(13) NOT NULL,
    DateOfBirth DATE NOT NULL,
    ContactPhone NVARCHAR(100),
    EmergencyContact NVARCHAR(100),
    AdmissionDate DATETIME DEFAULT GETDATE(),
    Diagnosis INT,
    DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID)
);

CREATE TABLE Appointments (
    AppointmentID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
    DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID),
    AppointmentDate DATETIME NOT NULL,
    Reason NVARCHAR(200),
    Status NVARCHAR(20) DEFAULT 'Scheduled',
    Notes NVARCHAR(200)
);

CREATE TABLE StaffDuties (
    DutyID INT IDENTITY(1,1) PRIMARY KEY,
    StaffID INT NOT NULL,
    DepartmentID INT NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Description NVARCHAR(200)
);

CREATE TABLE Sales (
    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount AS (Quantity * UnitPrice),
    SaleDate DATETIME DEFAULT GETDATE(),
    StoreLocation NVARCHAR(50),
    Diagnosis INT,
    DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID)
);

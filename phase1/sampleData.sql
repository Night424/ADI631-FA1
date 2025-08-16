INSERT INTO Doctors (DoctorName, Specialization) VALUES ('Dr. John Smith', 'Cardiology'), ('Dr. Jane Doe', 'Neurology');

INSERT INTO Patients (PatientName, IDNumber, DateOfBirth, DoctorID) VALUES 
('John Smith', '9001015009087', '1990-01-01', 1),
('Sarah Jones', '9505051234088', '1995-05-05', 2);

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Reason) VALUES 
(1, 1, GETDATE(), 'Checkup'),
(2, 2, GETDATE(), 'Follow up');

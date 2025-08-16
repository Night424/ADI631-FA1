-- Doctors
GRANT SELECT, INSERT ON Patients TO Role_Doctor;
GRANT SELECT, INSERT ON Appointments TO Role_Doctor;

-- Nurses
GRANT SELECT ON Patients TO Role_Nurse;
GRANT UPDATE ON Appointments TO Role_Nurse;

GRANT CONTROL ON DATABASE::MedixCareDB TO AdminPete;

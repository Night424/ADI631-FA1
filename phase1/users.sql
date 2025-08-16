-- Dr James
CREATE LOGON DrJamesLogin WITH PASSWORD = 'Password123!';
CREATE USER DrJames FOR LOGIN DrJamesLogin;

-- Nurse Thandi
CREATE LOGIN NurseThandiLogin WITH PASSWORD = 'Password123!';
CREATE USER NurseThandi FOR LOGIN NurseThandiLogin;

-- Admin Pete
CREATE LOGIN AdminPeteLogin WITH PASSWORD = 'Password123!';
CREATE USER AdminPete FOR LOGIN AdminPeteLogin;
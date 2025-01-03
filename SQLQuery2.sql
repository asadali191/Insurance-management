create database InsuranceData;
use InsuranceData;


----for migration table

--CREATE TABLE dbo._EFMigrationsHistory (
--    MigrationId NVARCHAR(150) NOT NULL,
--    ProductVersion NVARCHAR(32) NOT NULL,
--    CONSTRAINT PK__EFMigrationsHistory PRIMARY KEY (MigrationId)
--);


----for Admin Detail

--CREATE TABLE dbo.AdminDetails (
--    Id INT NOT NULL,
--    username NVARCHAR(MAX) NOT NULL,
--    password NVARCHAR(MAX) NOT NULL,
--    CONSTRAINT PK_AdminDetails PRIMARY KEY (Id)
--);

--drop table dbo.AdminDetails;
--INSERT INTO dbo.AdminDetails VALUES (1,'Asad Ali' , 'asad123' );



---- for agent table

--CREATE TABLE dbo.AgentDetails (
--    id INT IDENTITY(1,1) NOT NULL,
--    agent_id INT NOT NULL,
--    password NVARCHAR(MAX) NOT NULL,
--    Agent_name NVARCHAR(MAX) NOT NULL,
--    Agent_contact NVARCHAR(MAX) NOT NULL,
--    CONSTRAINT PK_AgentDetails PRIMARY KEY (id)
--);

--drop table dbo.AgentDetails;

--INSERT INTO dbo.AgentDetails VALUES (1011 , 1 , 'password' , 'Shumail' , '02312312321')

---- for policies
--CREATE TABLE dbo.Policies (
--    id INT NOT NULL,
--    PolicyId INT NOT NULL,
--    user_id INT NOT NULL,
--    date_registered DATETIME2(7) NOT NULL,
--    policy_name NVARCHAR(MAX) NOT NULL,
--    policy_status NVARCHAR(MAX) NOT NULL,
--    CONSTRAINT PK_Policies PRIMARY KEY (id)
--);


----for documents
--CREATE TABLE Documents (
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    FileName NVARCHAR(255) NOT NULL,
--    FilePath NVARCHAR(255) NOT NULL,
--    UploadDate DATETIME NOT NULL
--);


--CREATE TABLE dbo.UserDetails (
--    id INT IDENTITY(1,1) NOT NULL, -- Auto-incremental ID, serves as user ID
--    admin_id INT NOT NULL, -- Foreign key referencing the admin
--    name NVARCHAR(MAX) NOT NULL,
--    username NVARCHAR(MAX) NOT NULL,
--    password NVARCHAR(MAX) NOT NULL,
--    phone_no NVARCHAR(MAX) NOT NULL,
--    dob DATETIME NOT NULL,
--    address NVARCHAR(MAX) NOT NULL,
--    email NVARCHAR(MAX) NOT NULL,
--    CONSTRAINT PK_USER_ID PRIMARY KEY (id), -- Primary key
--    CONSTRAINT FK_ADMIN_ID FOREIGN KEY (admin_id) REFERENCES dbo.AdminDetails(id) -- Foreign key to the admin table
--);

--INSERT INTO dbo.UserDetails (admin_id, name, username, password, phone_no, dob, address, email)
--VALUES 
--(
--    1, -- Foreign key referencing an existing admin_id in AdminDetails
--    'John Doe', -- Name of the user
--    'johndoe', -- Username for the user
--    'password123', -- User's password
--    '1234567890', -- Phone number
--    '1990-01-01', -- Date of birth (YYYY-MM-DD)
--    '123 Elm Street, Springfield', -- Address
--    'johndoe@example.com' -- Email address
--);

CREATE TABLE dbo.UserDetails (
   id INT IDENTITY(1,1) NOT NULL,
    user_id INT NOT NULL,
    name NVARCHAR(MAX) NOT NULL,
    username NVARCHAR(MAX) NOT NULL,
    password NVARCHAR(MAX) NOT NULL,
   phone_no NVARCHAR(MAX) NOT NULL,
   dob DATETIME NOT NULL,
   address  NVARCHAR(MAX) NOT NULL,
  email NVARCHAR(MAX) NOT NULL,
    CONSTRAINT PK_USER_ID PRIMARY KEY (id)
);
DROP TABLE dbo.UserDetails;


--SELECT * FROM  dbo.UserDetails;
SELECT * FROM dbo.AdminDetails;
select * from dbo.UserDetails;
select *from dbo.AgentDetails;



--INSERT INTO dbo.AdminDetails VALUES (1,'Asad Ali' , 'asad123' )

-- Name: Patrick Juarez
-- File: Project-Database
-- Date: August 11, 2020

create database MCMember;

Use MCMember;

--Member Table
drop table if exists Member 

create table Member
(
	id varchar (60),
    FirstName varchar(20),
    lastName varchar (60),
	roadName varchar (60),
	city varchar(60),
    state varchar (60),
    zipcode varchar (60),
	phone varchar (60),
	email varchar(100)
);

BULK INSERT Member 
FROM 'C:\Users\wwstudent\Desktop\Pat Database complete\Member.csv'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);


--MotorcycleInfo
drop table if exists MotorcycleInfo

create table MotorcycleInfo
(
	id varchar (10),
	motorcycleYear varchar(30),
	motorcycleMake varchar(60),
	motorcycleModel varchar(60),
	motorcycleSize varchar (20),
	driverLicenseNumber varchar (20),
	registrationExp varchar (20),
	insuranceExp varchar (20)
	
);

BULK INSERT	 MotorcycleInfo
FROM 'C:\Users\wwstudent\Desktop\Pat Database complete\MotorcycleInfor.csv'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);


--nextOfKin
drop table if exists nextOfKin

create table nextOfKin
(
	id varchar (10),
	nokFName varchar(60),
	nokLName varchar (60),
	nokAddress varchar (60),
	nokPhoneNumber varchar (60),

);

BULK INSERT	 nextOfKin
FROM 'C:\Users\wwstudent\Desktop\Pat Database complete\NextOfKin.csv'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

--qualifications
drop table if exists qualifications;

create table qualifications
(
	id varchar (10),
	militaryBranch varchar(30),
	dd214 varchar (60),
	combat varchar (60),
	nationalDefense varchar (60),
	armedForces varchar (60),
	membershipType varchar (60),
	sponsor varchar (20),
    motorcycleowner varchar (20),
	goodCharacter varchar (20)
);

BULK INSERT	 qualifications
FROM 'C:\Users\wwstudent\Desktop\Pat Database complete\Qualifications.csv'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);


--rideTimeStamp
drop table if exists rideTimeStamp;

create table rideTimeStamp
(
	id varchar (10),
	rideStartTime DATETIME NOT NULL, 
	rideEndTime DATETIME NOT NULL,
	imagePath varchar (100)
); 


BULK INSERT	 rideTimeStamp
FROM 'C:\Users\wwstudent\Desktop\Pat Database complete\RideTimeStamp.csv'
WITH
(
DATAFILETYPE = 'char',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

select * from member;
select * from MotorcycleInfo;
select * from nextOfKin;
select * from qualifications;
select * from rideTimeStamp;



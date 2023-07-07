CREATE DATABASE Covid

CREATE TABLE Hospital(
	hospital_ID int identity(100,1) NOT NULL primary key,
	hospital_Name varchar(max) NOT NULL,
	hospital_address varchar(50) NOT NULL,
	hospital_contact varchar(11) NOT NULL,
	
);

INSERT into Hospital
VALUES('LabAid','Green Road',01234567890 ),
('Square','Panthopath',01234567890 ),
('Popular','Dhaka',01234567890),
('Mugda','Dhaka',01234567890),
('DMC','Dhaka',01234567890),
('Ibne Sina','Dhaka',01234567890),
('Shamsuddin','Sylhet',01234567890),
('Sylhet Womens','Sylhet',01234567890),
('Rajshahi Medical','Rajshahi',01234567890),
('Cumilla Medical','Cumilla',01234567890);

select * from Hospital

CREATE TABLE Icu(
	icu_ID int identity(200,1) NOT NULL primary key,
	icu_availability int,
	cost_per_day varchar(50) NOT NULL,
	hospital_ID int foreign key references Hospital(hospital_ID),
	
);

INSERT into Icu
VALUES(2,'15000',101 ),
(3,'14000',103),
(4,'13000',105),
(5,'14000',102),
(1,'16000',107),
(4,'15000',104),
(3,'14000',103),
(2,'12000',108),
(1,'12000',107),
(2,'11000',106);

select * from Icu

CREATE TABLE Ambulance(
	ambulance_ID int identity(300,1) NOT NULL primary key,
	ambulance_availability int,
	ambulance_contact varchar(11) NOT NULL,
	ambulance_rent varchar(50) NOT NULL,
	hospital_ID int foreign key references Hospital(hospital_ID),
	
);

INSERT into Ambulance
VALUES(12,01234567811,'5000',101 ),
(13,01234568890,'4000',103),
(14,01234567797,'3000',105),
(15,01234567822,'4000',102),
(11,01234567890,'6000',107),
(14,01224567890,'5000',104),
(13,01234568890,'4000',103),
(12,01234567895,'12000',108),
(10,01234567821,'12000',107),
(12,01234567831,'11000',106);

select * from Ambulance

CREATE TABLE VaccinationCenter(
	center_ID int identity(400,1) NOT NULL primary key,
	hospital_name varchar(max) NOT NULL,
	center_location varchar(50) NOT NULL,
	available_vaccine varchar(50) NOT NULL,
	
	
);

INSERT into VaccinationCenter
VALUES('LabAid','Green Road','Pfizer'),
('Square','Panthopath','Astrazenca'),
('Mugda','Dhaka','Mordana'),
('DMC','Dhaka','Sinopharm'),
('Ibne Sina','Dhaka','Pfizer'),
('Popular','Dhaka','covisheild'),
('Shamsuddin','Sylhet','Mordana'),
('Sylhet Womens','Sylhet','Sinopharm'),
('Cumilla Medical','Cumilla','Mordana'),
('Rajshahi Medical','Rajshahi','Pfizer');

select * from VaccinationCenter

CREATE TABLE Plasma(
	plasma_ID int identity(500,1) NOT NULL primary key,
	donor_name varchar(max) NOT NULL,
	donor_address varchar(50) NOT NULL,
	blood_group varchar(8) NOT NULL,
	donor_contact varchar(11) NOT NULL,
	plasma_availability int NOT NULL,
	
);

INSERT into Plasma
VALUES('Labib','Green Road','A+',01234567811,3),
('Shumona','Panthopath','B+',01234467811,5),
('Mahim','Dhaka','O+',01233567811,4),
('Dadon','Dhaka','AB+',01234567899,2),
('Imran','Dhaka','A-',01234567761,1),
('Purnima','Dhaka','O-',01234447811,3),
('Sakib','Sylhet','AB-',01234017811,4),
('Shumi','Sylhet','B-',01234567821,1),
('Rahim','Cumilla','A+',01234567822,2),
('Chaya','Rajshahi','B+',01234567833,3);

select * from Plasma

CREATE TABLE OxygenProvider(
	provider_ID int identity(500,1) NOT NULL primary key,
	provider_address varchar(50) NOT NULL,
	provider_contact varchar(11) NOT NULL,
	available_stock int NOT NULL,
	price_per_cylinder varchar(50) NOT NULL,
	
);

INSERT into OxygenProvider
VALUES('Green Road',01234567811,13,'1500'),
('Panthopath',01234467811,15,'1400'),
('Dhaka',01233567811,14,'1300'),
('Dhaka',01234567899,12,'1500'),
('Dhaka',01234567761,21,'1400'),
('Dhaka',01234447811,33,'1500'),
('Sylhet',01234017811,24,'1300'),
('Sylhet',01234567821,11,'1100'),
('Cumilla',01234567822,32,'1300'),
('Rajshahi',01234567833,13,'1200');

select * from OxygenProvider

CREATE TABLE MEMBERS(
	users_ID int identity(500,1) NOT NULL primary key,
	userName varchar(50) NOT NULL,
	userEmail varchar(50) NOT NULL,
	userAddress varchar(50) NOT NULL,
	userContact varchar(11) NOT NULL,
	userAge int NOT NULL,
	passwords varchar(50) NOT NULL,
	
);

INSERT into MEMBERS
VALUES('Richi','Richi@gmail.com','Sylhet','01234567811',21,'1234'),
('Punni','punni@gmail.com','Dhaka','01234567822',21,'1034');

select * from MEMBERS


CREATE TABLE PurchaseKit(
	product_ID int identity(600,1) NOT NULL primary key,
	sales_id int NOT NULL,
	product_name varchar(50) NOT NULL,
	price_per_unit int NOT NULL,
	quantity int NOT NULL,
	total int NOT NULL,
);

select * from PurchaseKit

CREATE TABLE Payment(
	ID int identity(600,1) NOT NULL primary key,
	subtotal int NOT NULL,
	pay int NOT NULL,
	bal int NOT NULL,
);



select * from Payment

SELECT * FROM Payment WHERE ID=(SELECT max(ID) FROM Payment)


CREATE TABLE ADMINLOGIN(
	admin_ID int identity(500,1) NOT NULL primary key,
	adminName varchar(50) NOT NULL,
	adpasswords varchar(50) NOT NULL,
	
);

INSERT into ADMINLOGIN
VALUES('Richi','1234'),
('Raisa','4567'),
('Ishtiaque','6789'),
('Punni','1034');

select * from ADMINLOGIN
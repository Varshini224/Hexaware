drop database if exists Car_Rental_System;

create database Car_Rental_System;
use Car_Rental_System;

create table Vehicle (
vehicleID varchar(50) primary key ,
make varchar(50),
model int,
dailyRate int not null, 
status enum ('available', 'notAvailable') not null,
passengerCapacity int ,
engineCapacity varchar(10)
);
alter table vehicle change model model varchar(50)

create table Customer(
customerID varchar(10) Primary Key,
firstName varchar(50),
lastName varchar(50),
email varchar(50),
userID varchar(20),
password varchar(50),
phoneNumber bigint);

create table Lease(
leaseID varchar(20) primary key,
vehicleID varchar(50),
customerID varchar(50),
foreign key (vehicleID) references Vehicle(vehicleID),
foreign key(customerID) references Customer(customerID),
startDate date,
enddate date,
type  enum('Dailylease' ,'Monthlylease' )
);

create table Payment(
paymentID varchar(15) primary key,
leaseID varchar(15),
foreign key (leaseID) references Lease(leaseID),
paymentDate date,
amount bigint
);

INSERT INTO Vehicle (VehicleID, Make, Model, DailyRate, Status, PassengerCapacity, EngineCapacity) VALUES
('VH001A', 'Mahindra', 'Thar 2022', 85.00, 'available', 4, 2.2),
('VH002B', 'Mahindra', 'Bolero 2021', 60.00, 'notAvailable', 7, 1.5),
('VH003C', 'Toyota', 'Camry 2023', 90.00, 'available', 5, 2.5),
('VH004D', 'Hyundai', 'Tucson 2022', 75.00, 'available', 5, 2.0),
('VH005E', 'Ford', 'Mustang 2020', 120.00, 'notAvailable', 4, 5.0),
('VH006F', 'Chevrolet', 'Spark 2019', 50.00, 'available', 4, 1.0),
('VH007G', 'Nissan', 'Altima 2021', 85.00, 'notAvailable', 5, 2.5),
('VH008H', 'Honda', 'Civic 2022', 70.00, 'available', 5, 1.8),
('VH009I', 'BMW', 'X5 2023', 140.00, 'available', 5, 3.0),
('VH010J', 'Jeep', 'Wrangler 2021', 110.00, 'notAvailable', 4, 3.6),
('VH011K', 'Audi', 'Q7 2022', 150.00, 'available', 7, 3.0),
('VH012L', 'Volkswagen', 'Passat 2021', 80.00, 'available', 5, 2.0),
('VH013M', 'Kia', 'Sorento 2022', 78.00, 'notAvailable', 7, 2.4),
('VH014N', 'Mazda', 'CX-5 2023', 72.00, 'available', 5, 2.5),
('VH015O', 'Renault', 'Duster 2021', 65.00, 'available', 5, 1.5),
('VH016P', 'Ford', 'Explorer 2020', 100.00, 'notAvailable', 7, 3.0),
('VH017Q', 'Toyota', 'Highlander 2023', 105.00, 'available', 7, 3.5),
('VH018R', 'Chevrolet', 'Tahoe 2022', 130.00, 'available', 7, 5.3),
('VH019S', 'Honda', 'CR-V 2021', 75.00, 'available', 5, 1.5),
('VH020T', 'Hyundai', 'Santa Fe 2020', 82.00, 'notAvailable', 5, 2.4);

alter table customer add Aadhar_Number bigint;
INSERT INTO Customer (customerID, firstName, lastName, email, userID, password, Aadhar_Number, phoneNumber) VALUES
('CU001TN', 'Arun', 'Kumar', 'arun.kumar@example.com', 'arun_kumar', 'Arun@123', 123456789012, 9876543210),
('CU002TN', 'Priya', 'Subramani', 'priya.subramani@example.com', 'priya_subramani', 'Priya@456', 234567890123, 9876543211),
('CU003TN', 'Vijay', 'Raghavan', 'vijay.raghavan@example.com', 'vijay_raghavan', 'Vijay@789', 345678901234, 9876543212),
('CU004TN', 'Lakshmi', 'Iyer', 'lakshmi.iyer@example.com', 'lakshmi_iyer', 'Lakshmi@101', 456789012345, 9876543213),
('CU005TN', 'Suresh', 'Muthuraj', 'suresh.muthuraj@example.com', 'suresh_muthuraj', 'Suresh@102', 567890123456, 9876543214),
('CU006TN', 'Kavitha', 'Ravi', 'kavitha.ravi@example.com', 'kavitha_ravi', 'Kavitha@103', 678901234567, 9876543215),
('CU007TN', 'Rajesh', 'Narayanan', 'rajesh.narayanan@example.com', 'rajesh_narayanan', 'Rajesh@104', 789012345678, 9876543216),
('CU008TN', 'Deepa', 'Krishnan', 'deepa.krishnan@example.com', 'deepa_krishnan', 'Deepa@105', 890123456789, 9876543217),
('CU009TN', 'Anand', 'Mohan', 'anand.mohan@example.com', 'anand_mohan', 'Anand@106', 901234567890, 9876543218),
('CU010TN', 'Meena', 'Venkatesan', 'meena.venkatesan@example.com', 'meena_venkatesan', 'Meena@107', 112345678901, 9876543219),
('CU011TN', 'Ganesh', 'Pillai', 'ganesh.pillai@example.com', 'ganesh_pillai', 'Ganesh@108', 223456789012, 9876543220),
('CU012TN', 'Revathi', 'Ramesh', 'revathi.ramesh@example.com', 'revathi_ramesh', 'Revathi@109', 334567890123, 9876543221),
('CU013TN', 'Saravanan', 'Murthy', 'saravanan.murthy@example.com', 'saravanan_murthy', 'Saravanan@110', 445678901234, 9876543222),
('CU014TN', 'Divya', 'Balu', 'divya.balu@example.com', 'divya_balu', 'Divya@111', 556789012345, 9876543223),
('CU015TN', 'Manoj', 'Kannan', 'manoj.kannan@example.com', 'manoj_kannan', 'Manoj@112', 667890123456, 9876543224),
('CU016TN', 'Aishwarya', 'Sundar', 'aishwarya.sundar@example.com', 'aishwarya_sundar', 'Aishwarya@113', 778901234567, 9876543225),
('CU017TN', 'Prakash', 'Rajan', 'prakash.rajan@example.com', 'prakash_rajan', 'Prakash@114', 889012345678, 9876543226),
('CU018TN', 'Ranjani', 'Gopal', 'ranjani.gopal@example.com', 'ranjani_gopal', 'Ranjani@115', 990123456789, 9876543227),
('CU019TN', 'Balaji', 'Vasudevan', 'balaji.vasudevan@example.com', 'balaji_vasudevan', 'Balaji@116', 101234567890, 9876543228),
('CU020TN', 'Shankar', 'Perumal', 'shankar.perumal@example.com', 'shankar_perumal', 'Shankar@117', 212345678901, 9876543229);

INSERT INTO Lease (leaseID, vehicleID, customerID, startDate, enddate, type) VALUES
('LE001', 'VH001A', 'CU001TN', '2024-11-01', '2024-11-10', 'Dailylease'),
('LE002', 'VH003C', 'CU002TN', '2024-11-05', '2024-11-15', 'Dailylease'),
('LE003', 'VH005E', 'CU003TN', '2024-11-01', '2024-12-01', 'Monthlylease'),
('LE004', 'VH008H', 'CU004TN', '2024-11-08', '2024-11-18', 'Dailylease'),
('LE005', 'VH011K', 'CU005TN', '2024-11-01', '2024-12-01', 'Monthlylease'),
('LE006', 'VH006F', 'CU006TN', '2024-11-10', '2024-11-20', 'Dailylease'),
('LE007', 'VH018R', 'CU007TN', '2024-11-15', '2024-12-15', 'Monthlylease'),
('LE008', 'VH014N', 'CU008TN', '2024-11-11', '2024-11-21', 'Dailylease'),
('LE009', 'VH019S', 'CU009TN', '2024-11-18', '2024-12-18', 'Monthlylease'),
('LE010', 'VH013M', 'CU010TN', '2024-11-05', '2024-11-15', 'Dailylease'),
('LE011', 'VH004D', 'CU011TN', '2024-11-02', '2024-11-12', 'Dailylease'),
('LE012', 'VH017Q', 'CU012TN', '2024-11-09', '2024-11-19', 'Dailylease'),
('LE013', 'VH015O', 'CU013TN', '2024-11-04', '2024-11-14', 'Dailylease'),
('LE014', 'VH010J', 'CU014TN', '2024-11-12', '2024-12-12', 'Monthlylease'),
('LE015', 'VH002B', 'CU015TN', '2024-11-03', '2024-11-13', 'Dailylease'),
('LE016', 'VH012L', 'CU016TN', '2024-11-07', '2024-11-17', 'Dailylease'),
('LE017', 'VH007G', 'CU017TN', '2024-11-20', '2024-12-20', 'Monthlylease'),
('LE018', 'VH016P', 'CU018TN', '2024-11-06', '2024-11-16', 'Dailylease'),
('LE019', 'VH020T', 'CU019TN', '2024-11-13', '2024-12-13', 'Monthlylease'),
('LE020', 'VH009I', 'CU020TN', '2024-11-14', '2024-11-24', 'Dailylease');

INSERT INTO Payment (paymentID, leaseID, paymentDate, amount)
VALUES 
('PM001', 'LE013', '2024-11-01', 1500.00),
('PM002', 'LE014', '2024-11-02', 2000.00),
('PM003', 'LE013', '2024-11-03', 500.00),
('PM004', 'LE015', '2024-11-04', 3000.00),
('PM005', 'LE016', '2024-11-05', 1200.00),
('PM006', 'LE014', '2024-11-06', 800.00),
('PM007', 'LE017', '2024-11-07', 1000.00),
('PM008', 'LE013', '2024-11-08', 700.00),
('PM009', 'LE018', '2024-11-09', 2200.00),
('PM010', 'LE014', '2024-11-10', 1100.00),
('PM011', 'LE015', '2024-11-11', 900.00),
('PM012', 'LE016', '2024-11-12', 1800.00),
('PM013', 'LE017', '2024-11-13', 1400.00),
('PM014', 'LE018', '2024-11-14', 1600.00),
('PM015', 'LE013', '2024-11-15', 500.00),
('PM016', 'LE014', '2024-11-16', 2100.00),
('PM017', 'LE015', '2024-11-17', 2500.00),
('PM018', 'LE016', '2024-11-18', 1300.00),
('PM019', 'LE017', '2024-11-19', 750.00),
('PM020', 'LE018', '2024-11-20', 2900.00);
use  Car_Rental_System;
show tables;

select * from Vehicle;

select * from Customer;
select * from Lease;
select * from Payment;




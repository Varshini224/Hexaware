create schema HMS;

use HMS;

Create table DOCTOR_MASTER
(
doctor_id varchar(15) not null,
constraint pk_DOCTOR_MASTER primary key (doctor_id),  
doctor_name varchar(15) not null,
Dept varchar(15) not null
);
Insert into DOCTOR_MASTER(doctor_id,doctor_name,Dept)
values('D0001','Ram','ENT'),
      ('D0002','Rajan','ENT'),
      ('D0003','Smita','Eye'),
      ('D0004','Bhavan','Surgery'),
      ('D0005','Sheela','Surgery'),
      ('D0006','Nethra','Surgery');

Create table ROOM_MASTER
(
room_no varchar(15) not null,
room_type varchar(15) not null,
status varchar(15) not null
);

Insert into ROOM_MASTER(room_no,room_type,status)
values('R0001','AC','occupied'),
       ('R0002','Suite','vacant'),
       ('R0003','NonAC','vacant'),
       ('R0004','NonAC','occupied'),
       ('R0005','AC','vacant'),
       ('R0006','AC','occupied');
  ALTER TABLE doctor_master ADD INDEX (doctor_id);     
Create table PATIENT_MASTER
(
pid varchar(15) not null,
name varchar(15) not null,
age int not null,
Weight int not null,
Gender varchar(10) not null,
Address varchar(50) not null,
phoneno varchar(10) not null,
Disease varchar(50) not null,
Doctor_id varchar(5),
constraint fk_DOCTOR_MASTER foreign key (doctor_id) references doctor_master(doctor_id)
);

 ALTER TABLE patient_master ADD INDEX (pid);  
Insert into PATIENT_MASTER(pid,name,age,Weight,Gender,Address,phoneno,Disease,doctor_id)
values('P0001','Gita',35,65,'F','Chennai',9867145678 ,'Eye Infection','D0003'),
      ('P0002','Ashish', 40 ,70,'M','Delhi', 9845675678,'Asthma','D0003'),
      ('P0003','Radha',25,60,'F','Chennai',9867166678,'Pain in heart','D0002'),
      ('P0004','Chennai',28,55,'F','Banglore',9978675567,'Asthma','D0001'),
      ('P0005','Goyal',42,65,'M','Delhi',8967533223,'Pain in Stomach','D0004');
ALTER TABLE room_master ADD INDEX (room_no);

Create table ROOM_ALLOCATION
(
room_no varchar(15),
constraint fk_ROOM_ALLOCATE foreign key (room_no) REFERENCES ROOM_MASTER(room_no),
pid varchar(15),
constraint fk_ROOM_ALLOCATION foreign key (pid) REFERENCES PATIENT_MASTER(pid),
admission_date date,
Release_date date
); 
show tables;

INSERT INTO ROOM_ALLOCATION(room_no, pid, admission_date, Release_date)
VALUES ('R0001', 'P0001', '2016-10-15', '2016-10-26'),
       ('R0002', 'P0002', '2016-11-15', '2016-11-26'),
       ('R0002', 'P0003', '2016-12-01', '2016-12-30');

      use HMS;
      

select * from ROOM_MASTER;
select * from PATIENT_MASTER;
select * from ROOM_ALLOCATION;


SELECT * 
FROM ROOM_ALLOCATION
WHERE MONTH(admission_date) = 1;

SELECT * FROM PATIENT_MASTER
WHERE Gender = 'F' AND Disease <> 'Asthma';


SELECT Gender, COUNT(*) AS patient_count
FROM PATIENT_MASTER
GROUP BY Gender;

SELECT 
    p.pid AS patient_id,
    p.name AS patient_name,
    p.doctor_id,
    d.doctor_name,
    r.room_no,
    r.room_type,
    ra.admission_date
FROM PATIENT_MASTER p
JOIN DOCTOR_MASTER d ON p.doctor_id = d.doctor_id
JOIN ROOM_ALLOCATION ra ON p.pid = ra.pid
JOIN ROOM_MASTER r ON ra.room_no = r.room_no;

SELECT r.room_no
FROM ROOM_MASTER r
LEFT JOIN ROOM_ALLOCATION ra ON r.room_no = ra.room_no
WHERE ra.room_no IS NULL;

SELECT 
    r.room_no, 
    r.room_type, 
    COUNT(ra.room_no) AS allocation_count
FROM ROOM_MASTER r
JOIN ROOM_ALLOCATION ra ON r.room_no = ra.room_no
GROUP BY r.room_no, r.room_type
HAVING allocation_count > 1;







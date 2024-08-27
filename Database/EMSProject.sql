create database advancedJava;

use advancedJava;

create table SignIn
(
empId varchar(50) primary key,
password varchar(50),
EmailId varchar(50),
FName varchar(50),
LName varchar(50),
FullName varchar(50),
ContactNo varchar(50)
);

use advancedJava;

select *from SignIn;

create table admin
(
eId varchar(50),
password varchar(50)
);

insert into admin values("A001","admin"),("A002","admin1");

select*from admin;

create table salary
(
GrossSalary int,
empId varchar(50) primary key,
basicSalary int,
PF int,
DA int
);

select *from salary;

create table AddEmployeeDetails
(
eId varchar(50) primary key,
EmailId varchar(50),
fName varchar(50),
lName varchar(50),
fullName varchar(100),
curAddress varchar(255),
perAddress varchar(255),
contactNo varchar(50),
grossSalary int
);

use advancedJava;

select *from AddEmployeeDetails;


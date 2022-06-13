/* create database orangehrm*/
create database orangehrm;
use orangehrm;

create table employees (
employeeId int,
firstName varchar (100), 
middleName varchar (100),
lastName varchar (100),
dateOfBirth date,
postalAdress varchar (200)); 

-- add collumn phoneNumber into the employees table-- 
alter table employees
add phoneNumber varchar (100); 

-- add column salary into the employees tabe-- 
alter table employees 
add column salary int; 

alter table employees
add column Email varchar(100);

-- displays the employees table--
desc employees;

-- delete column postalAdress from employees table-- 
alter table employees
drop postalAdress;

-- create table employeeAdress--
create table employeeAdress(
local varchar(100),
No varchar(100),
country varchar (100));

-- delete table employeeAdress --
drop table employeeAdress;

-- insert data in the employees table--
insert into employees (employeeId, firstName, middleName, lastName, dateOfBirth, phoneNumber, salary,email)
values ( "0001", "Mike","David", "Thomson", "1975-01-01", "0800800314", "1000","mike@thomson.com"),
("0002","Kevin","Lee","Anderson","1980-08-03","2563256540","1500","keven@anderson.com"),
("0003","Shon","","Poll","1985-05-15","0741258963","1200","shon@poll.com"),
("0004","Alexander", "M", "McQeen", "1995-07-21", "0258963147","900","alex@mcqeen.com"),
("0005","Jhon","Jhonson","Blade","1989-10-08","0369852147","1000","jhon@blade.com"),
("0006","Boris","J","Tavish","1990-11-18","0258963147","1000","boris@tavish.com"),
("0007", "Tom","Andrw","Hanks","1979-08-16","07896452125","1200","tom@hanks.com"),
("0008","Tom","","Cruise","1980-02-22","0745896325","1500","tom@cruise.com"),
("0009","Jhonny","Leo","Depp","1993-06-27","0145236987","1200","jhonny@depp.com"),
("0010","Brat","Link","Pitt","1987-07-31","0256321456","900","brat@pitt.com"); 


-- display employee table-- 
select * from employees;

-- update phoneNumber for Shon Poll--
update employees 
set phoneNumber= "0258963147" where firstName="Shon" and lastName="Poll";
-- update middleName for Tom Hanks-- 
update employees
set middleName="Andrew" where firstName="Tom" and lastName="Hanks";

-- Select everything from table: employees --
select * from employees;

-- delete row from table--
delete from employees
where firstName="Brat" and lastName="Pitt";

-- add column "user" for employees table --
alter table employees
add column user varchar (50); 

-- add column departmentId into the employees table-- 
alter table employees 
add column departmentId int;

-- update column "user"--

update employees 
set user="Admin" where employeeId ="1";
update employees
set user="ESS-Supervisor" where employeeId ="2";
update employees
set user="ESS-Supervisor" where employeeId ="3";
update employees
set user="ESS-Supervisor" where employeeId ="4";
update employees 
set user ="Admin" where employeeId ="5";
update employees
set user ="ESS-Employee" where employeeId ="6";
update employees
set user ="ESS-Employee" where employeeId ="7";
update employees
set user ="ESS-Employee" where employeeId ="8";
update employees
set user ="ESS-Employee" where employeeId ="9";
update employees
set user ="ESS-Employee" where employeeId ="10";

-- update column departmentId from employees table--
update employees 
set departmentId="112" where employeeId="1";
update employees
set departmentId="112" where employeeId="2";
update employees
set departmentId="113" where employeeId="3";
update employees
set departmentId="113" where employeeId="4";
update employees
set departmentId="114" where employeeId="5";
update employees
set departmentId="114" where employeeId="6";
update employees
set departmentId="115" where employeeId="7";
update employees
set departmentId="115" where employeeId="8";
update employees
set departmentId="116" where employeeId="9";
update employees
set departmentId="116" where employeeId="10";

insert into employees (employeeId, firstName, lastName, dateOfBirth, phoneNumber, salary, Email) 
values ("10", "Bratt", "Pett", "1983-01-01", "0800800314", "1900", "bratt@pett.com");

-- Select only firstName and lastName from table: employees --
select firstName, lastName from  employees; 

-- Select all employees with lastName Blade --
select lastName from employees where lastName= "Blade"; 

-- select row where lastName is Blade-- 
select * from employees where lastName= "Blade"; 

-- select all employees whose firstName starts with T --
select* from employees where firstName like "T%";

select* from employees;

-- Select all employees whose lastName contains so --
select lastName from employees where lastName like "%so%"; 

select * from employees where lastName like "%so%"; 

-- Select all employees born after 1980 --
select dateOfBirth from employees where dateOfBirth like "198%"; 

select lastName from employees where dateOfBirth like "198%"; 

select* from employees where dateOfBirth like "198%"; 

-- Select all employees born after 1980 and whose salary is 1000 --
select * from employees where dateOfBirth like "198%" and salary = "1000";

-- Select all employees whose firstName is not Tom --
select * from employees where firstName !="Tom"; 

                                  -- Aggregate functions --
-- Select the maximum salary-- 
select max(salary) from employees;

--  Select the minium salary---
select min(salary) from employees;

-- Select the average salary --
select avg(salary) from employees;

select sum(salary) from employees;
select count(salary) from employees;
select count(*) from employees;
select count(*) from department;
select count(*) from employeedepartment;

-- Select 2 columns: select, lastName and salary from employees;--
select lastName, salary from employees;

select*from employees;


-- create table "department"--
create table department (
departmentId int,
departmentName varchar(100));

insert into department (departmentId, departmentName)
values ("112","IT"),
("113","HR"),
("114","Marketing"),
("115","Accounting"),
("116","Finance");

-- display all entris from department table--
select *from department;

create table employeedepartment(
employeeDepartmentId int,
departmentId int,
employeeId int);

insert into employeedepartment (employeeDepartmentId, departmentId, employeeId)
values ("211","112","1"),
("212","112","2"),
("213","113","3"),
("214","113","4"),
("215","114","5"),
("216","114","6"),
("217","115","7"),
("218","115","8"),
("219","116","9"),
("220","116","10");

select * from employeedepartment;

                -- set primary key and foregin key for the tables--
				-- add primary key for columns: employeeId, departmentId, employeedepartmentId --
alter table employees
add primary key (employeeId);

alter table department
add primary key (departmentId);

alter table employeedepartment
add primary key (employeedepartmentId);

                     -- add foregin key for collumns: employeeId, departmentId-- 
alter table employeedepartment
add constraint fk_employeedepartment_department foreign key employeedepartment (departmentId) references department (departmentId);

alter table employeedepartment
add constraint fk_employeedepartment_employees foreign key employeedepartment (employeeId) references employees (employeeId);

alter table employees
add constraint fk_employees_department foreign key employees (departmentId) references department (departmentId);

-- JOINS--
select * from employees cross join employeedepartment
on employees.employeeId=employeedepartment.employeeId;

select *from employees left join department
on employees.employeeId=department.departmentId;

select *from employees right join department
on employees.employeeId=department.departmentId;

select *from employees inner join department
on employees.employeeId=department.departmentId;

                                     -- ORDER BY--
-- select all employees from employees table order by dateOfBirth--
select * from employees
order By dateOfBirth;
-- select all employees from employees table order By salary--
select * from employees
order by salary;
-- select all employees from employees table order By salary desc--
select *from employees
order By salary desc;
                                      -- Group By-- 
select sum(salary) from employees
group by departmentId;

select firstName, lastName, sum(salary) from employees
group by departmentId;

select departmentId, sum(salary) from employees
group by departmentId;



















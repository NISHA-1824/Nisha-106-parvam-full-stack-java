show databases;
create database employee_management_system;
use employee_management_system;

create table employee(
	emp_id int primary key,
    emp_name varchar(25),
    emp_sal decimal(10,2),
    emp_age int
);

insert into employee(emp_id,emp_name,emp_sal,emp_age)
values(1,"nisha",40000.00,20);

select * from employee;
select emp_name,emp_sal from employee;

alter table employee
add column emp_email varchar(50);

alter table employee
add column emp_email varchar(50) default 'nisha@gmail.com';

create table employee(
	emp_name varchar(225),
    job_title varchar(25),
    phone_no int,
    salary decimal(10,2)
    dept_id int,
    project_id int
    );
    
    
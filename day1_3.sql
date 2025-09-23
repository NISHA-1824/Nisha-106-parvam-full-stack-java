show databases;
create database employee_management_system;
use employee_management_system;

create table employee (
	emp_name varchar(225),
    job_title varchar(25),
    phone_no int,
    salary decimal(10,2),
    dept_id int,
    project_id int
);

create table department (
	dept_id int primary key,
    dept_name varchar(60)
);

create table priject (
	project_id int primary key,
    project_name varchar(50)
);

create table employee (
	emp_name varchar(225),
    job_title varchar(25),
    phone_no int,
    salary decimal(10,2),
    dept_id int,
    project_id int,
    foreign key(dept_id) references department(dept_id),
    foreign key(project_id) references project(project_id)
);

insert into department (dept_name) values('IT'),('Non IT');
select * from department;



    
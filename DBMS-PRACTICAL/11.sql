-- 11. SQL Joins
-- Lab 1: Create two tables: departments and employees. Perform an INNER JOIN to display employees along with their respective departments.
--  Lab 2: Use a LEFT JOIN to show all departments, even those without employees.

create schema Employee_db;
create table departments
(
dept_id int primary key,
dept_name varchar(100)
);
create table employees
(
emp_id int unique,
emp_name varchar(50) not null,
dept_id int,
foreign key employees(dept_id) references department(dept_id)
);

insert into department(dept_id,dept_name) values
(101,'Mechanical Engineering'),
(102,'Electrical Engineering'),
(103,'Information Technology'),
(104,'Computer Science');

insert into employees(emp_id,emp_name,dept_id) values
(201,'Smit Mevada',101),
(202,'Krish Mevada',102),
(203,'Divy Mevada',102),
(204,'Meet Mevada',103),
(205,'Swayam Mevada',104),
(206,'Priyanshu Mevada',102),
(207,'Yuvaraj Dodiya',101),
(208,'Achal Chahag',103),
(209,'Param Mehta',102),
(210,'Akshay patel',103);

select e.emp_name,d.dept_name from employees e inner join departments d on e.dept_id = d.dept_id;

select d.dept_name,e.emp_name from department d left join employees e on d.dept_id = e.dept_id;





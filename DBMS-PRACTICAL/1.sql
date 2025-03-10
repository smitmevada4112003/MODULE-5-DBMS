-- 1. Introduction to SQL
-- Lab 1: Create a new database named school_db and a table called students with the following columns: student_id, student_name, age, class, and address.
-- Lab 2: Insert five records into the students table and retrieve all records using the SELECT statement.

create schema school_db;
create table  students
(
student_id int unique not null,
student_name varchar(50) not null,
age int not null,
class varchar(25) not null ,
address varchar(100) not null
);
insert into students(student_id,student_name,age,class,address) values 
(101,'Smit Mevada', 19, '12th', 'Commerce & six road', 'Ahmedabad'),
(102,'Shyam Mevada',17, '12th', 'Commerce & six road', 'Ahmedabad'),
(103,'Aakash Mevada', 15, '10th', 'Gurukul Road', 'Ahmedabad'),
(104,'Krish Mevada', 18, '12th', 'Patan','Banaskantha'),
(105,'Utsav Mevada', 17, '11th', 'Nehrunagar, Ahmedabad');
select * from students;
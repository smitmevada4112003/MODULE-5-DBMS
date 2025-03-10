-- 3. SQL Constraints
--  Lab 1: Create a table teachers with the following columns: teacher_id (Primary Key), teacher_name (NOT NULL), subject (NOT NULL), and email (UNIQUE).
--  Lab 2: Implement a FOREIGN KEY constraint to relate the teacher_id from the teachers table with the students table.

create table teachers
(
teacher_id int primary key,
teacher_name varchar(50) not null,
subject varchar(50) not null,
email varchar(100) unique
);
drop table students;
create table  students
(
student_id int unique not null,
student_name varchar(50) not null,
age int not null,
class varchar(25) not null ,
address varchar(100) not null,
teacher_id int,
foreign key students(teacher_id) references teachers(teacher_id)
);
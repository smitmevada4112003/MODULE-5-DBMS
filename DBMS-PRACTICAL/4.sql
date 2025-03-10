-- 4. Main SQL Commands and Sub-commands (DDL)
-- Lab 1: Create a table courses with columns: course_id, course_name, and course_credits. Set the course_id as the primary key.
-- Lab 2: Use the CREATE command to create a database university_db.

create schema university_db;
create table courses
(
course_id int primary key,
course_name varchar(50),
course_credits double
);
insert into courses (course_id,course_name,course_credits) values 
(101,'Smit Mevada',5),
(102,'Ayush sharma',4),
(103,'Utsav Mevada',5),
(104,'Shyam Mevada',4),
(105,'Rohit Sharma',5),
(106,'Krish Makwana',5),
(107,'Ayush Modi',5),
(108,'Devarsh Chaudhary',8),
(109,'Achal chahag',7),
(110,'Yuvaraj Dodiya',9);
-- delete from courses;
select * from courses;
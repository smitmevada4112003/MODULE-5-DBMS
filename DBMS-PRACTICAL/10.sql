-- 10. Transaction Control Language (TCL)
--  Lab 1: Insert a few rows into the courses table and use COMMIT to save the changes.
--  Lab 2: Insert additional rows, then use ROLLBACK to undo the last insert operation.
--  Lab 3: Create a SAVEPOINT before updating the courses table, and use it to roll back specific changes.
 
insert into courses (course_id,course_name,course_duration) values 
(101,'Information technology',9),
(102,'Computer Science',6),
(103,'Bachalor Computer Application',3);
commit; 

insert into courses (course_id,course_name,course_duration) values 
(104,'AIML',5),
(106,'Mechanical Engineering',7);
rollback;

insert into courses (course_id,course_name,course_duration) values  (105,'Civil Engineerng',7);
savepoint before_update;
update courses set course_name='Electrical Engineering' where course_id=105;
rollback to savepoint before_update;

select * from courses;
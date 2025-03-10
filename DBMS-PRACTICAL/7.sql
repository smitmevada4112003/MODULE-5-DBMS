-- 7. Data Manipulation Language (DML)
-- Lab 1: Insert three records into the courses table using the INSERT command.
--  Lab 2: Update the course duration of a specific course using the UPDATE command.
--  Lab 3: Delete a course with a specific course_id from the courses table using the DELETE command.

insert into courses (course_id,course_name,course_duration) values 
(101,'Smit Mevada',5),
(102,'Rajat Sharma',6),
(103,'Utsav patel',7);
update courses set course_duration = 7 where course_id = 101;
delete from courses where course_id = 102;
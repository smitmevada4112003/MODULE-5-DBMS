-- 5. ALTER Command
-- Lab 1: Modify the courses table by adding a column course_duration using the ALTER command.
--  Lab 2: Drop the course_credits column from the courses table

alter table courses add course_duration varchar(50);
alter table courses drop column course_credits;
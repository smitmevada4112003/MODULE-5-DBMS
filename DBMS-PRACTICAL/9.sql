-- 9. Data Control Language (DCL)
--  Lab 1: Create two new users user1 and user2 and grant user1 permission to SELECT from the courses table.


create user 'user1'@'localhost' identified by 'Root1';
create user 'user2'@'localhost' identified by 'Root1';
grant select on courses to 'usert1'@'localhost';

--  Lab 2: Revoke the INSERT permission from user1 and give it to user2.

revoke insert on courses from 'usert1'@'localhost';
grant insert on courses to 'usert2'@'localhost'
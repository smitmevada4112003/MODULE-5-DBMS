-- 18. SQL Trigger
--  Lab 3: Create a trigger to automatically update the last_modified timestamp of the books table whenever a record is updated.

create trigger last_modified
after update on books
for each row
update books set last_modified = current_timestamp() where book_id = old.book_id;
-- drop trigger last_modified;

--  Lab 4: Create a trigger that inserts a log entry into a log_changes table whenever a DELETE operation is performed on the books table.


create trigger log_changes
after delete on books
for each row 
insert into log_changes(operation,book_id,delete_at) values ('delete',old.book_id,current_timestamp());
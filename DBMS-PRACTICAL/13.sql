-- 13. Transaction Control Language (TCL)
--  Lab 3: Use COMMIT after inserting multiple records into the books table, then make another insertion and perform a ROLLBACK.

insert into books (book_id, title, author, price) values (1, 'Book One', 'Author A', 19.99);
insert into books (book_id, title, author, price) values (2, 'Book Two', 'Author B', 25.50);
insert into books (book_id, title, author, price) values (3, 'Book Three', 'Author C', 30.00);

commit;

insert into books (book_id, title, author, price) values (4, 'Book Four', 'Author D', 22.75);

rollback;

select * from books;

-- Lab 4: Set a SAVEPOINT before making updates to the members table, perform some updates, and then roll back to the SAVEPOINT.

savepoint before_updates;

update members set membership_status = 'Inactive' where member_id = 101;
update members set membership_status = 'Expired' where member_id = 102;

rollback to savepoint before_updates;

commit;

select * from members;
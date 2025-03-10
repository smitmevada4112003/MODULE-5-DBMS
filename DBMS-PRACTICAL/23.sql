-- 23. Rollback and Commit Savepoint
--  Lab 3: Perform a transaction that includes inserting a new member, setting a SAVEPOINT, and rolling back to the savepoint after making updates.
--  Lab 4: Use COMMIT after successfully inserting multiple books into the books table, then use ROLLBACK to undo a set of changes made after a savepoint.


insert into members(member_id,member_name,date_of_membership,email) values
(101,'Krish Chaudhary','2019-11-23','krish028@gmail.com'),
(102,'Jeet Modi','2015-12-10','ABC@gmail.com');
-- select * from members;
savepoint before_update;
update books set price = price*1.10 where genre = 'Fiction';
rollback to savepoint before_update;
commit;


insert into books(book_id,title,author,publisher,year_of_publication,author_id,price,genre) values 
(107,'The Book Thief',null,'Picador',2011,106,100,'Fiction'),
(108,'Moby Dick','Herman Melville','Richard Bentley',2023,107,50,'Poetry'),
(109,'The Odyssey',null,'Penguin Classics',2020,108,299,'Drama');
-- select * from books;
commit;
savepoint before_update;
update books set publisher = 'Picador' where book_id = 109;
-- show triggers;
rollback to savepoint before_update;
commit;



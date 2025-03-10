-- 17. SQL View
--  Lab 3: Create a view to show only the title, author, and price of books from the books table.

create view book_detail  as select title,author,price from books;
select * from book_detail;

--  Lab 4: Create a view to display members who joined before 2020.

create view members_join_before_2020 as select member_id,member_name,date_of_membership from members where date_of_membership < '2020-08-11';
select * from members_join_before_2020;
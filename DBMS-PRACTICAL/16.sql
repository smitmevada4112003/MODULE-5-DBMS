-- 16. SQL Stored Procedure
--  Lab 3: Write a stored procedure to retrieve all books by a particular author.

delimiter &&
create procedure get_books_by_authors (in author_name varchar(100))
begin
	select book_id,title,author,price from books where author = author_name;
end &&
call get_books_by_authors('Smit Mevada');

--  Lab 4: Write a stored procedure that takes book_id as an argument and returns the price of the book.

delimiter &&
create procedure get_book_price_by_id (in book_id int)
begin
	select price from books where book_id = book_id;
end &&
call get_book_price_by_id(101);

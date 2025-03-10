-- 19. Introduction to PL/SQL
--  Lab 3: Write a PL/SQL block to insert a new book into the books table and display a confirmation message.

-- create table books
-- (
-- book_id number primary key,
-- title varchar(100) not null,
-- author varchar(70),
-- publisher varchar(100) not null,
-- year_of_publication varchar(25),
-- price number
-- );
-- 
-- insert into books(book_id,title,author,publisher,year_of_publication,price) values (101,'The White Tiger','Harper Adiga','Harporcollin India',2008,299)
-- insert into books(book_id,title,author,publisher,year_of_publication,price) values (102,'George Orwell','Harper Adiga','Secker & Warburg',1984,99)
-- insert into books(book_id,title,author,publisher,year_of_publication,price) values (103,'Kabir Ke Dohe',null,'Sahitya Akadami',1500,59)
-- insert into books(book_id,title,author,publisher,year_of_publication,price) values (104,'Madhudhala','Harivansh Rai Bachhan','Prabhat Prakashan',1935,89)
-- insert into books(book_id,title,author,publisher,year_of_publication,price) values (105,'The God Of Samll Things',null,'Doubley',1950,190)
-- select * from dual;
-- select * from books;

declare 
	book_id books.book_id%type := 106;
	title books.title%type := 'The Catcher In The Rye';
	author books.author%type := 'J.D Salinger';
	publisher books.publisher%type := 'Little, Brown And Cpmay';
	year_of_publication books.year_of_publication%type := '1951';
	price books.price%type := 299;
begin
	insert into books(book_id, title, author, publisher, year_of_publication, price) values (book_id, title, author, publisher, year_of_publication, price);
	dbms_output.put_line('New Book '||title||' By '||author||' Has  Been  Successfully  Added To The Books Table.');
end;


--  Lab 4: Write a PL/SQL block to display the total number of books in the books table.


declare 
	book_count number;
begin
	select count(*) into book_count from books;
	dbms_output.put_line('Total Number Of Books In The Table : '||book_count);
end;

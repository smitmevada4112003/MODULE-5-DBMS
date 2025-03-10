-- 21. PL/SQL Control Structures
--  Lab 3: Write a PL/SQL block using IF-THEN-ELSE to check if a book's price is above $100 and print a message accordingly.

declare 
	price number := 399;
begin
    if price > 100 then
		dbms_output.put_line('The Books Price Is Above 100.');
	else
		dbms_output.put_line('The Books Price Is 100 Or Below');
	end if;
end;

--  Lab 4: Use a FOR LOOP in PL/SQL to display the details of all books one by one.

declare
    book_id books.book_id%type;
    title books.title%type;
    author books.author%type;
    publisher books.publisher%type;
    year_of_publication books.year_of_publication%type;
    price books.price%type;
    cursor books_cursor is select book_id,title,author,publisher,year_of_publication,price from books;
begin
    dbms_output.put_line(' -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* Books Details  -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* ');
    open books_cursor;
        loop
            fetch books_cursor into book_id, title, author, publisher, year_of_publication, price;
			exit when books_cursor%notfound;
            dbms_output.put_line('--------------------------------------------------------------------');
			dbms_output.put_line('Book id : '||book_id);
            dbms_output.put_line('Book Title : '||title);
			dbms_output.put_line('Book Author Name : '||Author);
            dbms_output.put_line('Book Publisher Name : '||publisher); 
            dbms_output.put_line('Book Publication Of The Year : '||year_of_publication);
            dbms_output.put_line('Book Price : '||price);
			dbms_output.put_line('--------------------------------------------------------------------');
        end loop;
    close books_cursor;
end;
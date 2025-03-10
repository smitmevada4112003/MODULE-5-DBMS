-- 22. SQL Cursors
--  Lab 3: Write a PL/SQL block using an explicit cursor to fetch and display all records from the members table.

-- create table members
-- (
-- member_id number unique,
-- member_name varchar(100) not null,
-- date_of_membership varchar(25),
-- email varchar(50)
-- );
-- insert all 
-- 	into members(member_id,member_name,date_of_membership,email) values(101,'Smit Mevada','2003-11-04','smitmevada9@gmail.com')
-- 	into members(member_id,member_name,date_of_membership,email) values(102,'Utsav Mevada','2000-10-22','utsavmevada@gmail.com')
-- 	into members(member_id,member_name,date_of_membership,email) values(103,'Meet Mevada','2000-09-29','meetmevada123@gmail.com')
-- 	into members(member_id,member_name,date_of_membership,email) values(104,'Yuvaraj Dodiya','2005-06-20','yuvarajdodiya09@gmail.com')
-- 	into members(member_id,member_name,date_of_membership,email) values(105,'Achal Chahag','2007-05-21','achalchahag002@gmail.com')
-- select * from dual;
-- select  * from members;
declare
    member_id members.member_id%type;
    member_name members.member_name%type;
    date_of_membership members.date_of_membership%type;
    email members.email%type;
cursor members_cursor is select member_id,member_name,date_of_membership,email from members;
begin
    dbms_output.put_line(' -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* Books Details  -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* ');
    open members_cursor;
        loop
            fetch members_cursor into member_id, member_name, date_of_membership, email;
			exit when members_cursor%notfound;
            dbms_output.put_line('--------------------------------------------------------------------');
			dbms_output.put_line('Member id : '||member_id);
            dbms_output.put_line('Member Nmae : '||member_name);
			dbms_output.put_line('Member Date Of Membership : '||date_of_membership);
            dbms_output.put_line('Member E-mail : '||email); 
			dbms_output.put_line('--------------------------------------------------------------------');
        end loop;
    close members_cursor;
end;

--  Lab 4: Create a cursor to retrieve books by a particular author and display their titles

declare
	author varchar(50) := 'George Orwell';
	cursor book_cursor is select title from books where author = author;
	title books.title%type;
begin
	open book_cursor;
		loop
            fetch book_cursor into title;
			exit when  book_cursor%notfound;
				dbms_output.put_line('Book Title : '||title);
        end loop;
	close book_cursor;
end;
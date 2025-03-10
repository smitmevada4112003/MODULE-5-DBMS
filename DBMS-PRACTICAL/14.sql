-- 14. SQL Joins
--  Lab 3: Perform an INNER JOIN between books and authors tables to display the title of books and their respective authors' names.

select books.title, authors.author_name from books inner join authors on books.author_id = authors.author_id;

--  Lab 4: Use a FULL OUTER JOIN to retrieve all records from the books and authors tables, including those with no matching entries in the other table.

select books.title, authors.author_name from books left join authors on books.author_id = authors.author_id

UNION

select books.title, authors.author_name from books right join authors on books.author_id = authors.author_id;
-- 15. SQL Group By
--  Lab 3: Group books by genre and display the total number of books in each genre.

select genre,count(*) as total_books from books group by genre;

--  Lab 4: Group members by the year they joined and find the number of members who joined each year.

select year(date_membership) as join_year ,count(*) as total_members from members group by join_year;
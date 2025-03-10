-- 12. SQL Group By
--  Lab 1: Group employees by department and count the number of employees in each department using GROUP BY.
--  Lab 2: Use the AVG aggregate function to find the average salary of employees in each department.

select dept_id ,count(*) as emp_count from employees group by dept_id;

select department_id,avg(salary) as average_salary from employees group by department_id;

select * from employees;
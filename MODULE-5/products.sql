create schema product_varify;

create table product
(
pro_id int not null unique,
pro_name varchar(25) not null,
pro_price double not null,
pro_com int not null
);

describe product;

select pro_id,pro_name,pro_price,pro_com from product;

insert into product(pro_id,pro_name,pro_price,pro_com) values
(101,'Mother Board',3200.00,15),
(102,'Key Board',450.00,16),
(103,'Zip drive',250.00,14),
(104,'Speaker',550.00,16),
(105,'Monitor',5000.00,11),
(106,'DVD drive',900.00,12),
(107,'CD drive',800.00,12),
(108,'Printer',2600.00,13),
(109,'Refill cartridge',350.00,13),
(110,'Mouse',250.00,12);

select * from product;

/* Write sql query to find the items whose prices are higher than or equal 250rs.
Order the result by product price in descending, then product name in
ascending. Return pro_name and pro_price */

select pro_name,pro_price from product where pro_price>=250 order by pro_price desc,pro_name asc;

-- Write a sql query to find the cheapest item. Return pro_name and pro_price.

select pro_name,pro_price from product where pro_price in (select min(pro_price) from product);

select * from product;

/* Write the sql query to calculate the average price of the items for each
company. Return average price and company code.*/

select pro_com,avg(pro_price) as avg_price from product group by pro_com order by pro_com asc;
 
-- Write the sql query to find the average total for all the product mention in the table

select sum(pro_price) as average_total from product;

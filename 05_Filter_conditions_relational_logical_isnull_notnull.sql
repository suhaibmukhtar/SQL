show databases;
use classicmodels;
show tables;
select * from orders;

-- Where clause is used to fetch the records from the table based on our condition and works like if statement in programing languages
-- It is used to specify the condition based on what we fetech specific records from the table
select status from orders;

select count(status) from orders;

						-- Relational operators
-- q1 retrive only those records from the table for which the status is shipped
select * from orders where status='shipped';
select  count(*) from orders where status='shipped';

-- q2 select only those records from the table for which status is in process
select * from orders where status='In Process'; 

-- q3 select only those records from the table for which orderNumber>10420
select * from orders where orderNumber>10420;

						--  logical operators
-- q4 select only those records from the table for which orderNumber>10420 and orderNumber<10424
select * from orders where orderNumber>10420 and orderNumber<10424;

select orderDate from orders;
-- q5 select only those records from the table for which orderDate >= '2003-11-26' and orderDate<='2003-12-01'
select * from orders where orderDate>='2003-11-01' and orderDate <='2003-12-01';

-- q6 select only those records from the table for which one of condtion must be true
select * from orders where orderNumber=10169 or orderNumber=10173; -- will fetch both
select * from orders where orderNumber=10169 and orderNumber=10173; -- none will be fetched

							-- is null and not null
select * from orders;
-- q7 Retrive only those records from the table for which comments is null
select * from orders where comments is Null;

-- q8 select only those records from the table for which comments == not null
select * from orders where comments is not null;

-- q9 select only those records from the table for which comments == not null and retrive only 5 entries
select * from orders where comments is not null limit 5;

-- q10 retrive the unique categories in the status column
select distinct status from orders;

  -- q10 retrive the unique categories in the status column where commments are not null
select distinct status from orders where comments is not null;

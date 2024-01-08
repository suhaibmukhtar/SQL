-- Loading the data from the source file
show databases;
-- drop database classicmodels;
-- To load the database from specific file use " source path_to_file.sql;
-- source "C:\Users\suhaib mukhtar\Downloads\mysqlsampledatabase\mysqlsampledatabase.sql";
show databases;
use classicmodels;
show tables; -- contains 6 tables
-- select all columns from the table customers
select * from  customers;
-- select one column from customers
select customerName from customers;
-- select multiple columns from the database
select customerName, phone,city from customers;
-- Without Limit
select * from payments;
-- Restrict the result set using
-- 1) Limit   2) Distinct

-- Limit clause is used to restrict the total number of records we want to fetch
-- e.g. to fetch ist 10 records from the payments
select * from payments limit 10;
-- Note it retrives only ist 10 records but if those records contain the duplicate values for the id, those records will also
-- be fetched i.e. limit = value + their duplicates

-- To solve this problem, we make use of Distinct clause so that to retrive only unique values from the column
select distinct customerNumber from payments limit 10; -- will not contain now duplicates

-- Note distince clause is not used with *, we have to mention columns manually
select distinct customerNumber,checkNumber,paymentDate,amount from payments limit 10; 
-- Alter command in SQL is used for updating the existing table such as
	-- a) To add a column to a table
			-- adding one column to a table
            -- adding multiple columns to a table
            -- adding column to a table with default value
    -- b) To delete a column from the table
    -- c) To Change the datatype of a column
    -- d) To Rename the column of a table
show databases;
use school;
show tables;
select * from student;
-- a) Adding new column Address to the student table
alter table student add(address varchar(50));
desc student; -- Check in the field column whether address col is present or not 
-- all the values in the address column will be NULL
select * from student;
-- Adding Multiple columns to the table Student
alter table student add (email_id varchar(20), contact varchar(20));-- we will change it
describe student;
select * from student;
-- adding the column with the default value e.g test with default value 100
alter table student add (test int default 100);
select *from student;
desc student;
-- b) and c) Alter command to "modify" column

-- To change the datatype of the column we use modify
alter table student modify contact int;  -- changing the datatype of contact from varchar to int
desc student;

-- Rename the particular column in the table e.g Renaming address column with the Location "Change
alter table student change address location varchar(50);
select * from student; #column name changed

-- To delete a particular column from the table we use alter+drop
alter table student drop location; #drop the location column
desc student;

-- To delete the multiple columns from the table 
alter table student drop column email_id, drop column contact; -- drops email_id and contact column
desc student;
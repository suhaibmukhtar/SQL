-- Create a database School
show databases;
create database School;
-- to use school database among all databases
use school;
-- to see tables inside school database
show tables;
-- create a table names Student with id,name and age
create table Student(
	id int not null,
    name varchar(20),
    age int
);
-- to check whether table is created as per our requirement or not 
--  use desc or describe
desc Student;
-- Create another table Faculty {faculty_id (p.k), name, course (not null), salary (default 10000)}
create table Faculty(
		faculty_id int primary key,
        name varchar(20),
        course varchar(30) not null,
        salary int default 10000
	);
describe Faculty;
-- To insert the data inside the Student table we use insert command
-- one way here it is must to follow the oreder of fields as ordered in tables
insert into Student values (101, "Suhaib",22);
-- another way here we have freedom of putting values 
insert into Student (id,name,age) values (102,"Musaib",21);
-- third way
insert into Student (name,age,id) values ("Yasir",27,103);
-- To insert multiple values inside the table, we use following procedure order of columns is our choice
insert into Student (name,age,id) values ("Adnan",21,104),
										 ("Farhan",19,105),
                                         ("Ahsan",19,106);
-- inserting data only in some fields not in all
insert into student (id,name) values (107,"Muneeb"); -- age value will be null 
-- to read all the data inside the student table we use select * -> means all columns
select * from Student;
-- To see only name and age of Student table
select name,age from Student;
-- To select only the name column from student
select name from student;


-- Inserting the data into the Faculty table
desc faculty;
insert into faculty (faculty_id,name,course,salary) values (101,"ABC",'English',20000),
															(102,"XYZ","Urdu",30000);
insert into faculty (faculty_id,name,course) values (103,'EFG','Hindi');-- salary will take default value
select * from faculty;
select course,salary from faculty;


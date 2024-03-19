-- Data integrity is a concept and process that ensures the accuracy, completeness, consistency, and validity of an organization's data
-- Data Integrity is classified as 1. Row level integrity, 2. Column level integrity, 3. Referential integrity

USE hr_emp;

drop table course, student;

create table course
(course_id integer primary key,
course_name varchar(20) not null);

desc course;
-- Referential Integrity - It establishes relationships between two different tables using referencing columns. It sets up a parent child relationship between two tables. 
-- Establishing a Parent - child relationship between tables is achieved by defining the tables using - FOREIGN KEY and PRIMARY KEY.

create table student
(sid integer primary key ,
sname varchar(20),
course_id integer,
foreign key (course_id) references course(course_id)
);

desc student;

insert into course values ('One', 'Python'); -- Error

insert into course values( 10,'Python'),(20,'SQL'),(30,'BigData');

insert into course values (30, 'Hive'); -- Primary key violation

select * from course;

insert into student values(1,'Ram',10),(2,'John',20),(3,'Steve',10), (4, 'Rishab',20);

insert into student values ( 5, 'Vishal', 50); -- Error

select * from student;

Update course set course_id = 100 where course_id = 10; -- Error- -- Cannot delete or update a parent row as child row exists for it

delete from course where course_id = 20; -- Error - You cannot delete a row from Parent table because child row is existing in a table. 
-- however , delete a child row doesn't affect parent table

drop table student;

desc student;

-- Constraints - There are rules that limit what type of data can be put into a column/table using SQL constraints. A set of constraints ensures that the data in the column or table is accurate and reliable.
-- Constraints can be divided in to Column level and Tabel level Constraints.
-- To overwrite the DML rules on referential integrity fields, CASCADE is issued on the table having foreign key column So that changes to parent table records are automatically reflected in child table

-- Creating the table with cascade option
create table student
(sid integer primary key ,
sname varchar(20),
course_id integer,
foreign key (course_id) references course(course_id)
on delete cascade
on update cascade
);

desc student;

insert into student values(1,'Ram',10),(2,'John',20),(3,'Steve',10), (4, 'Rishab',20);

Update course set course_id = 100 where course_id = 10; 

select * from student;

select * from student where course_id = 20;

delete from course where course_id = 20; 

select * from course where course_id = 20;

--------------------------
DESC course;

insert into course values ( 50, NULL);

alter table employees add check (salary>2000);
-- if we try to insert value in to employees table with salary < 2000 it will show error

create table city
(city_id char(3) primary key,
city_name varchar(30) UNIQUE);

desc city;

select * from city;

insert into city values('CHN', 'Chennai'),('BLR','Bangalore');

insert into city values('BAN', 'Bangalore'); -- Unique id violation

select * from employees;

alter table employees add check ( salary>2000);

insert into employees values(104,'Ashok','Patel', 'APATEL', '673.453.1289', '1993-12-19','MK_REP', 1500,NULL, 63,19);

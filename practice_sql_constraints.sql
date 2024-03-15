CREATE DATABASE practice_sql_constraints;
use practice_sql_constraints;

-- Constraints
/*
Primary Key
Foreign Key
NOT NULL
Unique*/

create table course
(
course_id integer primary key,
course_name varchar(20) NOT NULL
);

insert into course values ( 100, 'Python');
insert into course values ( 200, 'SQL');
insert into course values ( 300, 'BigData');

select * from course;

insert into course values ( 100, 'Java'); -- Error
insert into course values ( 400, 'Java');
insert into course values ( 500, NULL); -- Error
insert into course(course_id) values ( 600 ); -- Error

-- student table can be called as the child of table course
create table student(
student_id integer primary key,
student_name varchar(20) NOT NULL,
course_id integer ,
  foreign key(course_id) references course(course_id)
);

select * from student;

insert into student values( 1,'Alex', 100);
insert into student values( 2,'John', 200);
insert into student values( 3,'Ritesh', 100);
insert into student values( 4,'Rishab', 400);
insert into student values( 5,'Saheel', 600); -- Error


-- Unique
create table department(
dept_id integer primary key,
dept_name varchar(20) UNIQUE
);

insert into department values(1001, 'HR');
insert into department values(1002, 'Sales');
insert into department values(1002, 'Accounting'); -- Primary key violation
insert into department values(1003, 'HR');  -- Unique key violation
insert into department values(1003, 'Marketing'); 

select * from department;
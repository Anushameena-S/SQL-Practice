-- Analytical functions are otherwise called as windowing or Online Analytic Processing (OLAP) functions.
-- Analytical Functions - Rank(), Dense_Rank() , Row_number(), LAG() & LEAD() Function, First_Value(), Last_Value(), NTILE(), CUME_DIST()
-- Recursive Query Expression
USE hr_emp;

-- Analytical function

create table test(
val integer);


insert into test values
(20),(30),(15),(30),(80),(35),(35),(42),(67),(67);

select * from test;

commit;

-- Rank Function
select val, rank() over (order by val desc)
from test;


-- Dense Rank Function
select val, rank() over (order by val desc),
dense_rank() over (order by val desc)
from test;

-- Row_number displays the unique id to identify the rows
select val, row_number() over (order by val desc)
from test;


-- first value and last value

select  val, first_value(val) over (order by val desc)
from test;

select  val, last_value(val) over (order by val desc)
from test; -- will not give expected result

select  val, last_value(val) over (order by val desc
range between unbounded preceding and unbounded following)
from test;

-- lag and lead functions
select val, lag(val,1) over (order by val desc)
from test;
select val, lead(val,1) over (order by val desc)
from test;

select * from emp_payment;

select employee_id, date_of_payment, salary,
lag(salary,1) over(partition by employee_id order by employee_id),
salary - lag(salary,1) over(partition by employee_id order by employee_id)
from emp_payment;

select employee_id, date_of_payment, salary,
lead(salary,1) over(partition by employee_id order by employee_id),
lead(salary,1) over(partition by employee_id order by employee_id)-salary
from emp_payment;

-- Ntile and Cummulative Distribution function - Ntile is otherwise called as bucketing.

select val, ntile(2) over(order by val desc)
from test;

select val, ntile(5) over(order by val desc)
from test;

select val, ntile(4) over(order by val desc)
from test;

select val, ntile(3) over(order by val desc)
from test;

-- Number of students vs marks is calculated
select val, cume_dist() over(order by val)
from test;

-- Aggregate function
select avg(val) from test;

-- Analytical function
select val, avg(val) over()
from test;

select val, min(val) over() from test;

select val, max(val) over() from test;



select val, sum(val) over() from test;



with temp as(
select employee_id, date_of_payment, salary,
lag(salary,1) over(partition by employee_id order by employee_id) prev_sal,
salary - lag(salary,1) over(partition by employee_id order by employee_id) hike
from emp_payment)
select * from temp
where prev_sal is not null;


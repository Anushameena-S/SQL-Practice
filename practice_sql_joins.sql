-- Multiple table queries for N tables give (N-1) conditions
-- ER diagram - Entity Relationship
USE hr_emp;

-- Joins - Inner, Outer (Left join union Right join), Left& Right, Full Outer , Self
-- Inner join is default type of join - intersection part is the matching column

select * from employees;

select * from departments;


select employees.employee_id, employees.first_name, employees.last_name, 
employees.department_id, departments.department_name
from employees inner join departments
on employees.department_id = departments.department_id
order by employees.employee_id;



select e.employee_id, e.first_name, e.last_name, 
e.department_id,e.salary, d.department_name
from employees e inner join departments d
on e.department_id = d.department_id
order by e.employee_id;



select d.department_id, d.department_name, d.location_id, l.city, l.state_province
from departments d  join locations l
on d.location_id = l.location_id
where l.city = 'Lucknow';


-- Three table join 

select e.employee_id, e.first_name, e.last_name, 
e.department_id,e.salary, d.department_name, l.city, l.state_province
from employees e inner join departments d
on e.department_id = d.department_id
inner join locations l
on d.location_id = l.location_id
where l.city='Lucknow';



-- Outer Joins

-- left outer join
select e.employee_id, e.first_name, e.last_name, 
e.department_id,e.salary, d.department_name
from employees e left outer join departments d
on e.department_id = d.department_id
order by e.employee_id;

select * from employees;



-- right outer join
select e.employee_id, e.first_name, e.last_name, 
e.department_id,e.salary, d.department_name
from employees e right outer join departments d
on e.department_id = d.department_id
order by e.employee_id;


-- full outer join
select e.employee_id, e.first_name, e.last_name, 
e.department_id,e.salary, d.department_name
from employees e left outer join departments d
on e.department_id = d.department_id
union
select e.employee_id, e.first_name, e.last_name, 
e.department_id,e.salary, d.department_name
from employees e right outer join departments d
on e.department_id = d.department_id;




-- self join


select * from employees;
select employee_id, first_name, manager_id from employees;



select e.employee_id, e.first_name, e.manager_id, m.first_name
from employees e inner join employees m
on e.manager_id = m.employee_id;

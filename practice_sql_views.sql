-- Normalization - Anomaly is mismatch / inconsistencies in the data
-- Normalization Stages - 1 NF ( A relation is in 1 NF, if it contains a atomic value), 
-- 2NF ( A relation will be in 2 NF if it is in 1 NF and all non -key attributes are fully functionally dependent on the primary key), 
-- 3NF (A relation will be in 3 NF if it is in 2NF and no transition dependency exists Eg: Marks and Grades in  a table)
-- View Types - Simple View, Complex View, Inline View, Horizontal View, Vertical View, Joined View, Drop View
 
USE hr_emp;

select * from employees;

create view dept10_vw as
select * from employees
where department_id =10;

select * from dept10_vw;


select * from employees;

create view dept70_vw as
select employee_id, first_name, last_name, email, manager_id,department_id
from employees where department_id =70;

select * from dept70_vw;

create view emp_dept_vw as
select e.employee_id, e.first_name, e.last_name, e.email, e.manager_id,e.department_id, d.department_name
from employees e join departments d
on e.department_id = d.department_id;

select  * from emp_dept_vw;

-- to drop view, Drop view view-name;
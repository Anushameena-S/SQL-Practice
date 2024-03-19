USE hr_emp;
select * from employees;

CREATE TABLE departments (
	department_id INT (11) UNSIGNED NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	manager_id INT (11) UNSIGNED,
	location_id INT (11) UNSIGNED,
	PRIMARY KEY (department_id)
	);
    
desc departments;

INSERT INTO departments
VALUES (
	10,
	'Administration',
	200,
	1700
	);

INSERT INTO departments
VALUES (
	20,
	'Marketing',
	201,
	1800
	);

INSERT INTO departments
VALUES (
	30,
	'Purchasing',
	114,
	1700
	);

INSERT INTO departments
VALUES (
	40,
	'Human Resources',
	203,
	2400
	);

INSERT INTO departments
VALUES (
	50,
	'Shipping',
	121,
	1500
	);

INSERT INTO departments
VALUES (
	60,
	'IT',
	103,
	1400
	);

INSERT INTO departments
VALUES (
	70,
	'Public Relations',
	204,
	2700
	);

INSERT INTO departments
VALUES (
	80,
	'Sales',
	145,
	2500
	);

INSERT INTO departments
VALUES (
	90,
	'Executive',
	100,
	1700
	);

INSERT INTO departments
VALUES (
	100,
	'Finance',
	108,
	1700
	);

INSERT INTO departments
VALUES (
	110,
	'Accounting',
	205,
	1700
	);

INSERT INTO departments
VALUES (
	120,
	'Treasury',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	130,
	'Corporate Tax',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	140,
	'Control And Credit',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	150,
	'Shareholder Services',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	160,
	'Benefits',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	170,
	'Manufacturing',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	180,
	'Construction',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	190,
	'Contracting',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	200,
	'Operations',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	210,
	'IT Support',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	220,
	'NOC',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	230,
	'IT Helpdesk',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	240,
	'Government Sales',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	250,
	'Retail Sales',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	260,
	'Recruiting',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	270,
	'Payroll',
	NULL,
	1700
	);

SET FOREIGN_KEY_CHECKS = 1;

COMMIT;

select * from departments;

CREATE TABLE locations (
	location_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
	street_address VARCHAR(40),
	postal_code VARCHAR(12),
	city VARCHAR(30) NOT NULL,
	state_province VARCHAR(25),
	country_id CHAR(2) NOT NULL,
	PRIMARY KEY (location_id)
	);
    
desc locations;

INSERT INTO locations
VALUES (
	1000,
	'1297 Via Cola di Rie',
	'00989',
	'Roma',
	NULL,
	'IT'
	);

INSERT INTO locations
VALUES (
	1100,
	'93091 Calle della Testa',
	'10934',
	'Venice',
	NULL,
	'IT'
	);

INSERT INTO locations
VALUES (
	1200,
	'2017 Shinjuku-ku',
	'1689',
	'Tokyo',
	'Tokyo Prefecture',
	'JP'
	);

INSERT INTO locations
VALUES (
	1300,
	'9450 Kamiya-cho',
	'6823',
	'Hiroshima',
	NULL,
	'JP'
	);

INSERT INTO locations
VALUES (
	1400,
	'2014 Jabberwocky Rd',
	'26192',
	'Southlake',
	'Texas',
	'US'
	);

INSERT INTO locations
VALUES (
	1500,
	'2011 Interiors Blvd',
	'99236',
	'South San Francisco',
	'California',
	'US'
	);

INSERT INTO locations
VALUES (
	1600,
	'2007 Zagora St',
	'50090',
	'South Brunswick',
	'New Jersey',
	'US'
	);

INSERT INTO locations
VALUES (
	1700,
	'2004 Charade Rd',
	'98199',
	'Seattle',
	'Washington',
	'US'
	);

INSERT INTO locations
VALUES (
	1800,
	'147 Spadina Ave',
	'M5V 2L7',
	'Toronto',
	'Ontario',
	'CA'
	);

INSERT INTO locations
VALUES (
	1900,
	'6092 Boxwood St',
	'YSW 9T2',
	'Whitehorse',
	'Yukon',
	'CA'
	);

INSERT INTO locations
VALUES (
	2000,
	'40-5-12 Laogianggen',
	'190518',
	'Beijing',
	NULL,
	'CN'
	);

INSERT INTO locations
VALUES (
	2100,
	'1298 Vileparle (E)',
	'490231',
	'Bombay',
	'Maharashtra',
	'IN'
	);

INSERT INTO locations
VALUES (
	2200,
	'12-98 Victoria Street',
	'2901',
	'Sydney',
	'New South Wales',
	'AU'
	);

INSERT INTO locations
VALUES (
	2300,
	'198 Clementi North',
	'540198',
	'Singapore',
	NULL,
	'SG'
	);

INSERT INTO locations
VALUES (
	2400,
	'8204 Arthur St',
	NULL,
	'London',
	NULL,
	'UK'
	);

INSERT INTO locations
VALUES (
	2500,
	'Magdalen Centre, The Oxford Science Park',
	'OX9 9ZB',
	'Oxford',
	'Oxford',
	'UK'
	);

INSERT INTO locations
VALUES (
	2600,
	'9702 Chester Road',
	'09629850293',
	'Stretford',
	'Manchester',
	'UK'
	);

INSERT INTO locations
VALUES (
	2700,
	'Schwanthalerstr. 7031',
	'80925',
	'Munich',
	'Bavaria',
	'DE'
	);

INSERT INTO locations
VALUES (
	2800,
	'Rua Frei Caneca 1360 ',
	'01307-002',
	'Sao Paulo',
	'Sao Paulo',
	'BR'
	);

INSERT INTO locations
VALUES (
	2900,
	'20 Rue des Corps-Saints',
	'1730',
	'Geneva',
	'Geneve',
	'CH'
	);

INSERT INTO locations
VALUES (
	3000,
	'Murtenstrasse 921',
	'3095',
	'Bern',
	'BE',
	'CH'
	);

INSERT INTO locations
VALUES (
	3100,
	'Pieter Breughelstraat 837',
	'3029SK',
	'Utrecht',
	'Utrecht',
	'NL'
	);

INSERT INTO locations
VALUES (
	3200,
	'Mariano Escobedo 9991',
	'11932',
	'Mexico City',
	'Distrito Federal,',
	'MX'
	);

COMMIT;

SET FOREIGN_KEY_CHECKS = 0;

select * from locations;

-- Single row subquery
select * from employees
where department_id = (
select department_id from departments
where department_name='Administration');


-- Multiple  row subquery
select * from departments;
select * from employees;

select * from employees
where department_id in (
select department_id from departments
where department_name in('Administration','Shipping'));


select * from employees
where salary> (select avg(salary) from employees);

-- correlated subquery 
select * from employees o
where exists  (select avg(salary) from employees i
where i.department_id = o.department_id);

-- Subqueries with In and Not in
select * from departments where department_id in
(select department_id from employees);

select * from departments where department_id not in
(select department_id from employees);

-- Subqueries with Exists and Not Exists
select * from departments d where exists
(select department_id from employees e
where e.department_id=d.department_id);

select * from departments d where not exists
(select department_id from employees e
where e.department_id=d.department_id);

-- Subqueries with aggregate functions
select department_id, avg(salary) from employees
group by department_id
having avg(salary)>=(select avg(salary) from employees where department_id=70);

-- Subqueries with joins
select e.*, d.department_name from employees e
inner join departments d on e.department_id=d.department_id
where e.department_id in (select department_id from departments 
where  department_name='Shipping');

-- Nested subquery
select * from departments;
select * from locations;

select * from employees where department_id in(
select department_id from departments where location_id in (
select location_id from locations  where city='Seattle'));
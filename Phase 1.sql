

create table employe(
id int primary key,
name varchar(20),
dept varchar (10),
city varchar(10),
sal int check(sal>0)
);

alter table employe add age int ;

INSERT INTO employe
VALUES
(101, 'Rahul', 'IT', 'Pune', 55000, 24),
(102, 'Priya', 'HR', 'Mumbai', 62000, 27),
(103, 'Amit', 'IT', 'Pune', 75000, 29),
(104, 'Neha', 'Finance', 'Mumbai', 68000, 31),
(105, 'Karan', 'IT', 'Delhi', 45000, 23),
(106, 'Sneha', 'HR', 'Pune', 58000, 26),
(107, 'Rohan', 'Finance', 'Delhi', 82000, 35),
(108, 'Pooja', 'IT', 'Mumbai', 75000, 28),
(109, 'Akash', 'Sales', 'Pune', 49000, 25),
(110, 'Anjali', 'Sales', 'Mumbai', 65000, 30);

select * from employe;


select distinct dept from employe;

select * from employe 
where dept = 'HR' and city = 'Pune';

select * from employe
where not dept='HR';

select sal,age 
from employe
order  by age asc;


select 
	count(*) as total_employee,
	sum (sal) as total_sal,
	min (sal) as minimum_sal,
	max (sal) as maximum_sal,
	round(avg(sal),2) as Average_sal
from employe;

-- Find the employee with the highest salary.

select * from employe
order by sal desc
limit 1;

-- Find employees whose salary is greater than the average salary.
select * from employe
where sal  >(select avg(sal) from employe)

-- Find the top 2 highest salaries.
select distinct sal ,name 
from employe
order by sal desc
limit 2


-- Find the number of employees who earn more than ₹60,000.

select count(*) from employe
where sal>60000

-- Find the average salary of employees whose salary is greater than ₹50,000.

select round(avg(sal),2)
from employe
where sal>50000








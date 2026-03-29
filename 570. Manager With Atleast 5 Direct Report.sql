create database Leetcode;

use Leetcode;

create table Employee
(
id int,
name varchar(20),
dept varchar(20),
managerId int
);


insert into Employee values(101,'john','A',null),
							(102,'Dan','A',101),
                            (103,'Raj','A',101),
                            (104,'geeta','A',101),
                            (105,'seeta','A',101),
                            (106,'Ram',"B",101);
                            
select * from Employee;
show tables;




select e.id , e.name , e.managerId,m.managerId
from Employee e
 join Employee m
on e.id=m.managerId;


-- 570. Manager with atleast 5 Direct Reports

-- solution 1


select e.name 
from Employee e
inner join Employee As m
on e.id=m.managerId
group by m.managerId,e.name
having count(m.managerId)>=5;


-- solution 2

select name 
from Employee
where id in
	(
    select managerId 
    from Employee
    group by managerId
    having count(managerId)>=5);

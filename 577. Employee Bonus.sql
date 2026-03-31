use Leetcode;
drop table Employee1;
create table Employee1
(
empId int primary key,
name varchar(20),
superviser int,
sal int
);

create table Bonus(
empId int,
foreign key (empId) references Employee1(empId),
bonus int
);

insert into Employee1 values(3,'brand',null,4000),
							(1,'John',3,2000),
                            (2,'Dan',4,3000),
                            (4,'Thomos',3,5000);
					
insert into Bonus values (2,500),
						(4,2000);
                        
select name , bonus 
from Employee1
left outer join Bonus on Employee1.empId=Bonus.empId
where bonus<1000 or bonus is null  order by bonus ASC;

				
use Leetcode;

CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee3 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT,
    FOREIGN KEY (departmentId) REFERENCES Department(id)
);

INSERT INTO Department (id, name) VALUES
(1, 'IT'),
(2, 'Sales');

INSERT INTO Employee3 (id, name, salary, departmentId) VALUES
(1, 'Joe', 85000, 1),
(2, 'Henry', 80000, 2),
(3, 'Sam', 60000, 2),
(4, 'Max', 90000, 1),
(5, 'Janet', 69000, 1),
(6, 'Randy', 85000, 1),
(7, 'Will', 70000, 1);

select 
    d.name as Department,
    e1.name as Employee3,
    e1.salary as Salary
from Employee3 e1
inner JOin Department d on e1.departmentId= d.id
where 3>(
    select count(distinct e2.salary)
    from Employee3 e2
    where e2.salary > e1.salary and e2.departmentId = e1.departmentId
)
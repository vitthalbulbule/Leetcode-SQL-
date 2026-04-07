use Leetcode;

CREATE TABLE Project (
    project_id INT,
    employee_id INT
);

CREATE TABLE Employee2 (
    employee_id INT,
    name VARCHAR(50),
    experience_years INT
);

INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

INSERT INTO Employee2 (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

select p.project_id ,round(sum(e.experience_years)/count(p.project_id),2) as average_years
from Project p
Left join Employee2 e
on p.employee_id = e.employee_id
group by project_id
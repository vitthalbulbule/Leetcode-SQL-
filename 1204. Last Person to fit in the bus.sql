
Use Leetcode;
CREATE TABLE Queue (
    person_id INT,
    person_name VARCHAR(50),
    weight INT,
    turn INT
);

INSERT INTO Queue (person_id, person_name, weight, turn)
VALUES
(5, 'Alice', 250, 1),
(4, 'Bob', 175, 5),
(3, 'Alex', 350, 2),
(6, 'John Cena', 400, 3),
(1, 'Winston', 500, 6),
(2, 'Marie', 200, 4);


select q1.person_name
from Queue q1
inner join Queue q2
on q1.turn >= q2.turn
group by q1.turn
having sum(q2.weight) <= 1000
order by sum(q2.weight) DESC
limit 1;
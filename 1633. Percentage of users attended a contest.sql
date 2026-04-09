use Leetcode;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50)
);

CREATE TABLE Register (
    contest_id INT,
    user_id INT
);

INSERT INTO Users (user_id, user_name) VALUES
(6, 'Alice'),
(2, 'Bob'),
(7, 'Alex');

INSERT INTO Register (contest_id, user_id) VALUES
(215, 6),
(209, 2),
(208, 2),
(210, 6),
(208, 6),
(209, 7),
(209, 6),
(215, 7),
(208, 7),
(210, 2),
(207, 2),
(210, 7);


select r.contest_id, count(contest_id)/3*100 as percentage
from Users u
right join Register r 
on u.user_id=r.user_id
group by r.contest_id
order by percentage desc,contest_id asc

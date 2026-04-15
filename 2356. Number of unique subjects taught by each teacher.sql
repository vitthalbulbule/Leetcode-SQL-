use Leetcode;

CREATE TABLE Teacher (
    teacher_id INT,
    subject_id INT,
    dept_id INT
);

INSERT INTO Teacher (teacher_id, subject_id, dept_id) VALUES
(1, 2, 3),
(1, 2, 4),
(1, 3, 3),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1);

select teacher_id , count(DISTINCT subject_id) as cnt
from Teacher
group by teacher_id
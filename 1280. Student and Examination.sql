use Leetcode;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE Subjects (
    subject_name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(50)
);

INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Chemistry');

INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(2, 'Math'),
(3, 'Chemistry'),
(3, 'Physics');


-- Write a solution to find the number of times each student attended each exam.

-- Return the result table ordered by student_id and subject_name.


select 
	S.student_id,
    S.student_name , 
    Su.subject_name , 
    count(E.subject_name) as attended_exam
    from Students as S
    join Subjects as Su
    left  join Examinations as E 
    on S.student_id = E.student_id and
    Su.subject_name = E.subject_name
    
    group by S.student_id,Su.subject_name
    order by S.student_id,Su.subject_name asc;
    
    
    
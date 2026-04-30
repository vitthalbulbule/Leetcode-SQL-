use Leetcode;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    reports_to INT,
    age INT
);

INSERT INTO Employees (employee_id, name, reports_to, age) VALUES
(1, 'Michael', NULL, 45),
(2, 'Alice', 1, 38),
(3, 'Bob', 1, 42),
(4, 'Charlie', 2, 34),
(5, 'David', 2, 40),
(6, 'Eve', 3, 37),
(7, 'Frank', NULL, 50),
(8, 'Grace', NULL, 48);

SELECT 
    e1.employee_id, 
    e1.name, 
    COUNT(e2.reports_to) AS reports_count, 
    ROUND(SUM(e2.age) / COUNT(e2.reports_to)) AS average_age 
FROM Employees e1
INNER JOIN Employees e2 
    ON e1.employee_id = e2.reports_to 
WHERE e2.reports_to IS NOT NULL 
GROUP BY e2.reports_to 
ORDER BY e1.employee_id;


-- +-------------+---------+------------+-----+ 
-- | employee_id | name    | reports_to | age |
-- |-------------|---------|------------|-----|
-- | 1           | Michael | null       | 45  |
-- | 2           | Alice   | 1          | 38  |
-- | 3           | Bob     | 1          | 42  |
-- | 4           | Charlie | 2          | 34  |
-- | 5           | David   | 2          | 40  |
-- | 6           | Eve     | 3          | 37  |
-- | 7           | Frank   | null       | 50  |
-- | 8           | Grace   | null       | 48  |
-- +-------------+---------+------------+-----+ 

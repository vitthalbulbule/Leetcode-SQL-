use Leetcode;

-- Create Table
CREATE TABLE Queries (
    query_name VARCHAR(50),
    result VARCHAR(50),
    position INT,
    rating INT
);

-- Insert Data
INSERT INTO Queries (query_name, result, position, rating) VALUES
('Dog', 'Golden Retriever', 1, 5),
('Dog', 'German Shepherd', 2, 5),
('Dog', 'Mule', 200, 1),
('Cat', 'Shirazi', 5, 2),
('Cat', 'Siamese', 3, 3),
('Cat', 'Sphynx', 7, 4);

select query_name ,
	round(sum(quality)/count(*),2) as quality,
    round(sum(poor_quality)/count(*)*100) as poor_query_percentage
from (
select rating/position as quality,
case when rating<3 then 1 else 0 end as poor_quality
from Queries
) As new
group by query_name;


SELECT query_name, 
    ROUND(SUM(quality) / COUNT(*), 2) AS quality, 
    ROUND(SUM(is_poor) * 100 / COUNT(*), 2) AS poor_query_percentage
FROM (
    SELECT query_name, 
        rating / position AS quality, 
        CASE WHEN rating < 3 THEN 1 ELSE 0 END AS is_poor
    FROM Queries
) AS new
GROUP BY query_name;
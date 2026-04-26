use Leetcode;

-- Create Movies table
CREATE TABLE Movies (
    movie_id INT,
    title VARCHAR(50)
);

-- Insert data into Movies
INSERT INTO Movies (movie_id, title) VALUES
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');


-- Create Users table
CREATE TABLE Users1 (
    user_id INT,
    name VARCHAR(50)
);

-- Insert data into Users
INSERT INTO Users1 (user_id, name) VALUES
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');

select * from Users1

drop table Users1;

-- Create MovieRating table
CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE
);

-- Insert data into MovieRating
INSERT INTO MovieRating (movie_id, user_id, rating, created_at) VALUES
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');

SELECT name AS results
FROM Users1
WHERE user_id = (
    SELECT user_id      
    FROM MovieRating JOIN Users USING(user_id)
    GROUP BY user_id
    ORDER BY COUNT(*) DESC, name ASC
    LIMIT 1
)

UNION ALL

SELECT title AS results
FROM Movies 
WHERE movie_id = (
    SELECT movie_id 
    FROM MovieRating JOIN Movies USING(movie_id)
    WHERE created_at BETWEEN "2020-02-01" AND "2020-02-29"
    GROUP BY movie_id
    ORDER BY AVG(rating) DESC, title ASC
    LIMIT 1
)

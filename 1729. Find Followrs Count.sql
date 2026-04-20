use Leetcode ;

-- Create the Followers table
CREATE TABLE Followers (
    user_id INT,
    follower_id INT,
    PRIMARY KEY (user_id, follower_id)
);

-- Insert data into the Followers table
INSERT INTO Followers (user_id, follower_id) VALUES
(0, 1),
(1, 0),
(2, 0),
(2, 1);

select user_id , count(follower_id) as followers_count
from Followers
group by user_id
order by user_id ;
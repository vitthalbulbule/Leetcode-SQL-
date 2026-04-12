use Leetcode;

CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);
INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES
(1, 2, '2016-03-01', 5),
(1, 2, '2016-03-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);

# Write your MySQL query statement below
select round(count(distinct player_id)/(select count(distinct player_id) from Activity),2) as fraction
from Activity
where (player_id,DATe_SUB(event_date,interval 1 day))
IN (
select player_id,MIN(event_date)as first_date
from Activity
group by player_id
)

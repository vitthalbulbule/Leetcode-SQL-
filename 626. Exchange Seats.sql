use Leetcode;

CREATE TABLE Seat (
    id INT PRIMARY KEY,
    student VARCHAR(50)
);

INSERT INTO Seat (id, student) VALUES
(1, 'Abbot'),
(2, 'Doris'),
(3, 'Emerson'),
(4, 'Green'),
(5, 'Jeames');

select 
	case
		when id % 2=1 and id+1 <=(select max(id) from Seat) then id+1
		when id % 2=0 then id-1
		else
		id
    End as id,
    student
from Seat
order by id;
    
use Leetcode;

CREATE TABLE Customer (
    customer_id INT,
    product_key INT
);

CREATE TABLE Product (
    product_key INT PRIMARY KEY
);

INSERT INTO Product (product_key) VALUES
(5),
(6);

INSERT INTO Customer (customer_id, product_key) VALUES
(1, 5),
(2, 6),
(3, 5),
(3, 6),
(1, 6);

-- +-------------+
-- | customer_id |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+


select customer_id
from Customer 
group by customer_id
having count(distinct product_key) = (select count(product_key) from Product)
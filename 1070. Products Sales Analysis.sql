use Leetcode;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    year INT,
    quantity INT,
    price INT
);

INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);


select product_id,year as first_year , quantity,price
from Sales
where (product_id,year) IN(
select product_id,min(year) 
from Sales
group by product_id
)
use leetcode;

-- Create table
CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    country VARCHAR(50),
    state VARCHAR(20),
    amount INT,
    trans_date DATE
);

-- Insert data
INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');



SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS total_transactions,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE 
            WHEN state = 'approved' THEN amount 
            ELSE 0 
        END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;
SHOW DATABASES;
USE sales;
-- quiz 1: answer
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;

-- Quiz 2: Answer
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customerName, 
    country;

-- Quiz 3 : Answer
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS total_price
FROM 
    orderdetails
GROUP BY 
    productCode, 
    quantityOrdered;

-- Quiz 4 : Answer
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM 
    payments
GROUP BY 
    checkNumber;

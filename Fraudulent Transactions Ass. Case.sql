CREATE TABLE fraudulent(
step int,
type varchar(20),
amount float,
nameorig varchar(50),
oldbalanceorg float,
newbalanceorig float,
namedest varchar(50),
oldbalancedest float,
newbalancedest float,
isfraud int,
isflaggedfraud int
);

SELECT * FROM fraudulent;

--1. How many transactions occurred per transaction type?
SELECT type, COUNT(*) AS frequency_of_transactions
FROM fraudulent
GROUP BY type
ORDER BY COUNT(*) DESC;

--2. Which Transaction Type has the highest number of Fraudulent Transactions?
SELECT type, COUNT(*) AS frequency_of_transactions
FROM fraudulent
GROUP BY type
ORDER BY COUNT(*) DESC
LIMIT 1;

--3. What is the average fraudulent transaction amount?
SELECT type, ROUND(AVG(AMOUNT))
FROM fraudulent
WHERE isfraud = 1
GROUP BY type;

--4. What is the Maximum fraudulent transaction amount?
SELECT MAX(amount)
FROM fraudulent;

--5. What is the Minimum fraudulent transaction amount?
SELECT MIN(amount)
FROM fraudulent;

--6. Who are the Top 10 customers with the highest amount defrauded?
SELECT nameorig, SUM(amount)
FROM fraudulent
WHERE isfraud = 1
GROUP BY nameorig
ORDER BY 2 DESC
LIMIT 20;

--7. How effective is the bank in flagging fraud?
SELECT * FROM fraudulent;
SELECT SUM(isflaggedfraud) AS flagged_as_fraud, SUM(isfraud) AS fraud, SUM(isfraud)/SUM(isflaggedfraud) AS effectiveness
FROM fraudulent;

--8. Who are the Top 20 Fraudsters
SELECT namedest, SUM(amount) AS total_amount
FROM fraudulent
WHERE isfraud = 1
GROUP BY 1
ORDER BY 2 DESC
LIMIT 20;













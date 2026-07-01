what do you think of this? SELECT 'CNY' AS Currency, 
       ROUND(SUM(Amount), 2) AS Total,
       ROUND(AVG(Amount), 2) AS AvgPurchase,
       ROUND(MAX(Amount), 2) AS TopPurchase,
       COUNT(*) AS Transactions
FROM expenses
UNION ALL
SELECT 'USD' AS Currency, 
       ROUND(SUM(Amount) * 0.14, 2) AS Total,
       ROUND(AVG(Amount) * 0.14, 2) AS AvgPurchase,
       ROUND(MAX(Amount) * 0.14, 2) AS TopPurchase,
       COUNT(*) AS Transactions
FROM expenses
UNION ALL
SELECT 'EUR' AS Currency, 
       ROUND(SUM(Amount) * 0.13, 2) AS Total,
       ROUND(AVG(Amount) * 0.13, 2) AS AvgPurchase,
       ROUND(MAX(Amount) * 0.13, 2) AS TopPurchase,
       COUNT(*) AS Transactions
FROM expenses
UNION ALL
SELECT 'RON' AS Currency, 
       ROUND(SUM(Amount) * 0.64, 2) AS Total,
       ROUND(AVG(Amount) * 0.64, 2) AS AvgPurchase,
       ROUND(MAX(Amount) * 0.64, 2) AS TopPurchase,
       COUNT(*) AS Transactions
FROM expenses;
SELECT 
    Category,
    ROUND(SUM(Amount), 2) AS Total_Spend,
    COUNT(*) AS Transactions,
    ROUND(AVG(Amount), 2) AS Avg_Transaction,
    ROUND(SUM(Amount) * 100.0 / (SELECT SUM(Amount) FROM expenses), 1) AS Budget_Percentage
FROM expenses
GROUP BY Category
ORDER BY Total_Spend DESC;
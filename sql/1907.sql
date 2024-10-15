WITH Categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)
SELECT 
    C.category, 
    COUNT(A.income) AS accounts_count
FROM Categories C
LEFT JOIN Accounts A
    ON (C.category = 'Low Salary' AND A.income < 20000)
    OR (C.category = 'Average Salary' AND A.income BETWEEN 20000 AND 50000)
    OR (C.category = 'High Salary' AND A.income > 50000)
GROUP BY C.category;

WITH CTE AS (
    SELECT
        CASE 
            WHEN income > 50000 THEN 'High Salary'
            WHEN income < 20000 THEN 'Low Salary'
            ELSE 'Average Salary'
        END AS category
    FROM Accounts
)

SELECT
    categories.category,
    COALESCE(COUNT(CTE.category), 0) AS accounts_count
FROM (
    SELECT 'High Salary' AS category
    UNION
    SELECT 'Low Salary'
    UNION
    SELECT 'Average Salary'
) categories
LEFT JOIN CTE ON categories.category = CTE.category
GROUP BY categories.category;

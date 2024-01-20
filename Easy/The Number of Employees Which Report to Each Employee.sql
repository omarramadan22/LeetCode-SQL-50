SELECT 
    e.employee_id,
    e.name,
    COUNT(r.employee_id) AS reports_count,
    ROUND(AVG(r.age), 0) AS average_age
FROM Employees e
LEFT JOIN Employees r ON e.employee_id = r.reports_to
WHERE r.employee_id IS NOT NULL
GROUP BY e.employee_id, e.name
HAVING reports_count > 0
ORDER BY e.employee_id;

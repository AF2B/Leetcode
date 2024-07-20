SELECT 
    e.name AS Employee,
    e.salary AS Salary,
    d.name AS Department
FROM 
    Employee AS e
INNER JOIN 
    Department AS d
ON 
    e.departmentId = d.id
WHERE 
    e.salary = (
        SELECT MAX(e2.salary)
        FROM Employee AS e2
        WHERE e2.departmentId = e.departmentId
    )

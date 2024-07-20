SELECT emplye.name as Employee
FROM Employee AS emplye
INNER JOIN Employee AS emplye2
ON emplye.managerId = emplye2.id
WHERE 1=1
AND emplye.salary > emplye2.salary;

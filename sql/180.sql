SELECT DISTINCT num AS ConsecutiveNums
FROM Logs l1
WHERE 
    (SELECT num FROM Logs l2 WHERE l2.id = l1.id + 1) = l1.num
    AND 
    (SELECT num FROM Logs l3 WHERE l3.id = l1.id + 2) = l1.num;

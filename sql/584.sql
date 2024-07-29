SELECT name
FROM Customer AS cust
WHERE cust.referee_id != 2 OR cust.referee_id IS NULL;

WITH OrderedQueue AS (
    SELECT person_name, weight, turn
    FROM Queue
    ORDER BY turn
),
AccumulatedWeights AS (
    SELECT person_name, weight,
           SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM OrderedQueue
)
SELECT person_name
FROM AccumulatedWeights
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;

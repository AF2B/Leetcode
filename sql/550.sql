WITH FirstLogin AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
)

SELECT 
    ROUND(COUNT(DISTINCT a1.player_id) / COUNT(DISTINCT f.player_id), 2) AS fraction
FROM FirstLogin f
LEFT JOIN Activity a1
    ON f.player_id = a1.player_id 
    AND a1.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);

WITH CTE AS (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND(COUNT(a.player_id) / (SELECT COUNT(player_id) FROM CTE), 2) AS fraction
FROM Activity AS a
JOIN CTE ON a.player_id = CTE.player_id
WHERE a.event_date = DATE_ADD(CTE.first_date, INTERVAL 1 DAY);

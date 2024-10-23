WITH UserRatingCount AS (
    SELECT u.name, COUNT(mr.movie_id) AS rating_count
    FROM Users u
    JOIN MovieRating mr ON u.user_id = mr.user_id
    GROUP BY u.name
    ORDER BY rating_count DESC, u.name
    LIMIT 1
),
MovieAvgRating AS (
    SELECT m.title, AVG(mr.rating) AS avg_rating
    FROM Movies m
    JOIN MovieRating mr ON m.movie_id = mr.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY m.title
    ORDER BY avg_rating DESC, m.title
    LIMIT 1
)
SELECT name AS results FROM UserRatingCount
UNION ALL
SELECT title AS results FROM MovieAvgRating;

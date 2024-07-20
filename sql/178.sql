SELECT 
    scs.Score,
    DENSE_RANK() OVER (ORDER BY scs.score DESC) AS 'Rank'
FROM 
    Scores AS scs;

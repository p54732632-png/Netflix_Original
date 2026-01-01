SELECT * FROM genre_details;
SELECT * FROM netflix_originals;
-- 01
SELECT g.Genre,ROUND(avg(n.IMDBScore),2) AS Average_IMDBS 
FROM netflix_originals n 
JOIN  genre_details g 
ON n.GenreID = g.GenreID
group by g.Genre;
-- 02
SELECT g.Genre,ROUND(avg(n.IMDBScore),2) AS Average_IMDBS 
FROM netflix_originals n 
JOIN  genre_details g 
ON n.GenreID = g.GenreID
group by g.Genre
HAVING Average_IMDBS > 7.5;
 -- 03
SELECT Title, IMDBScore
FROM netflix_originals
ORDER BY IMDBScore DESC;
-- 04
SELECT Title ,Runtime
FROM netflix_originals
ORDER BY Runtime DESC
LIMIT 10;
-- 05

SELECT 
    n.Title,
    g.Genre
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID;

-- 06
SELECT 
    n.Title,
    g.Genre,
    n.IMDBScore,
    RANK() OVER (PARTITION BY g.Genre ORDER BY n.IMDBScore DESC) AS Rank_in_Genre
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID;


-- 07
SELECT 
    Title,
    IMDBScore
FROM netflix_originals
WHERE IMDBScore >
     (SELECT AVG(IMDBScore) FROM netflix_originals);
     
     -- 08
     SELECT 
    g.Genre,
    COUNT(*) AS Total_Movies
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID
GROUP BY g.Genre;
-- 09
SELECT 
    g.Genre,
    COUNT(*) AS High_Rated_Movies
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID
WHERE n.IMDBScore > 8
GROUP BY g.Genre
HAVING COUNT(*) > 5;
-- 10
SELECT 
    g.Genre,
    ROUND(AVG(n.IMDBScore),2) AS Avg_IMDB,
    COUNT(*) AS Total_Movies
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID
GROUP BY g.Genre
ORDER BY Avg_IMDB DESC
LIMIT 3;





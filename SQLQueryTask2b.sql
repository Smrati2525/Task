USE [Task]
GO

SELECT movies.tconst, movies.primaryTitle, genres, averageRating
from movies
  join ratings
  on movies.tconst = ratings.tconst
  where averageRating >= 6.0
  order by averageRating asc;
GO



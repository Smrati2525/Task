USE [Task]
GO

SELECT movies.tconst, movies.primaryTitle, runtimeMinutes, genres, numVotes
from movies
  join ratings
  on movies.tconst = ratings.tconst
  where numVotes in(select distinct top(10) numVotes from ratings)
  order by runtimeMinutes desc;
GO



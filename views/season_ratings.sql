SELECT 
  episode.parent_tconst as tconst, 
  episode.season_number, 
  avg(ratings.average_rating) as average_rating, 
  avg(ratings.num_votes) as average_votes,
  sum(ratings.num_votes) as num_votes
FROM imdb_dataset.title_episode episode
LEFT JOIN imdb_dataset.title_ratings as ratings on episode.tconst = ratings.tconst
GROUP BY episode.parent_tconst, episode.season_number 

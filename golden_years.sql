SELECT year, users_avg_year_rating.num_games, avg_critic_score, avg_user_score, (avg_critic_score - avg_user_score) as diff
FROM critics_avg_year_rating 
INNER JOIN users_avg_year_rating USING(year)
WHERE avg_critic_score > 9 OR avg_user_score > 9
ORDER BY year ASC
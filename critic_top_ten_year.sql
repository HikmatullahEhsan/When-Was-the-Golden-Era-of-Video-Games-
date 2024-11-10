SELECT 
    year, 
    COUNT(DISTINCT public.game_sales.name) AS num_games, 
    round(AVG(public.reviews.critic_score), 2) AS avg_critic_score
FROM 
    reviews
INNER JOIN 
    public.game_sales USING(name)
INNER JOIN 
    public.users_avg_year_rating USING(year) 
GROUP BY 
    year 
ORDER BY 
    avg_critic_score DESC 
	LIMIT 10;

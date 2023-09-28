CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
		country,
		COALESCE(SUM(
			CASE 
				WHEN leisure_activity_type = 'Adventure park' THEN 1*number_of_places
			
			END	
		),0)adventure_park,
		COALESCE(SUM(
			CASE 
				WHEN  leisure_activity_type = 'Golf' THEN 1*number_of_places
			END),0)golf,
		COALESCE(SUM(
			CASE
				WHEN leisure_activity_type ='River cruise' THEN 1*number_of_places
			END	 
		),0)river_cruise,
		COALESCE(SUM(
			CASE
				WHEN leisure_activity_type = 'Kart racing' THEN 1*number_of_places
			END),0)kart_racing
	FROM countryActivities
	GROUP BY country
	ORDER BY country;			
END
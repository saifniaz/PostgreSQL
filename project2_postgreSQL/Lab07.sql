/* Question a */
SELECT 2017 - AVG(birth_year) AS ave_age
  FROM actors;


/* Question b with The Lego Batman Movie */
SELECT COUNT(DISTINCT country) AS dif_country
  FROM locations, (SELECT name, location_id
        FROM movies INNER JOIN casted
        ON movies.movie_id = casted.movie_id
        INNER JOIN actors
        ON actors.actor_id = casted.actor_id
        WHERE title = 'The Lego Batman Movie') DC
  WHERE locations.location_id = DC.location_id;


/* Question c with eye color is brown */
SELECT COUNT(*) AS null_color
  FROM actors
  WHERE eye_color = 'brown';

/* Question d with James McAvoy */
SELECT COUNT(*) AS num_movies
  FROM actors INNER JOIN casted
  ON actors.actor_id = casted.actor_id
  INNER JOIN movies
  ON casted.movie_id = movies.movie_id
  WHERE name = 'James' 
  AND surname = 'McAvoy';


/* Question e */
SELECT name,
	MIN(budget) AS min,
	AVG(budget) AS avg,
	Max(budget) AS max
  FROM genra INNER JOIN movie_genra
  ON genra.genra_id = movie_genra.genra_id
  INNER JOIN movies
  ON movie_genra.movie_id = movies.movie_id
  GROUP BY name;
  
/* Question f with directors born in Florida or brown eyes */
SELECT title,
	AVG(reviews.rating) as avg
  FROM reviews INNER JOIN movies
  ON reviews.movie_id = movies.movie_id
  INNER JOIN directed_movies
  ON movies.movie_id = directed_movies.movie_id
  INNER JOIN (SELECT director_id, first_name, 
	  surname, eye_color, state
	  FROM director INNER JOIN locations
	  ON director.location_id = locations.location_id
	  WHERE state = 'Florida' OR eye_color = 'brown') DT
  ON directed_movies.director_id = DT.director_id
  GROUP BY title
  ORDER BY title;
  
/* Question g */
SELECT title,
	COUNT(DISTINCT country) AS dif_count
  FROM locations, (SELECT title, location_id
	FROM movies INNER JOIN casted
	ON movies.movie_id = casted.movie_id
	INNER JOIN actors
	ON actors.actor_id = casted.actor_id)TC
  WHERE locations.location_id = TC.location_id
  GROUP BY title
  HAVING COUNT(DISTINCT country) > 1;
  
/* Question h */
SELECT title,
	COUNT(*) AS dif_award
  FROM movies INNER JOIN (SELECT movie_id
	FROM year INNER JOIN award
	ON year.award_id = award.award_id) AT
  ON movies.movie_id = AT.movie_id
  GROUP BY title
  HAVING COUNT(*) > 1;



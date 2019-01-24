/* Question A */
SELECT first_name, surname, locations.country, locations.state
 FROM director INNER JOIN locations
 ON locations.location_id = director.location_id
 WHERE country = 'USA';

/* Question B */
SELECT title, rating, release_date, director.first_name, director.surname
  FROM movies INNER JOIN directed_movies   
  ON directed_movies.movie_id = movies.movie_id
  INNER JOIN director
  ON directed_movies.director_id = director.director_id
  WHERE director.first_name = 'Bryan' 
  AND director.surname = 'Singer';

/* Question C budget > 100000000  */
SELECT name, surname, title, budget,
    budget*1.35 AS budget_cad,
    budget*114.89 AS budget_yen,
    budget*59.11 AS budget_rub,
    budget*0.93 AS budget_eur,
    budget*1.01 AS budget_chf
  FROM actors INNER JOIN casted
  ON casted.actor_id = actors.actor_id
  INNER JOIN movies
  ON casted.movie_id = movies.movie_id
  WHERE budget > 100000000;


/* Question D with S and Y*/
SELECT director_id, first_name, surname
  FROM director
  WHERE surname LIKE 'S%' OR surname LIKE 'Y%';
  
  
/* Question E with Action movies and less than 40 year actor*/
SELECT actors.name,surname, birth_year, title
  FROM genra INNER JOIN movie_genra
  ON movie_genra.genra_id = genra.genra_id
  INNER JOIN movies
  ON movie_genra.movie_id = movies.movie_id
  INNER JOIN casted
  ON casted.movie_id = movies.movie_id
  INNER JOIN actors
  ON casted.actor_id = actors.actor_id
  WHERE genra.name = 'Action' AND 
  birth_year < 1967;

/* Question F with eye colour is NULL */
SELECT a1.name, a2.name, a1.eye_color, a2.eye_color
  FROM actors AS a1 INNER JOIN actors AS a2
  ON a1.name < a2.name
  WHERE a1.eye_color IS NULL AND a2.eye_color IS NULL
  ORDER BY a1.name;
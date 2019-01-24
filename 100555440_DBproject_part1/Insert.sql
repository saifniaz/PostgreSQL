/* Movies */
INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('01', 'The Lego Batman Movie', 'PG', '2017-02-10', 80000000, 112213116);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('02', 'Fist Fight', 'R', '2017-02-17', 20000000, 16123696);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('03', 'John Wick: Chapter 2', 'R', '2017-02-10', 4000000, 64220502);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('04', 'xXx: Return of Xander Cage', 'PG-13', '2017-01-20', 85000000, 43126640);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('05', 'Split', 'PG-13', '2017-01-20', 100000000, 126253900);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('06', 'X-Men: Apocalypse', 'PG-13', '05/27/2016', 178000000, 155333829);
    
INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('07', 'Doctor Strange', 'PG-13', '2016-11-04', 165000000, 232185345);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('08', 'Assassin''s Creed', 'PG-13', '2016-11-21', 125000000, 54488424);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('09', 'X-Men: Days of Future Past', 'PG-13', '2014-05-23', 200000000, 233914986);

INSERT INTO movies(
            movie_id, title, rating, release_date, budget, gross)
    VALUES ('10', 'X-Men: First Class', 'PG-13', '2011-05-25', 160000000, 146405371);


/* Director and Location */
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('01', 'Florida', 'USA', 'Winter Park');

INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('01', 'Chris', 'Mckay', 1973, '01');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('01', '01', '1');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('02', 'Illinois', 'USA', 'Highland Park');

INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('02', 'Richie', 'keen', 1973, '02');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('02', '02', '1');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('03', 'Massachusetts', 'USA', 'Palmer');

INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('03', 'Chad', 'Stahelski', 1968, '03');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('03', '03', '1');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('04', 'Connecticut', 'USA', 'Norwalk');

INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('04', 'D.J', 'Caruso', 1965, '04');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('04', '04', '1');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('05', 'Mahe', 'India','Puducherry');

INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('05', 'Night', 'Shyamalan', 1973, '05');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('05', '05', '1');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('06', 'New York', 'USA', 'New York City');
    
INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('06', 'Bryan', 'Singer', 1965, '06');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('06', '06', '1');
    
INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('09', '06', '1');
    
INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('10', '06', '1');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('07', 'Colorado', 'USA', 'Denver');

INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('07', 'Scott', 'Derrickson', 1966, '07');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('07', '07', '1');


INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('08', 'Justin', 'Kurzel', 1974, '01');

INSERT INTO directed_movies(
            movie_id, director_id, is_primary)
    VALUES ('08', '08', '1');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('08', 'Newcastle', 'United Kingdom', 'Newcastle upon Tyne');
    
INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('09', 'Paul', 'Anderson', 1965, '08');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('09', 'Xi''an', 'China', 'Xi''an');
    
INSERT INTO director(
            director_id, first_name, surname, birth_year, location_id)
    VALUES ('10', 'Zhang', 'Yimou', 1965, '09');
    
    
/* Actor And locations */       
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('10', 'Ontario', 'Canada', 'Toronto');

INSERT INTO actors(
            actor_id, name, surname, birth_year, eye_color, location_id)
    VALUES ('01', 'Will', 'Arnett', 1970, 'brown', '10');

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('01', '01');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('11', 'Ontario', 'Canada', 'Brampton');

INSERT INTO actors(
            actor_id, name, surname, birth_year, location_id)
    VALUES ('02', 'Michael', 'Cera', 1988, '11');

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('01', '02');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('12', 'New York', 'USA', 'New York City');

INSERT INTO actors(
            actor_id, name, surname, birth_year, location_id)
    VALUES ('03', 'Rosario', 'Dawson', 1979, '12');

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('01', '03');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('04', 'Ice', 'Cube', 1969);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('02', '04');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('05', 'Keanu', 'Reeves', 1964);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('03', '05');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('06', 'Vin', 'Diesel', 1967);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('04', '06');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('07', 'James', 'McAvoy', 1979);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('05', '07');
INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('09', '07');
INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('10', '07');
INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('06', '07');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('08', 'Benedict', 'Cumberbatch', 1976);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('07', '08');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('09', 'Michael', 'Fassbender', 1977);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('08', '09');
INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('06', '09');
    
INSERT INTO actors(
            actor_id, name, surname, birth_year)
    VALUES ('10', 'Marion', 'Cotillard', 1975);

INSERT INTO casted(
            movie_id, actor_id)
    VALUES ('08', '10');


/* Writer And Locations */
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('13', 'New York', 'USA', 'Rockville Centre');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('01', 1976, 'Grahame-Smith', 'Seth', '13');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('01', '01');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('14', 'New York', 'USA', 'Queens');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('02', 1977, 'McKenna', 'Chris', '14');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('02', '01');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('03', 1980, 'Robichaux', 'Van', '12');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('03', '02');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('04', 1975, 'Kolstad', 'Derek', '05');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('04', '03');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('05', 1966, 'Wilkes', 'Rich', '14');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('05', '04');
    
INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('06', 1973, 'Shyamalan', 'Night', '12');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('06', '05');
    
INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('07', 1973, 'Kinberg', 'Simon', '07');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('07', '06');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('07', '09');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('08', 1966, 'Scott', 'Derrickson', '14');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('08', '07');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('09', 1984, 'Lesslie', 'Micheal', '13');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('09', '08');

INSERT INTO writer(
            writer_id, birth_year, surname, name, location_id)
    VALUES ('10', 1971, 'Miller', 'Ashley', '06');

INSERT INTO wrote(
            writer_id, movie_id)
    VALUES ('10', '10');

/*Producer And Locations*/
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('15', 'California', 'USA', 'City of Burbank');

INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('01', 'Warner Bros', 1923, '15');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('01', '01');

INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('16', 'California', 'USA', 'Los Angles');

INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('02', 'New Line Cinema', 1967, '16');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('02', '02');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('17', 'California', 'USA', 'Santa Monca');

INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('03', 'Summit Entertainment', 1991, '17');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('03', '03');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('18', 'California', 'USA', 'Studio City');

INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('04', 'One Race Films', 1995, '18');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('04', '04');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('19', 'Pennsylvania', 'USA', 'Easttown Township');

INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('05', 'Blinding Edge Pictures', 1999, '19');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('05', '05');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('20', 'California', 'USA', 'Los Angeles');
    
INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('06', '20th Century FOx', 1935, '13');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('06', '06');
    
INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('06', '09');
    
INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('06', '10');
    
INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('07', 'Walt Disney Studios Motion Pictures', 1953, '07');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('07', '07');
    
INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('08', 'Regency Enterprises', 1991, '13');

INSERT INTO produced(
            producer_id, movie_id)
    VALUES ('08', '08');
    
INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('09', 'Legendary Pictures Production', 2000, '15');
    
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('21', 'California', 'USA', 'Universal City');
    
INSERT INTO producer(
            producer_id, company, established, location_id)
    VALUES ('10', 'DreamWorks', 1935, '21');

    
/* Genra */
INSERT INTO genra(
            genra_id, name, "desc")
    VALUES ('01', 'Comedy', 'A dramatic work that is light and often humorous or satirical in tone and that usually contains a happy resolution of the thematic conflict.');
            
INSERT INTO genra(
            genra_id, name)
    VALUES ('02', 'Action');
    
INSERT INTO genra(
            genra_id, name)
    VALUES ('03', 'Horror');
    
INSERT INTO genra(
            genra_id, name)
    VALUES ('04', 'Animation');
    
INSERT INTO genra(
            genra_id, name)
    VALUES ('05', 'Adventure');
    
INSERT INTO genra(
            genra_id, name, "desc")
    VALUES ('06', 'Triller', ' Thrillers are characterized and defined by the moods they elicit, giving viewers heightened feelings of suspense, excitement, surprise, anticipation and anxiety.');

INSERT INTO genra(
            genra_id, name)
    VALUES ('07', 'Crime');

INSERT INTO genra(
            genra_id, name)
    VALUES ('08', 'Drama');
    
INSERT INTO genra(
            genra_id, name)
    VALUES ('09', 'Mystery');

INSERT INTO genra(
            genra_id, name)
    VALUES ('10', 'Sci-Fi');

INSERT INTO genra(
            genra_id, name)
    VALUES ('11', 'Musical');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('01', '04');
    
INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('02', '01');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('03', '07');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('04', '02');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('05', '03');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('05', '06');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('06', '05');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('07', '02');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('08', '02');

INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('09', '05');
    
INSERT INTO movie_genra(
            movie_id, genra_id)
    VALUES ('10', '05');

    
/* AWARD */
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('01', 'GMS Award', 'Best Music Supervision for Trailers');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('01', '01', 2017);

INSERT INTO award(
            award_id, type, catagory)
    VALUES ('02', 'Heartland Film (Won)','Truely Moving Picture Award');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('01', '02', 2017);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('03', 'ICP Award', 'Most Anticipated of 2017');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('03', '03', 2016);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('04', 'ALFS Award', 'Young British/Irish Performer of the Year');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('05', '04', 2017);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('05', 'Jupiter Award', 'Best International Film');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('06', '05', 2017);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('06', 'People''s Choice Award', 'Favorite Action Movie');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('06', '06', 2017);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('07', 'Critics Choice Award', 'Best Sci-Fi/Horror Film');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('07', '07', 2017);

INSERT INTO award(
            award_id, type, catagory)
    VALUES ('08', 'Best Visual Effects (Won)', 'Best Visual Effects');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('07', '08', 2017);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('09', 'Yoga Awards (Won)', 'Special Award');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('08', '09', 2017);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('10', 'Oscar', 'Best Achievement in Visual Effects');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('09', '10', 2015);
    
INSERT INTO award(
            award_id, type, catagory)
    VALUES ('11', 'Golden Schmoes (Won)', 'Best Action Sequence of the Year');

INSERT INTO year(
            movie_id, award_id, year)
    VALUES ('09', '11', 2015);

/* Critics */
INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('01', 'Ruggiero', 'Maria');

INSERT INTO reviews(
            movie_id, critics_id, rating, "desc")
    VALUES ('01', '01', 9, 'film suitable for all audiences, from the little nerd would-be heroes, "LEGO Batman" succeeds through parody to make people laugh than anyone taste');

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('02', 'McGrath', 'David');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('01', '02', 7);

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('03', 'Berardinelli', 'James');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('02', '03', 8);
    
INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('04', 'Crow', 'Ian');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('03', '04', 9);

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('05', 'Dixon', 'Jim');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('04', '05', 7);

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('06', 'Scott', 'A. O.');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('05', '06', 9);

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('07', 'Cerca', 'Sonia');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('06', '07', 4);
    
INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('08', 'Woloski', 'Sarah');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('07', '08', 8);

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('09', 'Beremov', 'George');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('08', '09', 5);

INSERT INTO critics(
            critics_id, surname, name)
    VALUES ('10', 'McCosh', 'Sam');

INSERT INTO reviews(
            movie_id, critics_id, rating)
    VALUES ('09', '10', 6);



/* Quote */
INSERT INTO quote(
            quote_id, phrase, "desc", movie_id)
    VALUES ('01', 'Wait, does Batman live in Bruce Wayne''s basement?', 'Said by Robin', '01');

INSERT INTO quote(
            quote_id, phrase, "desc", movie_id)
    VALUES ('02', 'You wanna play games, do you Batman? Save the city or catch your greatest enemy!',
	'Said by Joker', '01');

INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('03', 'Hey Batman! I''m rubbing my butt all over your stuff! Gonna have to rename this the "Buttmobile"', '01');
    
INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('04', 'Wait a minute. Bruce Wayne is Batman... ''s roommate?', '01');
    
INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('05', 'Who always pays their taxes? Not Batman!', '01');

INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('06', 'If you call me Batgirl, can I call you Batboy?', '01');

INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('07', 'Actions have consequences', '02');

INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('08', 'John Wick, you''re not very good at retiring.', '03');
    
INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('09', 'Somebody please get this man a gun!', '03');
    
INSERT INTO quote(
            quote_id, phrase, movie_id)
    VALUES ('10', 'SThe broken are the more evolved.', '04');


/*CINEMA AND LOCATION*/
INSERT INTO locations(
            location_id, state, country, city)
    VALUES ('22', 'Ontario', 'Canada', 'Scarborough');

INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('01', '4162905217', 'Coliseum Scarborough Cinema', '3D', '22');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('01', '01', '17:30:02.5', 12);

INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('02', '4162811444', 'Cineplex Odeon Morningside Cinemas ', 'Normal', '22');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('02', '03', '16:10:01.0', 12);
    
INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('03', '4167524494', 'Cineplex Odeon Eglinton Town Centre Cinemas', 'Normal', '22');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('03', '03', '15:45:01.0', 12);

INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('04', '4166447746', 'SilverCity Fairview Mall Cinemas', 'Normal', '10');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('04', '03', '16:45:01.0', 12);
    
INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('05', '4166440660', 'Cineplex Cinemas Don Mills VIP', 'Normal', '10');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('05', '03', '19:45:01.0', 12);

INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('06', '4162239550', 'Cineplex Cinemas Yonge-Dundas', 'Normal', '10');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('06', '03', '13:30:01.0', 12);
    
INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('07', '4164949371', 'Imagine Cinemas - Market Square', 'Normal', '10');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('07', '03', '12:50:01.0', 12);
    
INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('08', '4163685600', 'Scotiabank Theatre Toronto', 'Normal', '10');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('08', '03', '22:25:01.0', 12);
    
INSERT INTO locations(
            location_id, state, country, city, adress)
    VALUES ('23', 'Ontario', 'Canada', 'Ajax', '248 Kingston Road');

INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('09', '9054267775', 'Cineplex Odeon Ajax Cinemas', 'Normal', '23');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('09', '03', '19:30:01.0', 12);
    
INSERT INTO locations(
            location_id, state, country, city, adress)
    VALUES ('24', 'Ontario', 'Canada', 'Pickering', '1355 Kingston Road');

INSERT INTO cinema(
            cinema_id, phone_number, name, type, location_id)
    VALUES ('10', '9058392977', 'Famous Players Pickering 6 Cinemas', 'Normal', '24');

INSERT INTO showtime(
            cinema_id, movie_id, "time", price)
    VALUES ('10', '03', '18:35:01.0', 12);
    





/*
Created: 1/30/2017
Modified: 2/28/2017
Model: PostgreSQL 9.3
Database: PostgreSQL 9.3
*/

-- Create tables section -------------------------------------------------

-- Table movies

CREATE TABLE "movies"(
 "movie_id" Varchar NOT NULL,
 "title" Varchar NOT NULL,
 "rating" Varchar NOT NULL,
 "release_date" Date NOT NULL,
 "budget" Integer NOT NULL,
 "gross" Integer
)
;

-- Add keys for table movies

ALTER TABLE "movies" ADD CONSTRAINT "movie_id" PRIMARY KEY ("movie_id")
;

-- Table actors

CREATE TABLE "actors"(
 "actor_id" Varchar NOT NULL,
 "name" Varchar NOT NULL,
 "surname" Varchar NOT NULL,
 "birth_year" Integer NOT NULL,
 "eye_color" Varchar,
 "location_id" Varchar
)
;

-- Create indexes for table actors

CREATE INDEX "IX_Relationship15" ON "actors" ("location_id")
;

-- Add keys for table actors

ALTER TABLE "actors" ADD CONSTRAINT "actor_id" PRIMARY KEY ("actor_id")
;

-- Table director

CREATE TABLE "director"(
 "director_id" Varchar NOT NULL,
 "first_name" Varchar NOT NULL,
 "surname" Varchar NOT NULL,
 "birth_year" Integer NOT NULL,
 "location_id" Varchar
)
;

-- Create indexes for table director

CREATE INDEX "IX_Relationship20" ON "director" ("location_id")
;

-- Add keys for table director

ALTER TABLE "director" ADD CONSTRAINT "director_id" PRIMARY KEY ("director_id")
;

-- Table genra

CREATE TABLE "genra"(
 "genra_id" Varchar NOT NULL,
 "name" Varchar NOT NULL,
 "desc" Varchar
)
;

-- Add keys for table genra

ALTER TABLE "genra" ADD CONSTRAINT "genra_id" PRIMARY KEY ("genra_id")
;

-- Table casted

CREATE TABLE "casted"(
 "movie_id" Varchar NOT NULL,
 "actor_id" Varchar NOT NULL,
 "salary" Integer
)
;

-- Add keys for table casted

ALTER TABLE "casted" ADD CONSTRAINT "casted_id" PRIMARY KEY ("movie_id","actor_id")
;

-- Table movie_genra

CREATE TABLE "movie_genra"(
 "movie_id" Varchar NOT NULL,
 "genra_id" Varchar NOT NULL
)
;

-- Add keys for table movie_genra

ALTER TABLE "movie_genra" ADD CONSTRAINT "moviegenra_id" PRIMARY KEY ("movie_id","genra_id")
;

-- Table reviews

CREATE TABLE "reviews"(
 "movie_id" Varchar NOT NULL,
 "critics_id" Varchar NOT NULL,
 "rating" Integer NOT NULL,
 "desc" Varchar
)
;

-- Add keys for table reviews

ALTER TABLE "reviews" ADD CONSTRAINT "review_id" PRIMARY KEY ("movie_id","critics_id")
;

-- Table locations

CREATE TABLE "locations"(
 "location_id" Varchar NOT NULL,
 "state" Varchar NOT NULL,
 "country" Varchar NOT NULL,
 "city" Varchar NOT NULL,
 "adress" Varchar
)
;

-- Add keys for table locations

ALTER TABLE "locations" ADD CONSTRAINT "birth_location_id" PRIMARY KEY ("location_id")
;

-- Table directed_movies

CREATE TABLE "directed_movies"(
 "movie_id" Varchar NOT NULL,
 "director_id" Varchar NOT NULL,
 "is_primary" Bit(1) NOT NULL
)
;

-- Add keys for table directed_movies

ALTER TABLE "directed_movies" ADD CONSTRAINT "directedmovies_id" PRIMARY KEY ("movie_id","director_id")
;

-- Table critics

CREATE TABLE "critics"(
 "critics_id" Varchar NOT NULL,
 "surname" Varchar NOT NULL,
 "name" Varchar
)
;

-- Add keys for table critics

ALTER TABLE "critics" ADD CONSTRAINT "critic_id" PRIMARY KEY ("critics_id")
;

-- Table cinema

CREATE TABLE "cinema"(
 "cinema_id" Varchar NOT NULL,
 "phone_number" Varchar NOT NULL,
 "name" Varchar NOT NULL,
 "type" Varchar NOT NULL,
 "location_id" Varchar NOT NULL
)
;

-- Create indexes for table cinema

CREATE INDEX "IX_Relationship3" ON "cinema" ("location_id")
;

-- Add keys for table cinema

ALTER TABLE "cinema" ADD CONSTRAINT "cinema_id" PRIMARY KEY ("cinema_id")
;

-- Table showtime

CREATE TABLE "showtime"(
 "cinema_id" Varchar NOT NULL,
 "movie_id" Varchar NOT NULL,
 "time" Time NOT NULL,
 "price" Integer
)
;

-- Add keys for table showtime

ALTER TABLE "showtime" ADD CONSTRAINT "showtime_id" PRIMARY KEY ("cinema_id","movie_id")
;

-- Table award

CREATE TABLE "award"(
 "award_id" Varchar NOT NULL,
 "type" Varchar NOT NULL,
 "catagory" Varchar
)
;

-- Add keys for table award

ALTER TABLE "award" ADD CONSTRAINT "award_id" PRIMARY KEY ("award_id")
;

-- Table year

CREATE TABLE "year"(
 "movie_id" Varchar NOT NULL,
 "award_id" Varchar NOT NULL,
 "year" Bigint NOT NULL
)
;

-- Add keys for table year

ALTER TABLE "year" ADD CONSTRAINT "year_id" PRIMARY KEY ("movie_id","award_id","year")
;

-- Table producer

CREATE TABLE "producer"(
 "producer_id" Varchar NOT NULL,
 "company" Varchar NOT NULL,
 "established" Integer,
 "location_id" Varchar NOT NULL
)
;

-- Create indexes for table producer

CREATE INDEX "IX_Relationship11" ON "producer" ("location_id")
;

-- Add keys for table producer

ALTER TABLE "producer" ADD CONSTRAINT "producer_id" PRIMARY KEY ("producer_id")
;

-- Table quote

CREATE TABLE "quote"(
 "quote_id" Varchar NOT NULL,
 "phrase" Varchar NOT NULL,
 "desc" Varchar,
 "movie_id" Varchar NOT NULL
)
;

-- Create indexes for table quote

CREATE INDEX "IX_movie_quote" ON "quote" ("movie_id")
;

-- Add keys for table quote

ALTER TABLE "quote" ADD CONSTRAINT "quote_id" PRIMARY KEY ("quote_id")
;

ALTER TABLE "quote" ADD CONSTRAINT "phrase" UNIQUE ("phrase")
;

-- Table writer

CREATE TABLE "writer"(
 "writer_id" Varchar NOT NULL,
 "birth_year" Integer NOT NULL,
 "surname" Varchar NOT NULL,
 "name" Varchar,
 "location_id" Varchar NOT NULL
)
;

-- Create indexes for table writer

CREATE INDEX "IX_Relationship10" ON "writer" ("location_id")
;

-- Add keys for table writer

ALTER TABLE "writer" ADD CONSTRAINT "writer_id" PRIMARY KEY ("writer_id")
;

-- Table produced

CREATE TABLE "produced"(
 "producer_id" Varchar NOT NULL,
 "movie_id" Varchar NOT NULL
)
;

-- Add keys for table produced

ALTER TABLE "produced" ADD CONSTRAINT "produced_id" PRIMARY KEY ("producer_id","movie_id")
;

-- Table wrote

CREATE TABLE "wrote"(
 "writer_id" Varchar NOT NULL,
 "movie_id" Varchar NOT NULL
)
;

-- Add keys for table wrote

ALTER TABLE "wrote" ADD CONSTRAINT "wrote_id" PRIMARY KEY ("writer_id","movie_id")
;

-- Create relationships section ------------------------------------------------- 

ALTER TABLE "casted" ADD CONSTRAINT "acted_movies" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "casted" ADD CONSTRAINT "actors_acted" FOREIGN KEY ("actor_id") REFERENCES "actors" ("actor_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "movie_genra" ADD CONSTRAINT "movie's_genra" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "movie_genra" ADD CONSTRAINT "genra_of_movie" FOREIGN KEY ("genra_id") REFERENCES "genra" ("genra_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "directed_movies" ADD CONSTRAINT "movies_directed" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "directed_movies" ADD CONSTRAINT "directed_by" FOREIGN KEY ("director_id") REFERENCES "director" ("director_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "actors" ADD CONSTRAINT "actor_location" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "reviews" ADD CONSTRAINT "reviews_movies" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "reviews" ADD CONSTRAINT "critics_review" FOREIGN KEY ("critics_id") REFERENCES "critics" ("critics_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "director" ADD CONSTRAINT "director_location" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "cinema" ADD CONSTRAINT "cinema_located" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "showtime" ADD CONSTRAINT "showtime_cinema" FOREIGN KEY ("cinema_id") REFERENCES "cinema" ("cinema_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "showtime" ADD CONSTRAINT "showtime_movies" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "year" ADD CONSTRAINT "movie_awarded" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "year" ADD CONSTRAINT "award_year" FOREIGN KEY ("award_id") REFERENCES "award" ("award_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "quote" ADD CONSTRAINT "movie_quote" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "writer" ADD CONSTRAINT "writer_location" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "producer" ADD CONSTRAINT "producer_location" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "produced" ADD CONSTRAINT "movie_produced" FOREIGN KEY ("producer_id") REFERENCES "producer" ("producer_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "produced" ADD CONSTRAINT "produced_movies" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "wrote" ADD CONSTRAINT "movie_wrote" FOREIGN KEY ("writer_id") REFERENCES "writer" ("writer_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "wrote" ADD CONSTRAINT "wrote_movie" FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;





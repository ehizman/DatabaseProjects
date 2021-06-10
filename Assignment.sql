-- 1 
SELECT Movie.mov_title, Movie.mov_year
FROM Movie;

-- 2
SELECT Movie.mov_year
FROM Movie 
WHERE Movie.mov_title = 'American Beauty';

SELECT *
FROM Movie;

insert into Movie
values (907,'Eyes Wide Shut',1999,159,'English',NULL,'UK'),
(914,'American Beauty',1999,122,'English',NULL,'UK'),
(920, 'Donnie Darko',2001,113,'English',NULL,'UK');

-- 3
SELECT Movie.mov_title
FROM Movie 
WHERE Movie.mov_dt_rel LIKE '1999-%';

-- 4
SELECT Movie.mov_title
FROM Movie
WHERE Movie.mov_dt_rel < '1998-01-01';

-- 6
SELECT Reviewer.rev_name
FROM Reviewer left JOIN Rating on Rating.rev_id = Reviewer.rev_id
UNION
SELECT Movie.mov_title 
FROM Movie RIGHT JOIN Rating on Rating.mov_id = Movie.mov_id;

-- 7
SELECT Reviewer.rev_name
FROM Reviewer join Rating on Reviewer.rev_id = Rating.rev_id
WHERE Rating.rev_stars >= 7;


-- 8
SELECT Movie.mov_title
FROM Movie JOIN Rating
ON Movie.mov_id = Rating.mov_id
WHERE Rating.num_o_rating is NULL;

-- 9
SELECT Reviewer.rev_name
FROM Reviewer JOIN Rating
ON Reviewer.rev_id = Rating.rev_id
WHERE Rating.num_o_rating is NULL;


-- 10
SELECT Movie.mov_title, Director.dir_fname, Director.dir_lname
FROM Movie JOIN Director JOIN Movie_direction 
ON Movie.mov_id = Movie_direction.mov_id
and Director.dir_id = Movie_direction.dir_id
and Movie.mov_title = 'Eyes Wide Shut'; 
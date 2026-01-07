create database movies_db;
use movies_db;
create table movies(
	movieId int primary key,
    title varchar(250),
    genres varchar(250)
);
create table rating(
	userId int,
    movieId int,
    rating decimal(2,1),
    timestamp bigint,
    foreign key(movieId) references movies(movieId)
);

						/*QUERIES*/
                        
/*View the movies table*/
	select * from movies;

/*View the ratings table*/
	select * from rating;
    
/*Get all movies of a specific genre (e.g., Action)*/

	select moviesId, title
    from movies
    where genre = 'Action';
    
/*Top-rated movies (rating > 4)*/
	select m.title, r.rating
    from rating r
    join movies m on r.moviesId = m.moviesId
    where r.rating > 4;
    
/*Number of ratings per movie*/
	select moviesId, count(*) as total_rating
    from rating
    group by movieId;
    
/*Average movie rating*/
	select avg(rating) as avg_rating
    from rating;

/*Average rating per movie*/
	select m.title, avg(r.rating) as avg_rating
    from rating r
    join movies m on r.movieId = m.movieId
    group by m.title
    order by avg_rating desc;
    
/*Top 10 highest-rated movies (min 50 ratings)*/
	select m.title, avg(r.rating) as avg_rating, count(r.rating) as rating_count
	from ratings r
	join movies m on r.movieId = m.movieId
	group by m.movieId
	having count(r.rating) >= 50
	order by avg_rating desc
	limit 10;
    
/*Movies with low ratings (below 2)*/
	select m.title, r.rating
    from rating r
    join movies m on r.movieId = m.movieId
    where r.rating < 2;
    
/*Most rated movies (highest number of ratings)*/
	select m.title, count(r.rating) as total_rating
    from rating r
    join movies on r.movieId = m.movieId
    group by m.title
    order by total_rating desc
    limit 5;

/*User who rated the most movies*/
	select userId, count(*) as rating_count
    from rating
    group by userId
    order by rating_count desc
    limit 1;
    
/*Average rating per user*/
	select userId, avg(rating) as avg_user_rating
    from rating
    group by useId;
    
/*Movies that belong to multiple genres*/
	select movieId, title, genres
    from movies
    where genres = '%|%';
    
/*Join movies & ratings*/
	select m.movieId, m.title, r.rating, r.userId
    from movies m
    left join rating r on m.movieId = r.movieId;


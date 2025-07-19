create database ott_platform;
USE OTT_PLATFORM;

CREATE TABLE USERS (
USER_ID INT PRIMARY KEY ,
USERNAME VARCHAR(50),
EMAIL VARCHAR (100),
SUBSCRIPTION_TYPE VARCHAR (30) );


CREATE TABLE MOVIES (
MOVIE_ID INT PRIMARY KEY ,
TITLE VARCHAR (100) , 
GENRE VARCHAR (30) ,
RELEASE_YEAR INT ,
RATING DECIMAL(3,1) );

CREATE TABLE WATCH_HISTORY (
HISTORY_ID INT PRIMARY KEY ,
USER_ID INT ,
MOVIE_ID INT ,
WATCH_DATE DATE ,
FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID) , 
FOREIGN KEY (MOVIE_ID) REFERENCES MOVIES(MOVIE_ID));


INSERT INTO users (user_id, username, email, subscription_type) VALUES
( 1, 'rahul123', 'rahul123@email.com', 'Free' ),
( 2, 'anita_k', 'anita_k@email.com', 'Premium' ),
( 3, 'mohit77', 'mohit77@email.com', 'Free' ),
( 4, 'sneha_p', 'sneha_p@email.com', 'Free' ),
( 5, 'john_doe', 'john_doe@email.com', 'Premium' ),
( 6, 'jane_smith', 'jane_smith@email.com', 'VIP' ),
( 7, 'vicky_v', 'vicky_v@email.com', 'Premium' ),
( 8, 'neha_singh', 'neha_singh@email.com', 'Free' ),
( 9, 'rohit99', 'rohit99@email.com', 'Free' ),
(10, 'meena_t', 'meena_t@email.com', 'VIP' ),
(11, 'arjun_r', 'arjun_r@email.com', 'Premium' ),
(12, 'priya_k', 'priya_k@email.com', 'Free' ),
(13, 'dev_sharma', 'dev_sharma@email.com', 'Premium' ),
(14, 'isha_q', 'isha_q@email.com', 'Free' ),
(15, 'kiran_m', 'kiran_m@email.com', 'VIP' ),
(16, 'zara_a', 'zara_a@email.com', 'Premium' ),
(17, 'amit_g', 'amit_g@email.com', 'Free' ),
(18, 'farhan_f', 'farhan_f@email.com', 'Free' ),
(19, 'rani_y', 'rani_y@email.com', 'Premium' ),
(20, 'sunny_b', 'sunny_b@email.com', 'VIP' ),
(21, 'kavita_d', 'kavita_d@email.com', 'Free' ),
(22, 'nilesh_w', 'nilesh_w@email.com', 'Premium' ),
(23, 'trisha_t', 'trisha_t@email.com', 'VIP' ),
(24, 'yash_p', 'yash_p@email.com', 'Premium' ),
(25, 'ekta_n', 'ekta_n@email.com', 'Free' );

INSERT INTO movies (movie_id, title, genre, release_year, rating) VALUES
( 1, 'The Shawshank Redemption', 'Drama', 1994, 9.3 ),
( 2, 'The Godfather', 'Crime', 1972, 9.2 ),
( 3, 'The Dark Knight', 'Action', 2008, 9.0 ),
( 4, 'Pulp Fiction', 'Crime', 1994, 8.9 ),
( 5, 'Forrest Gump', 'Drama', 1994, 8.8 ),
( 6, 'Inception', 'Sci-Fi', 2010, 8.8 ),
( 7, 'Fight Club', 'Drama', 1999, 8.8 ),
( 8, 'The Matrix', 'Sci-Fi', 1999, 8.7 ),
( 9, 'Avengers: Endgame', 'Action', 2019, 8.4 ),
(10, 'Interstellar', 'Sci-Fi', 2014, 8.6 ),
(11, 'The Hangover', 'Comedy', 2009, 7.7 ),
(12, 'Zindagi Na Milegi Dobara', 'Drama', 2011, 8.2 ),
(13, '3 Idiots', 'Comedy', 2009, 8.5 ),
(14, 'Parasite', 'Thriller', 2019, 8.6 ),
(15, 'Joker', 'Drama', 2019, 8.4 ),
(16, 'Titanic', 'Romance', 1997, 7.9 ),
(17, 'Deadpool', 'Action', 2016, 8.0 ),
(18, 'The Avengers', 'Action', 2012, 8.0 ),
(19, 'Captain America: Civil War', 'Action', 2016, 7.8 ),
(20, 'Iron Man', 'Action', 2008, 7.9 ),
(21, 'Doctor Strange', 'Action', 2016, 7.5 ),
(22, 'Toy Story', 'Animation', 1995, 8.3 ),
(23, 'Finding Nemo', 'Animation', 2003, 8.1 ),
(24, 'Inside Out', 'Animation', 2015, 8.1 ),
(25, 'The Social Network', 'Drama', 2010, 7.7 );

INSERT INTO watch_history (history_id, user_id, movie_id, watch_date) VALUES
(1, 17, 2, '2025-03-01'),
(2, 8, 2, '2025-03-01'),
(3, 13, 2, '2025-03-02'),
(4, 24, 2, '2025-03-02'),
(5, 6, 2, '2025-03-02'),
(6, 21, 2, '2025-03-03'),
(7, 11, 2, '2025-03-03'),
(8, 2, 2, '2025-03-03'),
(9, 25, 2, '2025-03-04'),
(10, 3, 2, '2025-03-05'),
(11, 20, 2, '2025-03-05'),
(12, 7, 2, '2025-03-06'),

(13, 9, 3, '2025-03-06'),
(14, 12, 3, '2025-03-06'),
(15, 5, 3, '2025-03-07'),
(16, 22, 3, '2025-03-07'),
(17, 18, 3, '2025-03-08'),
(18, 19, 3, '2025-03-08'),
(19, 1, 3, '2025-03-09'),
(20, 16, 3, '2025-03-09'),
(21, 14, 3, '2025-03-10'),
(22, 10, 3, '2025-03-10'),

(23, 23, 7, '2025-03-11'),
(24, 6, 7, '2025-03-11'),
(25, 4, 7, '2025-03-12'),
(26, 13, 7, '2025-03-12'),
(27, 15, 7, '2025-03-12'),
(28, 8, 7, '2025-03-13'),
(29, 21, 7, '2025-03-14'),
(30, 5, 7, '2025-03-14'),

(31, 1, 6, '2025-03-15'),
(32, 9, 11, '2025-03-15'),
(33, 24, 18, '2025-03-15'),
(34, 3, 10, '2025-03-16'),
(35, 12, 4, '2025-03-16'),
(36, 16, 13, '2025-03-16'),
(37, 18, 9, '2025-03-17'),
(38, 11, 1, '2025-03-17'),
(39, 7, 8, '2025-03-18'),
(40, 2, 5, '2025-03-18'),

(41, 10, 12, '2025-03-18'),
(42, 20, 14, '2025-03-19'),
(43, 17, 15, '2025-03-19'),
(44, 4, 16, '2025-03-19'),
(45, 25, 17, '2025-03-19'),
(46, 14, 19, '2025-03-20'),
(47, 6, 20, '2025-03-20'),
(48, 19, 21, '2025-03-21'),
(49, 23, 22, '2025-03-21'),
(50, 22, 23, '2025-03-21'),

(51, 3, 24, '2025-03-22'),
(52, 8, 25, '2025-03-22'),
(53, 13, 5, '2025-03-23'),
(54, 7, 6, '2025-03-23'),
(55, 15, 1, '2025-03-24'),
(56, 1, 9, '2025-03-24'),
(57, 2, 10, '2025-03-24'),
(58, 12, 11, '2025-03-25'),
(59, 5, 8, '2025-03-25'),
(60, 9, 14, '2025-03-26'),

(61, 17, 25, '2025-03-26'),
(62, 4, 24, '2025-03-26'),
(63, 10, 23, '2025-03-27'),
(64, 11, 22, '2025-03-27'),
(65, 18, 21, '2025-03-28'),
(66, 6, 20, '2025-03-28'),
(67, 19, 19, '2025-03-29'),
(68, 20, 18, '2025-03-29'),
(69, 14, 17, '2025-03-30'),
(70, 22, 16, '2025-03-30'),

(71, 16, 15, '2025-03-30'),
(72, 23, 13, '2025-03-31'),
(73, 25, 12, '2025-03-31'),
(74, 24, 4, '2025-03-31'),
(75, 3, 3, '2025-04-01'),
(76, 2, 7, '2025-04-01'),
(77, 21, 11, '2025-04-01'),
(78, 8, 2, '2025-04-02'),
(79, 6, 2, '2025-04-02'),
(80, 5, 2, '2025-04-03'),

(81, 12, 2, '2025-04-03'),
(82, 13, 2, '2025-04-03'),
(83, 10, 3, '2025-04-04'),
(84, 4, 3, '2025-04-04'),
(85, 14, 3, '2025-04-04'),
(86, 9, 3, '2025-04-05'),
(87, 1, 3, '2025-04-05'),
(88, 15, 3, '2025-04-06'),
(89, 22, 7, '2025-04-06'),
(90, 19, 7, '2025-04-06'),

(91, 16, 7, '2025-04-07'),
(92, 17, 7, '2025-04-07'),
(93, 11, 7, '2025-04-07'),
(94, 7, 6, '2025-04-08'),
(95, 23, 9, '2025-04-08'),
(96, 24, 10, '2025-04-08'),
(97, 18, 11, '2025-04-09'),
(98, 25, 12, '2025-04-09'),
(99, 20, 13, '2025-04-09'),
(100, 9, 14, '2025-04-10');

delete from watch_history;

select *from users;
select *from movies;
select *from watch_history;
SET SQL_SAFE_UPDATES = 0;

-- most watched movies analysis ------------------------------------------------------------------------------------------------------------------------
select m.title , count(m.movie_id) as most_watched from movies as m
join watch_history as w on m.movie_id = w.movie_id group by title order by most_watched desc;

-- binge watching users ---------------------------------------------------------------------------------------------------------------------------------
select u.username , count(w.user_id) as binge_watched from users as u
join watch_history as w on u.user_id = w.user_id group by u.username order by binge_watched desc;

-- users with premium & vip subscription ----------------------------------------------------------------------------------------------------------------
select user_id , username , subscription_type from users where subscription_type in("premium" , "vip");

-- users using free subscription type -------------------------------------------------------------------------------------------------------------------
select user_id , username , subscription_type from users where subscription_type = "free";

-- views per day ----------------------------------------------------------------------------------------------------------------------------------------
select watch_date , count(*) as views_per_day from watch_history group by watch_date order by watch_date;

-- movies that are released after 2010 -------------------------------------------------------------------------------------------------------------------
select title , release_year from movies where release_year > 2010;

-- movies that are released after 2015 -------------------------------------------------------------------------------------------------------------------
select title , release_year from movies where release_year > 2015;

-- movies that are released before 2010 -------------------------------------------------------------------------------------------------------------------
select title , release_year from movies where release_year < 2010;

-- most watched genre ----------------------------------------------------------------------------------------------------------------------------------------------
select m.genre , count(m.movie_id) as most_watched_genre from movies as m
join watch_history as w on m.movie_id = w.movie_id group by m.genre order by most_watched_genre desc;

-- most watched genre by users -------------------------------------------------------------------------------------------------------------------------------------
select u.username , m.genre , count(*) as watch_count from users as u 
join watch_history as w on u.user_id = w.user_id 
join movies as m on m.movie_id = w.movie_id group by u.username , m.genre;

-- total_views of users ---------------------------------------------------------------------------------------------------------------------------------------------
select u.username , count(w.user_id) as total_views from users as u
join watch_history as w on u.user_id = w.user_id group by w.user_id order by total_views desc;

-- viewers type -----------------------------------------------------------------------------------------------------------------------------------------------------
select user_id , count(*) as total_views ,
case when 
count(*) > 4 then "heavy viewer"
when count(*) between 3 and 4 then "moderate viewer" 
else "light viewer" 
end as viewer_type from watch_history group by user_id order by total_views desc;

-- high moderate and low rated movies ---------------------------------------------------------------------------------------------------------------------------
select movie_id , title , rating ,
case when 
rating > 9 then "high rated"
when rating between 8 and 9 then "moderate rated"
else "low rated" 
end as movie_type from movies order by rating desc;

-- top 5 most active users ------------------------------------------------------------------------------------------------------------------------------------
SELECT u.username, COUNT(w.history_id) AS total_movies_watched
FROM users u
JOIN watch_history w ON u.user_id = w.user_id
GROUP BY u.user_id
ORDER BY total_movies_watched DESC
LIMIT 5;

select subscription_type ,count(subscription_type) from users group by subscription_type;

select title , rating from movies order by rating desc limit 5;

select u.user_id , u.username , m.title,rating from users as u 
join watch_history as w on u.user_id = w.user_id 
join movies as m on m.movie_id = w.movie_id 
 order by rating desc limit 5;


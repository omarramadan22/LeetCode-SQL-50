(select Users.name AS results  from MovieRating
join Users 
ON Users.user_id = MovieRating.user_id
group by MovieRating.user_id
order by count(MovieRating.user_id) DESC , Users.name ASC 
limit 1)
UNION ALL
select title from Movies 
where movie_id = (select MovieRating.movie_id from MovieRating 
join Movies 
on Movies.movie_id = MovieRating.movie_id
where YEAR(created_at) =2020 AND MONTH(created_at) = 02
group by MovieRating.movie_id
order by avg(rating) DESC , Movies.title ASC 
limit 1) ;
SELECT m.movie_title as movie_title,
       m.movie_year as movie_year,
       concat(d.director_first_name,d.director_last_name) as director_name,
       concat(a.actor_first_name,a.actor_last_name) as actor_name,
       mc.role as role
FROM movies as m,
     movies_directors as md,
     directors as d,
     movies_cast as mc,
     actors as a
WHERE m.movie_id = md.movie_id and
      md.director_id = d.director_id and
      m.movie_id = mc.movie_id and
      mc.actor_id = a.actor_id and m.movie_time=(SELECT min(movie_time) from movies);
select concat(d.director_first_name, d.director_last_name) as director_name, movie_title
from directors d 
left join movies_directors md on md.director_id = d.director_id
left join movies m on m.movie_id = md.movie_id
left join movies_cast mc on mc.movie_id = m.movie_id
where mc.role = 'SeanMaguire'
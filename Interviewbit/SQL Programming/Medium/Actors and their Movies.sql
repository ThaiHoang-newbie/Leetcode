select movie_title 
from movies m left join movies_cast mc on mc.movie_id = m.movie_id
left join actors a on a.actor_id = mc.actor_id
where a.actor_id in (select actor_id from movies_cast GROUP BY actor_id having count(*) >= 2);

WHERE actors.actor_id IN (
SELECT actor_id
FROM movies_cast
GROUP BY actor_id HAVING COUNT(*)>=2);
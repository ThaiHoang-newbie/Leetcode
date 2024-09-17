select Name from Players
where id in
(select id from Matches
group by id
having sum(result) in
(count(id)-1,count(id)) and
sum(result)>0 and count(Id)>0) ;
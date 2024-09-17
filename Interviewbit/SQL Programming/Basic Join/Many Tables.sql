select sum(e.count) as A from ENGINEER e join DATA d on e.id = d.id 
group by d.type
order by d.type ASC
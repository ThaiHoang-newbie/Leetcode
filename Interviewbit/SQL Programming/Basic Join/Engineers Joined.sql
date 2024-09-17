select sum(e.count) as A from ENGINEER e join DATA d on e.id = d.id 
where d.type = 'FrontEnd'
group by d.type
order by d.type ASC
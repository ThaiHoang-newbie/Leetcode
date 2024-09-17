SELECT concat(role,' Count is ', count(role)) as 'count' FROM GAMERS 
group by role
order by count(role)
select format(sum(Result)/count(Result),4) as 'Percentage Wins'
from Matches 
where PlayerId2 not in (select Id from Team2 where cheater = 1)
group by date
order by Date;
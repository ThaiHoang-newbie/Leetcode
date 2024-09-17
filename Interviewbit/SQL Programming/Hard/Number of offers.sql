select ifnull(count(J.Id),0) as Job_Offers
from Students S left join Jobs J on J.Id=S.Id and month(Date)='11' 
group by S.Id 
order by S.Id;
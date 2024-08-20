select s.user_id,
        round(coalesce(sum(case c.action 
        when 'confirmed' then 1
        else 0 end) / count(c.user_id), 0), 2) as confirmation_rate
        
from Signups s left join Confirmations c
on c.user_id = s.user_id
group by s.user_id
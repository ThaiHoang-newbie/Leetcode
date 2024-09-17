select l1.name as LABOURER1, l2.name as LABOURER2, l2.country as country 
from LABOURERS l1 join LABOURERS l2
on l1.country = l2.country
WHERE l1.Name <> l2.Name
order by LABOURER1, LABOURER2, country
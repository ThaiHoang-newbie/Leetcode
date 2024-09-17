select concat(Player, "(", SUBSTRING(role, 1, 1) ,")") as N 
from GAMERS
order by Player
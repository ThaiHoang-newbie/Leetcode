select (case when Rating >= 6 then name else null end) as Names, rating from EVALUATION ev, EMPLOYEE e where e.Points between ev.Lower AND ev.Upper
order by ev.rating DESC
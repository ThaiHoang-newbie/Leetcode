with managers as(
	SELECT managerId 
	FROM employee
	GROUP BY managerId 
	HAVING COUNT(id)>=5 )

SELECT name
FROM employee
WHERE id in (SELECT * FROM managers);
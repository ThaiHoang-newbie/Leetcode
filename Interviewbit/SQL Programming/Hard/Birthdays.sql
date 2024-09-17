SELECT 
    GROUP_CONCAT(Name SEPARATOR ',') AS Names
FROM 
    Students
GROUP BY 
    Birthdate
ORDER BY 
    Birthdate ASC;
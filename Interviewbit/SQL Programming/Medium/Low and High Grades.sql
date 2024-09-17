select COUNT(Name) from EMPLOYEE, EVALUATION 
where points >= lower
and points <= upper
and rating < 3;

select COUNT(Name) from EMPLOYEE, EVALUATION 
where points >= lower
and points <= upper
and rating > 8;
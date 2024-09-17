select count(id) as A from Students
where marks > (select avg(marks) from Students)
group by ClassId
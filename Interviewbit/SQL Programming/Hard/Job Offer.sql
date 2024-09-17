select concat(s.name, ',', j.date) as 'Offers' from Students s join Departments d on s.DepartmentId = d.DepartmentId
join Jobs j on s.id = j.id
order by d.DepartmentName
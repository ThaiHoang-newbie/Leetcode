select sum(j.salary) as Salary from Students s left join Departments d on s.DepartmentId = d.DepartmentId
left join Jobs j on s.id = j.id
where DepartmentName= 'CSE'
group by s.DepartmentId
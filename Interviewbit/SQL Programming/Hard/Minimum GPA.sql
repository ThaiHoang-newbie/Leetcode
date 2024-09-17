SELECT concat(d.DepartmentName,',',s.Name,',',s.GPA) as A
from Students as s,Departments as d where s.DepartmentId = d.DepartmentId
and (s.GPA,s.DepartmentId) in (
    SELECT min(GPA), DepartmentId from Students
    GROUP BY DepartmentId
)
ORDER BY d.DepartmentName;
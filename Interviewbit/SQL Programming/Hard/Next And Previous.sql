select lead(Marks) OVER (order by Marks) Next
from Students order by Name;
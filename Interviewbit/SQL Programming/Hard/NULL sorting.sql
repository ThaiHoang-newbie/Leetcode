select name from (Select Name,
Case
    When Marks = 'Absent' Then NULL Else Marks
End as Mark 
From Students Order by Mark Desc, Name Asc) as A
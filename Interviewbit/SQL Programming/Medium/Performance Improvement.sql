select t2.TestId from Tests t1 left join Tests t2 on t1.testid = t2.testid -1
where t2.marks > t1.marks
order by t1.testid ASC
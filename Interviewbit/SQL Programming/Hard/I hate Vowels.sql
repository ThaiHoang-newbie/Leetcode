select Name from Students 
order by (
    case
        when SUBSTRING(name, 1, 1) in ('U', 'E', 'O', 'A', 'I')
        then (
            case
                when Marks1 >= Marks2
                then Marks2
                else Marks1
            end
        ) else (
            case
                when Marks1 >= Marks2
                then Marks1
                else Marks2
            end
        )
   end
) DESC
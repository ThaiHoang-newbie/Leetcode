with table_player_id as (
    select player_id, min(event_date) as event_start_date
    from Activity
    group by player_id 
)

select round(count(a.player_id ) / (select count(distinct player_id) from activity), 2) as fraction from table_player_id tb join Activity a
on tb.player_id = a.player_id and datediff(a.event_date, tb.event_start_date) = 1
with min_order_date as (
    select 
        case when min(customer_pref_delivery_date) = min(order_date) or min(customer_pref_delivery_date) < min(order_date) then 1
        else 0 end 
        as immediate_percentage
    from Delivery 
    group by customer_id
)

select round(avg(immediate_percentage) * 100, 2) as immediate_percentage from min_order_date
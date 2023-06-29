-- select
--         d.order_id,
--         d.customer_id,
--         sum( case when p.status = 'success' then p.amount else 0 end ) as amount
-- from {{ ref('stg_orders') }} as d
--         left join {{ ref('stg_payments') }} as p using ( order_id )
-- group by
--         d.order_id,
--         d.customer_id

{{ dbt_utils.date_spine(
    "day",
    "to_date('01/01/2016', 'mm/dd/yyyy')",
    "dateadd(week, 1, current_date)"
) }}
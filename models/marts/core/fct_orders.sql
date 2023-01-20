select
        d.order_id,
        d.customer_id,
        sum( p.amount ) as amount
from {{ ref('stg_orders') }} as d
        left join {{ ref('stg_payments') }} as p using ( order_id )
group by
        d.order_id,
        d.customer_id
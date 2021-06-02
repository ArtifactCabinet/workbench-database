-- calculate monthly growth of the payments

-- The point of this script is that you can reuse a table itself to calculate chagnes

with mounth as (
    select date_trunc('month',payment_date) as curdate,
           sum(amount) as sum
from payment
group by date_trunc('month',payment_date)
) select perv_mouth.curdate,
         perv_mouth.sum,
         cur_month.sum,
       ROUND(100.0*(cur_month.sum-perv_mouth.sum)/perv_mouth.sum,2) as percent_change
from mounth perv_mouth
join mounth cur_month ON perv_mouth.curdate = cur_month.curdate - interval '1 month';

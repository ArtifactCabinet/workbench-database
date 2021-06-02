-- aggregate the data for each mounth
select sum(amount),
       avg(amount),
       count(payment_id),
       to_char(DATE_TRUNC('month',payment_date),'YYYY-MM') as mounth
from payment
group by DATE_TRUNC('month',payment_date)

SELECT *
FROM payment
WHERE payment_date >= '2007-05-01'::date
ORDER BY payment_id DESC

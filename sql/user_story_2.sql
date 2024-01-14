SELECT *
FROM transactions_sample
WHERE ville LIKE 'Lyon%'
ORDER BY date_transaction DESC
LIMIT 10;
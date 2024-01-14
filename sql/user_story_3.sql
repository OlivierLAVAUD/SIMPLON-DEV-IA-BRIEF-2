SELECT COUNT(*) AS nombre_acquisitions
FROM transactions_sample
WHERE ville LIKE 'Paris%' AND date_transaction LIKE '2022%';
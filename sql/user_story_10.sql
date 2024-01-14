SELECT ville, COUNT(*) AS nombre_transactions
FROM transactions_sample
GROUP BY ville
ORDER BY nombre_transactions DESC
LIMIT 10;
SELECT departement, COUNT(*) AS nombre_transactions
FROM transactions_sample
GROUP BY departement
ORDER BY nombre_transactions DESC;
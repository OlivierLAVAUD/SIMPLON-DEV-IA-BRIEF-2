SELECT n_pieces, COUNT(*) AS nombre_appartements
FROM transactions_sample
WHERE ville LIKE 'Marseille%' AND type_batiment = 'Appartement' AND date_transaction LIKE '2022%'
GROUP BY n_pieces
ORDER BY n_pieces;
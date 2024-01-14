SELECT COUNT(*) AS nombre_acquisitions_studios
FROM transactions_sample
WHERE ville = 'Rennes' AND type_batiment = 'Studio' AND date_transaction LIKE '2022%';
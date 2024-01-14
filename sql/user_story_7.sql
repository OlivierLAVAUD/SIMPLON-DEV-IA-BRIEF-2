SELECT AVG(prix / surface_habitable) AS prix_m2_moyen
FROM transactions_sample
WHERE ville LIKE 'Avignon%' AND type_batiment = 'Maison' AND date_transaction LIKE '2022%'
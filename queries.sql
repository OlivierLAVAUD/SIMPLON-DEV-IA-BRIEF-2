SELECT revenu_fiscal_moyen  FROM foyers_fiscaux WHERE ville LIKE 'Montpellier%';
SELECT * FROM transactions_sample WHERE ville LIKE 'Lyon%' ORDER BY date_transaction DESC LIMIT 10;
SELECT COUNT(*) AS nombre_acquisitions FROM transactions_sample WHERE ville LIKE 'Paris%' AND date_transaction LIKE '2022%';
SELECT AVG(prix / surface_habitable) AS prix_m2_moyen FROM transactions_sample WHERE type_batiment = 'Maison' AND date_transaction LIKE '2022%';
SELECT COUNT(*) AS nombre_acquisitions_studios FROM transactions_sample WHERE ville = 'Rennes' AND type_batiment = 'Studio' AND date_transaction LIKE '2022%';
SELECT n_pieces, COUNT(*) AS nombre_appartements FROM transactions_sample WHERE ville LIKE 'Marseille%' AND type_batiment = 'Appartement' AND date_transaction LIKE '2022%' GROUP BY n_pieces ORDER BY n_pieces;
SELECT AVG(prix / surface_habitable) AS prix_m2_moyen FROM transactions_sample WHERE ville LIKE 'Avignon%' AND type_batiment = 'Maison' AND date_transaction LIKE '2022%'
SELECT departement, COUNT(*) AS nombre_transactions FROM transactions_sample GROUP BY departement ORDER BY nombre_transactions DESC;
SELECT COUNT(*) AS nombre_total_ventes FROM transactions_sample WHERE ville IN ( SELECT ville FROM foyers_fiscaux WHERE revenu_fiscal_moyen > 70000  AND date = 2018 ) AND type_batiment = 'Appartement'   AND date_transaction LIKE '2022%'; 
SELECT ville, COUNT(*) AS nombre_transactions FROM transactions_sample GROUP BY ville ORDER BY nombre_transactions DESC LIMIT 10; 
SELECT ville, AVG(prix / surface_habitable) AS prix_m2_moyen FROM transactions_sample WHERE type_batiment = 'Appartement' GROUP BY ville ORDER BY prix_m2_moyen LIMIT 10;
SELECT ville, AVG(prix / surface_habitable) AS prix_m2_moyen FROM transactions_sample WHERE type_batiment = 'Maison' GROUP BY ville ORDER BY prix_m2_moyen DESC LIMIT 10;
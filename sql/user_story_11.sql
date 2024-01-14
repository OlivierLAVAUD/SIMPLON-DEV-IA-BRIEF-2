SELECT ville, AVG(prix / surface_habitable) AS prix_m2_moyen
FROM transactions_sample
WHERE type_batiment = 'Appartement'
GROUP BY ville
ORDER BY prix_m2_moyen
LIMIT 10;
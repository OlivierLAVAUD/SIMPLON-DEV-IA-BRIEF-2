SELECT COUNT(*) AS nombre_total_ventes
FROM transactions_sample
WHERE ville IN (
    SELECT ville
    FROM foyers_fiscaux
    WHERE revenu_fiscal_moyen > 70000
       AND date = 2018
)
   AND type_batiment = 'Appartement'
   AND date_transaction LIKE '2022%';
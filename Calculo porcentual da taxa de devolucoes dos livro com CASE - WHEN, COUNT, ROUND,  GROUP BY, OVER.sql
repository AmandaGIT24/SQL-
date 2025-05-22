-- CALCULAR A TAXA DE DEVOLUÇAO DENTRO DO PRAZO, FORA DO PRAZO E NAO ENTREGUES

SELECT 
    Status_Entrega,
    COUNT(*) AS Quantidade,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percentual -- exemplo -Para "ENTREGUE NO PRAZO":  ROUND(17 * 100.0 / 90, 2) = 18,89  - 90= total de todos os registros
FROM (
    SELECT 
        CASE
            WHEN Data_prevista = Data_entrega THEN 'ENTREGUE NO PRAZO'
            WHEN Data_entrega IS NULL AND (Data_prevista - Data_retirada) > 14 THEN 'COM ATRASO NA ENTREGA'
            WHEN Data_entrega IS NULL AND (Data_prevista - Data_retirada) <= 14 THEN 'ATIVO'
            ELSE 'ENTREGUE COM ATRASO'
        END AS Status_Entrega 
    FROM emprestimos
) AS Subquery
GROUP BY Status_Entrega; 








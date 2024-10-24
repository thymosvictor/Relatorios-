
-- relatorio 10
SELECT 
    DATE(v.data) AS Data_Venda,
    COUNT(v.idVenda) AS Quantidade_Vendas,
    SUM(v.valor) AS Valor_Total_Venda
FROM 
    Venda v
GROUP BY 
    DATE(v.data)
ORDER BY 
    Data_Venda DESC;
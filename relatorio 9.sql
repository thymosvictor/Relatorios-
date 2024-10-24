-- relatorio 9
SELECT 
    f.tipo AS Tipo_Forma_Pagamento,
    COUNT(v.idVenda) AS Quantidade_Vendas,
    SUM(f.valorPago) AS Total_Valor_Vendido
FROM 
    FormaPgVenda f
JOIN 
    Venda v ON f.Venda_idVenda = v.idVenda
GROUP BY 
    f.idFormaPgVenda
ORDER BY 
    Quantidade_Vendas DESC;
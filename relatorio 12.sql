-- relatorio 12
SELECT 
    p.nome AS Nome_Produto,
    COUNT(ip.Produto_idProduto) AS Quantidade_Total_Vendas,
    SUM(ip.valor) AS Valor_Total_Recebido
FROM 
    ItensVendaProd ip
JOIN 
    Produtos p ON ip.Produto_idProduto = p.idProduto
GROUP BY 
    p.idProduto
ORDER BY 
    Quantidade_Total_Vendas DESC;
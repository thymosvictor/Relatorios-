SELECT 
    s.nome AS Nome_do_Servico,
    COUNT(its.Servico_idServico) AS Quantidade_Vendas,
    SUM(its.valor) AS Total_Valor_Vendido
FROM 
    itensServico its
JOIN 
    Servico s ON its.Servico_idServico = s.idServico
GROUP BY 
    s.idServico
ORDER BY 
    Quantidade_Vendas DESC
LIMIT 10;

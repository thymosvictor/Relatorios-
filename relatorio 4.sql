-- relatorio 4
SELECT 
    e.nome AS Nome_Empregado,
    e.cpf AS CPF_Empregado,
    e.sexo AS Sexo,
    e.salario AS Salario,
    COUNT(v.idVenda) AS Quantidade_Vendas,
    SUM(v.valor) AS Total_Valor_Vendido,
    SUM(v.comissao) AS Total_Comissao
FROM 
    Empregado e
LEFT JOIN 
    Venda v ON e.cpf = v.Empregado_cpf
GROUP BY 
    e.cpf
ORDER BY 
    Quantidade_Vendas DESC;

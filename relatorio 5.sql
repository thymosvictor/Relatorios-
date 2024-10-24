-- relatorio 5
SELECT 
    e.nome AS Nome_Empregado,
    e.cpf AS CPF_Empregado,
    e.sexo AS Sexo,
    e.salario AS Salario,
    COUNT(DISTINCT v.idVenda) AS Quantidade_Vendas_Com_Servico,
    SUM(its.valor) AS Total_Valor_Vendido_Com_Servico,
    SUM(its.desconto) AS Total_Comissao
FROM 
    Empregado e
JOIN 
    itensServico its ON e.cpf = its.Empregado_cpf
JOIN 
    Venda v ON its.Venda_idVenda = v.idVenda
GROUP BY 
    e.cpf, e.nome, e.sexo, e.salario
ORDER BY 
    Quantidade_Vendas_Com_Servico DESC;

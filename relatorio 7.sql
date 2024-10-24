-- relatorio 7
SELECT 
    v.data AS Data_da_Venda,
    v.valor AS Valor,
    v.desconto AS Desconto,
    (v.valor - v.desconto) AS Valor_Final,
    e.nome AS Empregado_que_realizou
FROM 
    Venda v
JOIN 
    Cliente c ON v.Cliente_cpf = c.cpf
JOIN 
    Empregado e ON v.Empregado_cpf = e.cpf
ORDER BY 
    v.data DESC;

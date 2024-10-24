-- relatorio 11
SELECT 
    p.nome AS Nome_Produto,
    p.valorVenda AS Valor_Produto,
    p.marca AS Categoria_do_Produto,
    f.nome AS Nome_Fornecedor,
    f.email AS Email_Fornecedor,
    t.numero AS Telefone_Fornecedor
FROM 
    Produtos p
JOIN 
    Fornecedor f ON p.idProduto = f.cpf_cnpj
LEFT JOIN 
    Telefone t ON f.cpf_cnpj = t.Fornecedor_cpf_cnpj
ORDER BY 
    p.nome;

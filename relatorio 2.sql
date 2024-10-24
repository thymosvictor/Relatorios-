-- relatorio 2

SELECT 
    e.nome AS Nome_Empregado,
    e.cpf AS CPF_Empregado,
    e.dataAdm AS Data_Admissao,
    e.salario AS Salario,
    d.nome AS Departamento,
    t.numero AS Numero_Telefone
FROM 
    Empregado e
JOIN 
    Departamento d ON e.Departamento_idDepartamento = d.idDepartamento
LEFT JOIN 
    Telefone t ON e.cpf = t.Empregado_cpf
WHERE 
    e.salario < (SELECT AVG(salario) FROM Empregado)
ORDER BY 
    e.nome;
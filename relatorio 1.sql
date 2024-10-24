-- Relatorio 1

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
    e.dataAdm BETWEEN '2019-01-01' AND '2022-03-31'
ORDER BY 
    e.dataAdm DESC;

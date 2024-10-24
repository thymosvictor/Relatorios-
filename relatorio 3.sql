-- relatorio 3
SELECT 
    d.nome AS Departamento,
    COUNT(e.cpf) AS Quantidade_Empregados,
    AVG(e.salario) AS Media_Salarial,
    AVG(e.comissao) AS Media_Comissao
FROM 
    Departamento d
LEFT JOIN 
    Empregado e ON d.idDepartamento = e.Departamento_idDepartamento
GROUP BY 
    d.nome
ORDER BY 
    d.nome;
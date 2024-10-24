SELECT 
    p.nome AS Nome_do_Pet,
    its.data AS Data_do_Servico,
    s.nome AS Nome_do_Servico,
    its.quantidade AS Quantidade,
    its.valor AS Valor,
    e.nome AS Empregado_que_realizou
FROM 
    itensServico its
JOIN 
    PET p ON its.PET_idPET = p.idPET
JOIN 
    Servico s ON its.Servico_idServico = s.idServico
JOIN 
    Empregado e ON its.Empregado_cpf = e.cpf
ORDER BY 
    its.data DESC;

USE visualizacoes;

CREATE VIEW gastos_departamentos AS
    SELECT departamento as nome, 
    SUM(salario)as gastos_salarios
    FROM funcionarios
    GROUP BY departamento
    ORDER BY gastos_salarios DESC;


SELECT nome, gastos_salarios *12 as gastos_anuais
FROM  gastos_departamentos
ORDER BY gastos_salarios;

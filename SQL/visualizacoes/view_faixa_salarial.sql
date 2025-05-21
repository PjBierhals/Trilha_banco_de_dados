USE visualizacoes;

CREATE VIEW faixa_salarial AS
    SELECT id, nome, salario,
    CASE 
        WHEN salario >= 6000 THEN 'ALTO'  
        WHEN salario >= 4000  AND salario <= 6000 THEN'MÈDIO'  
        ELSE  'BAIXO'
    END AS faixa_salarial
    FROM funcionarios;


SELECT  * FROM faixa_salarial;

UPDATE funcionarios set salario = 3000 WHERE id = 5;
USE visualizacoes;



ALTER VIEW faixa_salarial AS
    SELECT id, nome, salario,
    CASE 
        WHEN salario >= 6000 THEN 'ALTO'  
        WHEN salario >= 3500  AND salario <= 6000 THEN'MÈDIO'  
        ELSE  'BAIXO'
    END AS faixa_salarial
    FROM funcionarios;
CREATE OR REPLACE VIEW faixa_salarial AS
    SELECT id, nome, salario,
    CASE 
        WHEN salario >= 6000 THEN 'ALTO'  
        WHEN salario >= 4800  AND salario <= 6000 THEN'MÈDIO'  
        ELSE  'BAIXO'
    END AS faixa_salarial
    FROM funcionarios;

SELECT * FROM faixa_salarial;

SHOW create VIEW faixa_salarial;
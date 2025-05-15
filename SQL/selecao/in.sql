USE selecoes;


SELECT * FROM departamento;
SELECT * FROM departamento
WHERE nome='Financeiro' or nome= 'Contabilidade' or nome='Marketing';

SELECT * FROM departamento
WHERE nome in('Financeiro','Contabilidade','Marketing');



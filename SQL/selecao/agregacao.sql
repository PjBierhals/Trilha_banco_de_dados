USE selecoes;

SELECT * FROM departamento;
--função de count
SELECT count(*)as Total FROM departamento;
--soma
SELECT SUM(qtde_min_empregados)as Total FROM departamento;

--avg
SELECT AVG(qtde_min_empregados)as Média FROM departamento;
--min
SELECT MIN(qtde_min_empregados)as MInimo,
MAX(qtde_min_empregados) as Max FROM departamento;



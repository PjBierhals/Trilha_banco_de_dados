USE selecoes;


SELECT * FROM departamento;
SELECT * FROM departamento
ORDER BY nome;
SELECT * FROM departamento
ORDER BY id DESC;
SELECT * FROM departamento
ORDER BY id ASC;
SELECT * FROM departamento
ORDER BY qtde_min_empregados DESC;
--desta forma utiliza critérito de desempate
SELECT * FROM departamento
ORDER BY localizacao ASC, qtde_min_empregados DESC;

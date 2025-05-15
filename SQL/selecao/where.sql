USE selecoes;

SELECT * FROM departamento;
SELECT * FROM departamento WHERE id = 1;
SELECT * FROM departamento WHERE 1;

--AND condicional e
SELECT * FROM departamento WHERE id > 1 AND
qtde_min_empregados<5;
SELECT * FROM departamento WHERE id > 1 AND
qtde_min_empregados<5 AND localizacao="Bloco A, Primeiro andar";
--OR condicional ou
SELECT * FROM departamento WHERE id > 1 OR
qtde_min_empregados<5 OR localizacao="Bloco A, Primeiro andar";

--NOT condicional negação
SELECT * FROM departamento
WHERE NOT localizacao = "Bloco A, Primeiro andar";
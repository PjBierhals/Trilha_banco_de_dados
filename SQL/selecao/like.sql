USE selecoes;


SELECT * FROM departamento;
SELECT * FROM departamento
WHERE localizacao LIKE 'Bloco B%';
SELECT * FROM departamento
WHERE localizacao LIKE '%Primeiro andar';
SELECT * FROM departamento
WHERE nome LIKE '%bilidade';
--quando uso _match de 1 caracter
SELECT * FROM departamento
WHERE nome LIKE '_inanceiro';
SELECT * FROM departamento
WHERE localizacao LIKE 'Bloco _, Primeiro andar';
SELECT * FROM departamento
WHERE localizacao LIKE 'Bloco _,%';



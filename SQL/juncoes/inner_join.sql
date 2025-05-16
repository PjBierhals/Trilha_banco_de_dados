USE juncoes;


SELECT * FROM pessoa 
INNER JOIN filme
on pessoa.filme_preferido = filme.id;

SELECT *
FROM pessoa, filme
WHERE pessoa.filme_preferido = filme.id;
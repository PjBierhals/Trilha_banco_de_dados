USE juncoes;


SELECT * FROM pessoa 
LEFT OUTER JOIN filme
on pessoa.filme_preferido = filme.id;

SELECT * FROM pessoa 
LEFT JOIN filme
on pessoa.filme_preferido = filme.id;

SELECT * FROM pessoa 
RIGHT JOIN filme
on pessoa.filme_preferido = filme.id;

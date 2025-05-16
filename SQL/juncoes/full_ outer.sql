USE juncoes;


SELECT * FROM pessoa 
FULL OUTER JOIN filme
on pessoa.filme_preferido = filme.id;


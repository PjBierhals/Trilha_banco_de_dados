USE juncoes;

SELECT pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme
FROM pessoa
CROSS JOIN filme;
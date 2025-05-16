USE juncoes;


SELECT * FROM pessoa 
WHERE NOT EXISTS(
    SELECT 1
    FROM filme
    WHERE pessoa.filme_preferido= filme.id
    );

--o not reverte a consulta
--verifica se a pessoa tem um filme preferido
--exists o select 1 retorna true ou false fazendo 
--a pesquisa na tabela filme retornando se tem o filme
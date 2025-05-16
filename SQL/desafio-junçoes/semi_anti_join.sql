USE juncoes;


--semi join para trazer o filmes preferidos das pessoas
SELECT * FROM filme
WHERE EXISTS(
    SELECT 1
    FROM pessoa
    WHERE pessoa.filme_preferido =filme.id
);

--traz o filme que não a ligação com niguem
SELECT * FROM filme
WHERE NOT EXISTS(
    SELECT 1
    FROM pessoa
    WHERE pessoa.filme_preferido =filme.id
);
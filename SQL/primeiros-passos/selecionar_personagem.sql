SELECT * FROM starwars.personagem

-- seleções que limitam colunas
SELECT id, nome FROM starwars.personagem


SELECT id as Identificador, nome as NomeCompleto FROM starwars.personagem

-- seleções que limitam linhas
SELECT * FROM starwars.personagem WHERE id = 1;
SELECT * FROM starwars.personagem WHERE id <> 1;
SELECT nome, id FROM starwars.personagem WHERE id <> 1;
SELECT altura FROM starwars.personagem
WHERE nome = 'Leia';
SELECT altura * 3 as triplo, nome FROM starwars.personagem
WHERE id <>3;
SELECT nome, id FROM starwars.personagem
WHERE id >3;
SELECT nome, id FROM starwars.personagem
WHERE id <3;
SELECT nome, id FROM starwars.personagem
WHERE id >=3;
SELECT nome, id FROM starwars.personagem
WHERE id <=3;



SELECT * FROM starwars.personagem



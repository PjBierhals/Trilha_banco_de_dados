SELECT * FROM starwars.planeta;
-- 1 - selecionar nome e o diametro dos planetas
SELECT nome, raio * 2 as diametro FROM starwars.planeta;
-- 2 - selecionar planetas com id PAR
SELECT * FROM starwars.planeta WHERE id % 2 =0;
-- 3 - selecionar planetas com nome diferente de 'Tatooine'
SELECT * FROM starwars.planeta WHERE nome <> 'Tatooine';
-- 4 - selecionar planetar não habitados
SELECT * FROM starwars.planeta WHERE habitado =false;
SELECT * FROM starwars.planeta WHERE habitado =0;
SELECT * FROM starwars.planeta WHERE NOT habitado;
-- 5 - selecionar planetas habitados
SELECT * FROM starwars.planeta WHERE habitado =true;
SELECT * FROM starwars.planeta WHERE habitado =1;
SELECT * FROM starwars.planeta WHERE habitado;


SELECT * from starwars.personagem;

-- deleta toda tabela
DELETE FROM starwars.personagem; 

DELETE FROM starwars.personagem WHERE id =12; 
DELETE FROM starwars.personagem WHERE altura is NULL; 
DELETE FROM starwars.personagem WHERE nome = 'darth'; 

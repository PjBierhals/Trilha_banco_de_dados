SELECT * from starwars.personagem;
-- para fazer updates sem WHERE segurança mysql
SET SQL_SAFE_UPDATE = 0

UPDATE starwars.personagem SET nome='darth'

UPDATE starwars.personagem SET nome ='LukeSkywalker' WHERE id =1;
UPDATE starwars.personagem SET nome ='Chewbacca' WHERE id =2;
UPDATE starwars.personagem SET destaque= NOT destaque WHERE id =2;
UPDATE starwars.personagem SET nome= 'Leia Organa', altura = 1.6 WHERE id =6;
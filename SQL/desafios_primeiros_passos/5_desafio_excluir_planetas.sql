-- excluir todos os planets com id impar
SELECT * FROM starwars.planeta;

DELETE FROM starwars.planeta WHERE id % 2 = 1;
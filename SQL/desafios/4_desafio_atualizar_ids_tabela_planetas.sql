-- Deixar os id na sequancia sem intervalos ...1, 2, 3, 4, 5
SELECT * FROM starwars.planeta ORDER BY id ASC;

UPDATE starwars.planeta SET id =1 WHERE id = 600;
UPDATE starwars.planeta SET id =2 WHERE id = 200;
UPDATE starwars.planeta SET id =3 WHERE id = 300;
UPDATE starwars.planeta SET id =4 WHERE id = 400;
UPDATE starwars.planeta SET id =5 WHERE id = 500;


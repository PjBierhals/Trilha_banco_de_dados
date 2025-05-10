-- INSERIR OS DADOS NA TABELA

-- +-----+-----------+---------+-------------+-----------+
-- | id  | nome      |   raio  |   qtde_Luas | habitado  |
-- +-----+-----------+---------+-------------+-----------+
-- | 600 | Abafar    | 605857  |        NULL |         1 |
-- | 200 | Alderaan  | 6250    |           0 |         1 |
-- | 300 | Tatooine  | 5247.5  |           3 |         1 |
-- | 400 | Sullust   | NULL    |           3 |         1 |
-- | 500 | Saturno   | 58232   |           7 |         1 |
-- +-----+-----------+---------+-------------+-----------+


INSERT INTO starwars.planeta VALUES
(600,'Abafar',605857,NULL,1)
(200,'Alderaan',6250,0,1),
(300,'Tatooine',5247.5,3,1),
(400,'Sullust',NULL,3,1),
(500,'Saturno',58232,7,0);


SELECT * FROM starwars.planeta
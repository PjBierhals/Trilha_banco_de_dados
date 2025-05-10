--Criar uma tabela chamada planeta
--id int
--nome varchar(120)
--raio decimal(8,2)
--qtde_luas int
--habitado boolean

USE starwars;
CREATE TABLE IF NOT exists planeta (
    id int,
    nome varchar(120),
    raio decimal(8,2),
    qtde_luas int,
    habitado boolean
);
show TABLEs; 
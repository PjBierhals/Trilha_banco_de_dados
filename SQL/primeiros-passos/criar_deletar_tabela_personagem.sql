--usar o database
use starwars;
--criar a tabel
CREATE TABLE personagem (
    id int,
    nome VARCHAR(120),
    altura DECIMAL(4,2),
    destaque BOOLEAN,
    nascimento date
)

--ou
CREATE TABLE if not exists personagem (
    id int,
    nome VARCHAR(120),
    altura DECIMAL(4,2),
    destaque BOOLEAN,
    nascimento date
)

--deletar a tabela
drop table personagem;
--ou
DROP TABLE IF EXISTS personagem
--visualizar a tabela
show tables;
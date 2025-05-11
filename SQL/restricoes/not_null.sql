USE restricoes;

DROP TABLE departamento;
CREATE TABLE departamento(
    id int NOT NULL,
    nome varchar(40) NOT NULL,
    localizacao varchar(80)
);

DESC departamento;
INSERT INTO departamento VALUES
(1, 'Gerencia de TI','Bloco b Terceiro andar');

SELECT* FROM departamento;
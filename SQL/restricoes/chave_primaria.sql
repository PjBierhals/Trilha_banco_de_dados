USE restricoes;

DROP TABLE departamento;
CREATE TABLE departamento(
    id int PRIMARY KEY,
    nome varchar(40) NOT NULL,
    localizacao varchar(80)
);

DESC departamento;
INSERT INTO departamento VALUES
(2, 'Recursos Humanos','Bloco A, Primeiro  andar');

INSERT INTO departamento VALUES
(1, 'Gerencia de TI','Bloco b Terceiro andar'),
(2, 'Recursos Humanos','Bloco A, Primeiro  andar');
SELECT* FROM departamento;

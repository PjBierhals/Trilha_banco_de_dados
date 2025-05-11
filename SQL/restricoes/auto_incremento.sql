USE restricoes;

DROP TABLE departamento;
CREATE TABLE departamento(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(40) NOT NULL,
    localizacao varchar(80)
);

DESC departamento;
INSERT INTO departamento (nome, localizacao) VALUES
('Gerencia de TI','Bloco b Terceiro andar');
INSERT INTO departamento (nome, localizacao) VALUES
('Recursos Humanos','Bloco A, Primeiro  andar');

--se eu quiser iniciar com um id e seguir auto incrementando
INSERT INTO departamento (id, nome, localizacao) VALUES
(500,'Recursos Humanos','Bloco A, Primeiro  andar');


SELECT* FROM departamento;

DELETE FROM departamento WHERE id=4;
USE restricoes;

DROP TABLE departamento;
DROP TABLE empregado;
CREATE TABLE departamento(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(40) NOT NULL,
    localizacao varchar(80)
);

CREATE TABLE empregado(
    matricula int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_departamento int,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);
DESC departamento;
DESC empregado;
INSERT INTO departamento (nome, localizacao) VALUES
('Gerencia de TI','Bloco b Terceiro andar');
SELECT *FROM departamento;

INSERT INTO empregado (matricula, nome, id_departamento) VALUES
(200,'Ronald Borges',1);

--se eu quiser iniciar com um id e seguir auto incrementando


SELECT* FROM empregado;

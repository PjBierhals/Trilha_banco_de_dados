USE restricoes;

DROP TABLE empregado;
DROP TABLE departamento;
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
    ON DELETE SET NULL
);
    --ON DELETE CASCADE deleta os funcionarios do departamento
    --ON DELETE SET NULL delete e seta o departamento como null
DESC departamento;
DESC empregado;
INSERT INTO departamento (nome, localizacao) VALUES
('Gerencia de TI','Bloco B, Terceiro andar'),
('Recursos Humanos','Bloco A, Primeiro Andar');
SELECT *FROM departamento;

INSERT INTO empregado (nome, id_departamento) VALUES
('Ronald Borges',1),
('Ana Almeida',1)

--se eu quiser iniciar com um id e seguir auto incrementando


SELECT * FROM empregado;
SELECT * FROM departamento;

UPDATE empregado SET id_departamento = NULL;
DELETE FROM departamento WHERE id = 1;
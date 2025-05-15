USE relacionamentos;

CREATE TABLE departamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)not NULL
);
CREATE TABLE gerente(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_departamento INT UNIQUE NOT NULL,
    Foreign Key (id_departamento) REFERENCES departamento(id)
);

INSERT INTO departamento (nome) VALUES
('Vendas'),('TI');

INSERT INTO gerente(nome, id_departamento)VALUES
('Ana Silva',1),('Carlos Santos',2);

INSERT INTO gerente(nome, id_departamento)VALUES
('Roberto Souza',1);

SELECT *FROM departamento;

SELECT* FROM gerente;
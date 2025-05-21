CREATE DATABASE visualizacoes;

USE visualizacoes;

CREATE TABLE IF NOT EXISTS funcionarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    salario DECIMAL (10,2),
    departamento VARCHAR(50)
);

INSERT INTO funcionarios(nome, salario, departamento)VALUES
('João', 5000, 'TI'),
('Maria', 6000, 'Vendas'),
('Carlos', 5678.54, 'RH'),
('Ana', 4785.20, 'Vendas');

SELECT * FROM funcionarios;
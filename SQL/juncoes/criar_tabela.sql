CREATE DATABASE juncoes;

USE juncoes;

CREATE TABLE filme(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento int
);

CREATE TABLE pessoa(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    idade int NOT NULL,
    filme_preferido int,
    FOREIGN KEY (filme_preferido) REFERENCES filme (id)
);

INSERT INTO filme(titulo, ano_lancamento)VALUES
('Filme A', 2010),
('Filme B', 2015),
('Filme c', 2012);

INSERT INTO pessoa(nome, idade, filme_preferido)VALUES
('João',25,1),
('Maria', 30,1),
('Carlos',25,NULL),
('Antonio',35,2);

SELECT * FROM pessoa;

SELECT * FROM filme;

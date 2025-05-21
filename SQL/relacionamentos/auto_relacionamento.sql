USE relacionamentos;

CREATE TABLE IF NOT EXISTS empregado(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)NOT NULL,
    cargo VARCHAR(50)NOT NULL,
    id_supervisor int,
    FOREIGN KEY (id_supervisor) REFERENCES empregado(id)
);



INSERT INTO empregado (nome,cargo,id_supervisor) VALUES
('Patricia','Gerente de projeto',NULL),
('Gisele','Desenvolvedora', 1),
('Mariana','Analista de qualidade',1);
INSERT INTO empregado (nome,cargo,id_supervisor) VALUES
('Carlos','Engenheiro de Software',9);


SELECT* FROM empregado;
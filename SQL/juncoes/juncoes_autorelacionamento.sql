USE juncoes;

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

SELECT t1.nome AS nome, t1.cargo AS cargo, t2.nome as supervisor FROM empregado AS t1
LEFT JOIN empregado AS t2
ON t1.id_supervisor = t2.id;
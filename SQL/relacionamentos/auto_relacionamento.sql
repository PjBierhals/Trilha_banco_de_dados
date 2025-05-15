USE relacionamentos;

CREATE TABLE IF NOT EXISTS aluno(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)not NULL
);


CREATE TABLE IF NOT EXISTS disciplina(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL  
);
CREATE TABLE IF NOT EXISTS matricula(
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    quantidade_credito INT DEFAULT 4,
    PRIMARY KEY (id_aluno, id_disciplina),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id)
);


INSERT INTO Aluno (nome) VALUES
('Ana Silva'),('Maria Oliveira'),('Carlos Santos');

INSERT INTO disciplina(nome) VALUES
('Matematica'),
('História'),
('Inglês');
INSERT INTO matricula(id_aluno, id_disciplina) VALUES
(1,1),
(1, 2),
(2, 1),
(3,3);
SELECT *FROM aluno;

SELECT* FROM disciplina;
SELECT* FROM matricula;
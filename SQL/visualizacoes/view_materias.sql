USE visualizacoes;

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

CREATE VIEW v_matricula AS
    SELECT 
        aluno.id as id_aluno,
        aluno.nome as nome_aluno,
        disciplina.id as id_disciplina,
        disciplina.nome as nome_disciplina
    FROM aluno
    JOIN matricula ON matricula.id_aluno = aluno.id
    JOIN disciplina ON matricula.id_disciplina = disciplina.id;


SELECT * FROM v_matricula;

SELECT count(*), nome_disciplina 
FROM v_matricula 
GROUP BY nome_disciplina;
SELECT count(*), nome_aluno 
FROM v_matricula 
GROUP BY nome_aluno;

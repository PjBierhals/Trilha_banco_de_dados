USE procedimentos;

DELIMITER $$

CREATE PROCEDURE IF NOT EXISTS obter_materias_aluno(IN p_id INT)
BEGIN
    SELECT 
        aluno.nome_aluno, 
        disciplina.nome_disciplina AS disciplina
    FROM aluno
    JOIN matricula ON matricula.id_aluno = aluno.id_aluno
    JOIN disciplina ON disciplina.id_disciplina = matricula.id_disciplina
    WHERE aluno.id_aluno = p_id;
END $$

DELIMITER ;


CALL obter_materias_aluno(2)
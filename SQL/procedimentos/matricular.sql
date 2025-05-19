USE procedimentos;

DELIMITER $$

CREATE PROCEDURE IF NOT EXISTS faze_matricula(
    IN p_id_aluno INT,
    IN p_id_disciplina INT
)
BEGIN
    INSERT INTO matricula(id_aluno, id_disciplina) 
    VALUES (p_id_aluno, p_id_disciplina);
END $$

DELIMITER ;



CALL faze_matricula(2,2);
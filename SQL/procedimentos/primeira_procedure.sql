USE procedimentos;

DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS obter_alunos_disciplinas()
BEGIN
SELECT aluno.id_aluno, aluno.nome_aluno, 
disciplina.id_disciplina, disciplina.nome_disciplina
FROM aluno
JOIN matricula on matricula.id_aluno = aluno.Id_aluno
JOIN disciplina ON disciplina.id_disciplina= disciplina.id_disciplina;
end $$

DELIMITER ;

CALL obter_alunos_disciplinas()
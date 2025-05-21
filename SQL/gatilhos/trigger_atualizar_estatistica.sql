USE gatilhos;
CREATE TABLE IF NOT ExISTS funcionario(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(60)
);


CREATE TABLE IF NOT EXISTS  estatistica(
  total_funcionarios int UNSIGNED
);

ALTER TABLE estatistica ADD COLUMN
  id int PRIMARY KEY AUTO_INCREMENT;
--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_atualizar_estatisticas
AFTER INSERT ON funcionario 
FOR EACH ROW
BEGIN
    DECLARE tf int;
    SET tf = (SELECT count(*) FROM funcionario);
    UPDATE estatistica set total_funcionarios = tf 
    WHERE id =1;
END $$

DELIMITER ;

INSERT INTO estatistica(total_funcionarios)VALUES(0);

INSERT INTO funcionario(nome_funcionario) 
VALUES('Joâo'),('Maria'),('Miranda');
INSERT INTO funcionario(nome_funcionario) 
VALUES('Pedro'),('Vitoria'),('Marcos');

SELECT * FROM funcionario;
SELECT * FROM estatistica;
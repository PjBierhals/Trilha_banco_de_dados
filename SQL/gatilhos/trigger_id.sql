USE gatilhos;
CREATE TABLE pessoa(
    nome VARCHAR(50),
    id VARCHAR (255) PRIMARY KEY
);

--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_gerar_id
BEFORE INSERT ON pessoa
FOR EACH ROW
BEGIN
    SET NEW.id = UUID();
END $$

DELIMITER ;


INSERT INTO pessoa(nome) 
VALUES('Joâo'),('Maria'),('Carmen');

SELECT * FROM pessoa;

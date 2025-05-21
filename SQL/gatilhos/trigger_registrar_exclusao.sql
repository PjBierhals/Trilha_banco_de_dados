USE gatilhos;
CREATE TABLE IF NOT Exists produtos_2(
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80)
);

DROP TABLE IF EXISTS produtos_2;
DROP TABLE IF EXISTS log_exclusao;

CREATE TABLE IF NOT EXISTS log_exclusao(
    id_log int PRIMARY KEY AUTO_INCREMENT,
    id_produto int,
    nome varchar(80)    
);

ALTER TABLE log_exclusao ADD COLUMN data_exclusao DATE;
--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_registrar_exclusao
AFTER DELETE ON produtos_2
FOR EACH ROW
BEGIN
    INSERT INTO log_exclusao(id_produto, nome, data_exclusao)
    VALUES(OLD.id_produto, OLD.nome,date(now()));
END $$

DELIMITER ;


INSERT INTO produtos_2(nome) VALUES('Produto B');

DELETE FROM produtos_2 WHERE id_produto = 4; 

DESCRIBE produtos_2;
SELECT * FROM produtos_2;
SELECT * FROM log_exclusao;

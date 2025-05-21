USE gatilhos;
CREATE TABLE avaliacoes(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(60),
    aval_tecnica int,
    aval_comportamental int,
    desempenho decimal(5,2)
);

--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_calculo_desempenho
BEFORE INSERT ON avaliacoes
FOR EACH ROW
BEGIN
    SET NEW.desempenho = (
      (  NEW.aval_tecnica +
        NEW.aval_comportamental)/2);
END $$

DELIMITER ;


INSERT INTO avaliacoes(nome_funcionario,aval_tecnica,aval_comportamental) 
VALUES('Joâo',85,88),('Maria',78,85),('Miranda',90,92);

SELECT * FROM avaliacoes;

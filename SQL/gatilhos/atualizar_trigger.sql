
USE gatilhos;
--definição de trigger

--excluir o trigger
DROP TRIGGER IF EXISTS  tr_calculo_desempenho;
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


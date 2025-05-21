USE gatilhos;
CREATE TABLE IF NOT Exists clientes(
    id_cliente int PRIMARY KEY AUTO_INCREMENT,
    saldo decimal (10,2)
);


--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_verificar_saldo
BEFORE DELETE ON clientes 
FOR EACH ROW
BEGIN
    IF OLD.saldo > 10  THEN
        SIGNAL SQLSTATE '45000'
        set MESSAGE_TEXT ='O cliente possui salmaior que o permitido para exclusão';

    END IF;
END $$

DELIMITER ;


INSERT INTO clientes(saldo) VALUES(5);


SELECT * FROM clientes;

DELETE FROM clientes WHERE id_cliente =1;

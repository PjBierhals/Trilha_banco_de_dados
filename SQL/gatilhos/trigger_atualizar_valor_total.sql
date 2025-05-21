USE gatilhos;
CREATE TABLE pedidos(
    id int PRIMARY KEY AUTO_INCREMENT,
    iten VARCHAR(60),
    quantidade int,
    preco decimal(10,2),
    valor_total decimal(10,2)
);

--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_atualiza_valor_total
BEFORE UPDATE ON pedidos 
FOR EACH ROW
BEGIN
    SET NEW.valor_total= (
        NEW.quantidade *
        NEW.preco);
END $$

DELIMITER ;


INSERT INTO pedidos(iten,quantidade,preco) 
VALUES('Produto',5, 20);
UPDATE pedidos set quantidade = 5 WHERE id =1;
UPDATE pedidos set preco = 5 WHERE id =1;

SELECT * FROM pedidos;

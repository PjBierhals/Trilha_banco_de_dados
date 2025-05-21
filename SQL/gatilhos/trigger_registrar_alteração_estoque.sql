USE gatilhos;
CREATE TABLE IF NOT Exists produtos(
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(80),
    estoque int DEFAULT 10
);


CREATE TABLE IF NOT EXISTS log_alteracao_estoque(
    id_log int PRIMARY KEY AUTO_INCREMENT,
    id_produto int,
    estoque_atual int,
    estoque_anterior int,
    Foreign Key (id_produto) REFERENCES produtos(id_produto)
);
--definição de trigger

DELIMITER $$

CREATE TRIGGER tr_registrar_alteracao_estoque
AFTER UPDATE ON produtos 
FOR EACH ROW
BEGIN
    DECLARE estoque_novo int;
    SET estoque_novo = NEW.estoque;
    IF estoque_novo <> OLD.estoque THEN
    INSERT INTO log_alteracao_estoque(
        id_produto, estoque_anterior, estoque_atual
    )VALUES (NEW.id_produto,old.estoque, estoque_novo);
    END IF;
END $$

DELIMITER ;


INSERT INTO produtos(nome_produto) VALUES('Produto');
UPDATE produtos set nome_produto = 'Produto A' 
WHERE id_produto=1;
UPDATE produtos set estoque = 20 
WHERE id_produto=1;

SELECT * FROM produtos;
SELECT * FROM log_alteracao_estoque;

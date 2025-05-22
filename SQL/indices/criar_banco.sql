CREATE DATABASE indices;

USE indices;
CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    data_nascimento DATE,
    telefone VARCHAR(50), 
    endereco VARCHAR(150));

--inserindo dados na tabela
ALTER TABLE clientes 
DROP PRIMARY KEY,
MODIFY COLUMN id_cliente INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_cliente);

SHOW CREATE TABLE clientes;

DELIMITER $$

CREATE PROCEDURE inserir_clientes()
BEGIN
    DECLARE contador INT;
    SET contador = 1;

    WHILE contador <= 5000000 DO
        INSERT INTO clientes (nome, data_nascimento, telefone, endereco)
        VALUES (
            CONCAT('CLIENTE ', contador),
            '2000-06-20',
            '(11) 9999-7777',
            'RUA TESTE, 100'
        );

        SET contador = contador + 1;
    END WHILE;
END $$

DELIMITER ;
SELECT count(*) FROM clientes;


CALL inserir_clientes();

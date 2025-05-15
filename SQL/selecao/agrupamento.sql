USE selecoes;

DROP TABLE IF EXISTS vendas;
CREATE TABLE IF NOT EXISTS vendas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(40) NOT NULL,
    valor DECIMAL(10,2),
    quantidade INT NOT NULL
);

INSERT INTO vendas (produto, valor, quantidade)VALUES
('A', 100,3),
('B',150,2),
('A',120,1),
('C',200,4),
('B',180,3);

SELECT * FROM vendas;

SELECT produto, AVG(valor) as Média FROM vendas
GROUP BY produto;
SELECT produto, SUM(valor) as Quantidade FROM vendas
GROUP BY produto
ORDER BY quantidade DESC
LIMIT 1;

SELECT produto, AVG(valor) as media FROM vendas
GROUP BY produto
HAVING media > 170;
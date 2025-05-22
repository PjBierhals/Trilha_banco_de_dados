USE indices;

SELECT * FROM clientes where id_cliente= 1100322;

CREATE INDEX idx_cliente ON clientes(id_cliente);
DROP INDEX idx_cliente ON clientes;
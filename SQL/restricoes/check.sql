USE restricoes;

DROP TABLE IF EXISTS departamento;
CREATE TABLE IF NOT EXISTS departamento(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(40) NOT NULL,
    localizacao varchar(80),
    qtde_min_funcionarios INT NOT NULL,
    qtde_max_funcionarios INT NOT NULL,
    CONSTRAINT qtde_funcionarios CHECK(qtde_min_funcionarios >=3 AND qtde_max_funcionarios <=10)
);
DESC departamento;
INSERT INTO departamento (nome, localizacao,qtde_min_funcionarios, qtde_max_funcionarios) VALUES
('Gerencia de TI','Bloco B, Terceiro andar',3, 6);

SELECT * FROM departamento;


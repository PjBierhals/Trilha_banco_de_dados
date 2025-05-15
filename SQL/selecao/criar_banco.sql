CREATE DATABASE selecoes;

USE selecoes;
DROP TABLE IF EXISTS departamento;
CREATE TABLE IF NOT EXISTS departamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40)NOT NULL,
    localizacao VARCHAR(80),
    qtde_min_empregados int,
    status set ('Ativo', 'Inativo', 'Em revisao') DEFAULT 'Ativo',
    CHECK(qtde_min_empregados > 0)
);

DESC departamento;

INSERT INTO selecoes.departamento(nome, localizacao ,qtde_min_empregados)VALUES
('Financeiro','Bloco A, Primeiro andar',5),
('Marketing','Bloco B, Segundo andar',2);
INSERT INTO selecoes.departamento(nome, localizacao ,qtde_min_empregados,status)VALUES
('Contabilidade','Bloco A, Primeiro andar',2,'Inativo'),
('Controle de qualidade','Bloco B, Segundo andar',7,'Em revisao');

SELECT * FROM departamento;
--criar uma tabela produto 1 dados na tabela
--id, codigo_barra,nome,descricao,preco,quantidade_estoque,dados_tecnicos,
--status(disponivel ou indisponivel),info_frete(fragil, segurado, perecivel,volumoso),
--data_cadastro

USE tipos_dados;
DROP TABLE produto;
CREATE TABLE IF NOT EXISTS produto (
    id INT,
    codigo_barra char(13),
    nome VARCHAR(100),
    descricao VARCHAR(50),
    preco DECIMAL(5,2),
    qtde_estoque int,
    dados_tecnicos JSON,
    status ENUM('disponivel','indisponivel'),
    info_frete SET('fragil', 'segurado', 'perecivel','volumoso'),
    data_cadastro DATE

);

INSERT INTO produto VALUES
(
    1,1234567899012,"arroz branco sta",25,36,1000,
    '{
        "descritivo": [
        {"tipo": ["grãos", "cultivo"],"media_venda": 870},
        {"tipo": ["A", "Integral"],"media_venda": 235 }
        ],
  "forma_venda": "direta"
    }',
    'disponivel',
    'volumoso,perecivel',
    "2025-05-22"
);

SELECT * FROM produto;
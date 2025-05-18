USE juncoes;
-- Instruções  Para Resolução dos Exercícios
-- Faça o donwload dos arquivos anexados a esta aula;
-- Inicialize as tabela compras, clientes e produtos com a estrutura e dados do arquivo dados.sql. Essa será a tabela utilizada para resoluão dos exercícios.
-- Resolva os desafios
-- Obs: Anexado a esta aula também existe um arquivo chamado solucoes.zip, onde você encontra as soluções para os exercícios propostos.

--  Enunciados
-- Selecione o nome de todos os clientes que fizeram uma compra usando pix.
SELECT clientes.nome_completo FROM clientes 
LEFT JOIN compras 
on clientes.id_cliente=compras.id_cliente 
WHERE metodo_pagamento ='pix' GROUP BY nome_completo ;

select 
    clientes.nome_completo, 
    compras.metodo_pagamento 
from clientes 
join compras on clientes.id_cliente = compras.id_cliente 
where metodo_pagamento = 'pix';
-- Selecione a quantidade, o nome e o id do comprador de todos os produtos que tiveram uma venda com menos de 5 unidades;
SELECT SUM(compras.quantidade),clientes.nome_completo, clientes.id_cliente 
FROM clientes 
RIGHT JOIN compras 
ON clientes.id_cliente= compras.id_cliente 
GROUP BY clientes.id_cliente; 
-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras.
SELECT clientes.nome_completo as Nome,
        produtos.nome_produto as Produto,
      sum(compras.quantidade) as qtde FROM clientes
LEFT JOIN compras
ON compras.id_cliente = clientes.id_cliente
LEFT JOIN produtos
ON produtos.id_produto = compras.id_produto
GROUP BY clientes.nome_completo, produtos.nome_produto
HAVING SUM(compras.quantidade)>5;
-- Liste todos os clientes, juntamente com as compras que cada cliente realizou.
SELECT clientes.nome_completo, compras.*
FROM compras
INNER JOIN clientes 
ON clientes.id_cliente = compras.id_cliente;
-- Liste os nomes dos produtos e os ids dos clientes que os compraram (inclua produtos que não foram comprados ainda).
SELECT produtos.nome_produto, compras.id_cliente 
FROM compras
INNER JOIN produtos
ON produtos.id_produto= compras.id_produto;
-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras com status "entregue".
SELECT 
  clientes.nome_completo, 
  produtos.nome_produto, 
  SUM(compras.quantidade) AS quantidade
FROM compras
LEFT JOIN clientes ON clientes.id_cliente = compras.id_cliente
LEFT JOIN produtos ON produtos.id_produto = compras.id_produto
WHERE compras.status = 'entregue'
GROUP BY clientes.nome_completo, produtos.nome_produto;

-- Liste todos os clientes que fizeram uma compra, juntamente com suas compras que possuem um frete maior do que 50.
SELECT * 
FROM clientes
WHERE EXISTS (
  SELECT 1
  FROM compras
  WHERE compras.id_cliente = clientes.id_cliente AND compras.frete>50
);
-- Selecione os nomes de todas as pessoas que compraram uma roupa da estação inverno e as roupas que elas compraram.
SELECT nome_completo 
FROM clientes
WHERE EXISTS (
  SELECT 1
  FROM compras
  WHERE compras.id_cliente = clientes.id_cliente AND compras.frete>50
);
-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras feitas por clientes cujo telefone contenha "58".
SELECT nome_completo, nome_produto,quantidade
FROM clientes
INNER JOIN compras ON compras.id_cliente = clientes.id_cliente
INNER JOIN produtos ON produtos.id_produto = compras.id_produto
WHERE clientes.telefone like "%58%" ORDER BY nome_completo;

-- Mostre todas as compras que foram pagas via "débito" ou que são de produtos na cor "indigo".
SELECT *
FROM compras 
INNER JOIN produtos on produtos.id_produto = compras.id_produto
where compras.metodo_pagamento = "débito" AND produtos.cor = "indigo";

-- Liste todos os produtos de tamanho GG incluindo as compras desses produtos, o email dos compradores e a quantidade de produtos comprada.
SELECT produtos.*, clientes.email, compras.quantidade FROM produtos
INNER JOIN compras on compras.id_produto = produtos.id_produto
INNER JOIN clientes ON clientes.id_cliente = compras.id_cliente
WHERE produtos.tamanho ="GG" ;

-- Selecione o total de compras por cliente, mostrando apenas os clientes que fizeram exatamente uma compra.
SELECT clientes.id_cliente,SUM(compras.quantidade * produtos.preco+compras.frete) FROM compras
INNER JOIN clientes ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos ON produtos.id_produto = compras.id_produto
GROUP BY clientes.id_cliente
HAVING count(compras.id_cliente) = 1;

-- Selecione o cliente que teve o maior gasto total (considere o valor do produtos, a quantidade e do frete para o cálculo do gasto total).
SELECT clientes.id_cliente,SUM(compras.quantidade * produtos.preco+compras.frete) as  gasto_total FROM compras
INNER JOIN clientes ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos ON produtos.id_produto = compras.id_produto
GROUP BY clientes.id_cliente
ORDER BY gasto_total DESC LIMIT 1;

-- Selecione o nome de todos os produtos e a quantidade média de unidades vendidas e o preço médio daquele produto (mostre no resultado também os produtos não vendidos). 
SELECT 
produtos.nome_produto, avg(produtos.preco) as media_preco, AVG(compras.quantidade * produtos.preco)as quantidade_média 
FROM compras 
RIGHT JOIN produtos ON produtos.id_produto = compras.id_produto
GROUP BY produtos.id_produto;

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM compras;
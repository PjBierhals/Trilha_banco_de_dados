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
-- Selecione os nomes de todas as pessoas que compraram uma roupa da estação inverno e as roupas que elas compraram.
-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras feitas por clientes cujo telefone contenha "58".
-- Mostre todas as compras que foram pagas via "débito" ou que são de produtos na cor "indigo".
-- Liste todos os produtos de tamanho GG incluindo as compras desses produtos, o email dos compradores e a quantidade de produtos comprada.
-- Selecione o total de compras por cliente, mostrando apenas os clientes que fizeram exatamente uma compra.
-- Selecione o cliente que teve o maior gasto total (considere o valor do produtos, a quantidade e do frete para o cálculo do gasto total).
-- Selecione o nome de todos os produtos e a quantidade média de unidades vendidas e o preço médio daquele produto (mostre no resultado também os produtos não vendidos). 
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM compras;
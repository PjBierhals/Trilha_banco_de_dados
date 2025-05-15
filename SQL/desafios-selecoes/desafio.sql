-- Instruções  Para Resolução dos Exercícios
-- Faça o donwload dos arquivos anexados a esta aula;
-- Inicialize a tabela compras com a estrutura e dados do arquivo dados.sql. Essa será a tabela utilizada para resoluão dos exercícios.
-- Resolva os desafios
-- Obs: Anexado a esta aula também existe um arquivo chamado solucoes.zip, onde você encontra as soluções para os exercícios propostos.

--  Enunciados
USE selecoes;
-- Selecione todos os dados da tabela "compras".
SELECT * FROM compras;
-- Selecione o nome do cliente e o nome do produto de todas as compras.
SELECT nome_cliente, nome_produto FROM compras;
-- Selecione todos os produtos comprados pelo cliente Ana Oliveira.
SELECT nome_produto FROM compras WHERE nome_cliente='Ana Oliveira';
-- Selecione o nome do cliente e a forma de pagamento para todas as compras. A coluna forma_pagamento deve aparecer na resposta com o nome "pagamento".
SELECT nome_cliente, forma_pagamento as Pagamento FROM compras;
-- Selecione todas as compras feitas em 28/10/2022.
SELECT * FROM compras WHERE data_compra='2022-10-28';
-- Selecione todas as compras feitas por clientes com nome começando com 'A'.
SELECT * FROM compras where nome_cliente LIKE 'A%';
-- Selecione o nome do cliente, o nome do produto e quantidade de todas as compras feitas por clientes que compraram mais de 5 unidades de um produto.
SELECT nome_cliente, nome_produto, quantidade FROM compras WHERE quantidade > 5;
-- Selecione o nome do cliente, o nome do produto e o preço total (quantidade * preço unitário) para cada compra.
SELECT nome_cliente, nome_produto,(quantidade * preco_produto) as Total FROM compras;
-- Selecione todas as compras feitas por clientes que gastaram mais de $2000 no total (considere o preço do frete).
SELECT * FROM compras WHERE (quantidade * preco_produto) > 2000;
-- Selecione o id, o nome do cliente, o nome do produto e a quantidade de todas as compras feitas depois de 26/09/2022.
SELECT id_compra, nome_cliente, nome_produto, quantidade FROM compras WHERE data_compra > '2022-09-26';
-- Selecione o total gasto por cada cliente.
SELECT nome_cliente, sum(quantidade* preco_produto) as total FROM compras GROUP BY nome_cliente;
-- Selecione a quantidade média de cada produto comprado.
SELECT nome_produto, AVG(quantidade) FROM compras GROUP BY nome_produto;
-- Selecione o nome do cliente e a quantidade total de produtos comprados por esse cliente.
SELECT nome_cliente, SUM(quantidade) FROM compras GROUP BY nome_cliente;
-- Selecione o nome do produto e o preço médio desse produto. Mostre o resultado ordenando os produtos do maior preço médio para o menor
SELECT nome_produto, AVG(preco_produto) as medio FROM compras  GROUP BY nome_produto ORDER BY medio DESC ;
-- Selecione a compra com o menor preço de frete.
SELECT * FROM compras ORDER BY preco_frete ASC LIMIT 1;
-- Selecione o nome do cliente e o total gasto em compras feitas com pix.
SELECT nome_cliente, SUM((preco_produto * quantidade) + preco_frete) as total 
FROM compras WHERE forma_pagamento='PIX' GROUP BY nome_cliente;
-- Selecione a forma de pagamento mais popular.
SELECT forma_pagamento, COUNT(forma_pagamento) as popular FROM compras GROUP BY forma_pagamento ORDER BY popular DESC LIMIT 1;
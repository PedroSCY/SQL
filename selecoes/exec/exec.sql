use selecoes;

-- Selecione todos os dados da tabela "compras".
select * from compras;

-- Selecione o nome do cliente e o nome do produto de todas as compras.
select nome_cliente, nome_produto from compras;

-- Selecione todos os produtos comprados pelo cliente Ana Oliveira.
select nome_produto from compras where nome_cliente = 'Ana Oliveira';

-- Selecione o nome do cliente e a forma de pagamento para todas as compras. A coluna forma_pagamento deve aparecer na resposta com o nome "pagamento".
select nome_cliente, forma_pagamento as pagamento from compras;

-- Selecione todas as compras feitas em 28/10/2022.
select * from compras where data_compra = "2022/10/28";
-- Selecione todas as compras feitas por clientes com nome começando com 'A'.
select * from compras where nome_cliente like "A%";
-- Selecione o nome do cliente, o nome do produto e quantidade de todas as compras feitas por clientes que compraram mais de 5 unidades de um produto.
select nome_cliente, nome_produto, quantidade from compras where quantidade > 5;
-- Selecione o nome do cliente, o nome do produto e o preço total (quantidade * preço unitário) para cada compra.
select nome_cliente, nome_produto, (quantidade * preco_produto) as preco_total from compras;
-- Selecione todas as compras feitas por clientes que gastaram mais de $2000 no total (considere o preço do frete).
select * from compras where (quantidade * preco_produto) + preco_frete > 2000;
-- Selecione o id, o nome do cliente, o nome do produto e a quantidade de todas as compras feitas depois de 26/09/2022.
select id_compra, nome_cliente, nome_produto, quantidade from compras where data_compra > "2022/09/26";
-- Selecione o total gasto por cada cliente.
select nome_cliente, sum(quantidade * preco_produto) as total_gasto from compras GROUP BY nome_cliente;
-- Selecione a quantidade média de cada produto comprado.
select nome_produto, avg(quantidade) as media from compras GROUP BY nome_produto;
-- Selecione o nome do cliente e a quantidade total de produtos comprados por esse cliente.
select nome_cliente, sum(quantidade) as total_produtos from compras GROUP BY nome_cliente;
-- Selecione o nome do produto e o preço médio desse produto. Mostre o resultado ordenando os produtos do maior preço médio para o menor
select nome_produto, avg(preco_produto) as preco_medio from compras GROUP BY nome_produto ORDER BY preco_medio DESC;
-- Selecione a compra com o menor preço de frete.
select * from compras ORDER BY preco_frete ASC LIMIT 1;
-- Selecione o nome do cliente e o total gasto em compras feitas com pix.
select nome_cliente, sum(quantidade * preco_produto) as total_gasto_pix from compras where forma_pagamento = "pix" GROUP BY nome_cliente;
-- Selecione a forma de pagamento mais popular.
select forma_pagamento, count(*) as total from compras GROUP BY forma_pagamento ORDER BY total DESC LIMIT 1;
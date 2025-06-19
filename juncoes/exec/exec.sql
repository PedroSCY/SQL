use juncoes;

-- Selecione o nome de todos os clientes que fizeram uma compra usando pix.

select clientes.nome_completo from clientes inner join compras on clientes.id_cliente = compras.id_cliente where compras.metodo_pagamento = "pix";

-- Selecione a quantidade, o nome e o id do comprador de todos os produtos que tiveram uma venda com menos de 5 unidades;

select produtos.nome_produto, compras.quantidade, compras.id_cliente from produtos inner join compras on produtos.id_produto = compras.id_produto where compras.quantidade < 5;

-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras.

select clientes.nome_completo, produtos.nome_produto, compras.quantidade from clientes inner join compras on clientes.id_cliente = compras.id_cliente inner join produtos on compras.id_produto = produtos.id_produto;

-- Liste todos os clientes, juntamente com as compras que cada cliente realizou.

select clientes.nome_completo, produtos.nome_produto from clientes left join compras on clientes.id_cliente = compras.id_cliente left join produtos on compras.id_produto = produtos.id_produto order by clientes.nome_completo; 

-- Liste os nomes dos produtos e os ids dos clientes que os compraram (inclua produtos que não foram comprados ainda).

select produtos.nome_produto, compras.id_cliente from produtos left join compras on produtos.id_produto = compras.id_produto;

-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras com status "entregue".

select clientes.nome_completo, produtos.nome_produto, compras.quantidade from clientes inner join compras on clientes.id_cliente = compras.id_cliente inner join produtos on compras.id_produto = produtos.id_produto where compras.status = "entregue";

-- Liste todos os clientes que fizeram uma compra, juntamente com suas compras que possuem um frete maior do que 50.

select clientes.nome_completo, produtos.nome_produto, compras.quantidade, compras.frete from clientes join compras on clientes.id_cliente = compras.id_cliente inner join produtos on compras.id_produto = produtos.id_produto where compras.frete > 50;

-- Selecione os nomes de todas as pessoas que compraram uma roupa da estação inverno e as roupas que elas compraram.

select clientes.nome_completo, produtos.nome_produto from clientes join compras on clientes.id_cliente = compras.id_cliente join produtos on produtos.id_produto = compras.id_produto where produtos.estacao = "inverno";

-- Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras feitas por clientes cujo telefone contenha "58".

select clientes.nome_completo, produtos.nome_produto, compras.quantidade, clientes.telefone from clientes join compras on clientes.id_cliente = compras.id_cliente join produtos on compras.id_produto = produtos.id_produto where clientes.telefone like "%58%";


-- Mostre todas as compras que foram pagas via "débito" ou que são de produtos na cor "indigo".

select clientes.nome_completo, produtos.nome_produto, compras.quantidade, compras.metodo_pagamento from clientes join compras on clientes.id_cliente = compras.id_cliente join produtos on compras.id_produto = produtos.id_produto where compras.metodo_pagamento = "débito" or produtos.cor = "indigo";

-- Liste todos os produtos de tamanho GG incluindo as compras desses produtos, o email dos compradores e a quantidade de produtos comprada.

select produtos.nome_produto, produtos.tamanho, compras.quantidade, clientes.email from produtos left join compras on produtos.id_produto = compras.id_produto left join clientes on compras.id_cliente = clientes.id_cliente where produtos.tamanho = "GG";

-- Selecione o total de compras por cliente, mostrando apenas os clientes que fizeram exatamente uma compra.

select clientes.nome_completo, count(compras.id_produto) as total_compras from clientes left join compras on clientes.id_cliente = compras.id_cliente group by clientes.id_cliente having total_compras = 1;

-- Selecione o cliente que teve o maior gasto total (considere o valor do produtos, a quantidade e do frete para o cálculo do gasto total).

select clientes.nome_completo, sum(compras.quantidade * produtos.preco + compras.frete) as gasto_total from clientes join compras on clientes.id_cliente = compras.id_cliente join produtos on compras.id_produto = produtos.id_produto group by clientes.id_cliente order by gasto_total desc limit 1;

-- Selecione o nome de todos os produtos e a quantidade média de unidades vendidas e o preço médio daquele produto (mostre no resultado também os produtos não vendidos). 

select produtos.nome_produto, avg(compras.quantidade) as media_quantidade, avg(produtos.preco) as preco_medio from produtos left join compras on produtos.id_produto = compras.id_produto group by produtos.id_produto;
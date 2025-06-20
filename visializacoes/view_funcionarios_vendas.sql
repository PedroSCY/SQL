use visualizacoes;

-- as views são como tabelas virtuais, que podem ser utilizadas para simplificar consultas complexas ou para restringir o acesso a determinados dados.

create view funcionarios_vendas as
    select id, nome, salario from funcionarios
    where departamento = 'Vendas';

select * from funcionarios_vendas;
select nome from funcionarios_vendas;
select nome from funcionarios_vendas where id > 2;

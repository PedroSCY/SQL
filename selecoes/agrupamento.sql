use selecoes;

drop table if exists vendas;
create table vendas (
    id int primary key auto_increment,
    produto varchar(50) not null,
    valor decimal(10,2) not null,
    quantidade int not null
);
insert into vendas (produto, valor, quantidade) values
('Produto A', 100.00, 5),
('Produto B', 150.00, 3),
('Produto A', 120.00, 2),
('Produto C', 200.00, 1),
('Produto B', 180.00, 4);

select * from vendas;

select produto, avg(valor) as media from vendas group by produto;

select produto, sum(quantidade) as quantidade_vendas from vendas group by produto order by quantidade_vendas desc limit 1;

select produto, avg(valor) as media from vendas group by produto having media > 170;

/* A diferença entre where e having é que o where filtra linhas antes da agregação, enquanto o having filtra após a agregação. */

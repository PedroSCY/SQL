use gatilhos;

create table pedidos(
    id int primary key auto_increment,
    item varchar(50),
    quantidade int,
    preco_unitario decimal(10,2),
    valor_total decimal(10,2) default 0
);

delimiter $$
create trigger tr_atualizar_valor_total
before update on pedidos
for each row
begin
    set new.valor_total = new.quantidade * new.preco_unitario;
end$$
delimiter ;

insert into pedidos(item, quantidade, preco_unitario)
values 
('Produto A', 2, 50.00);

update pedidos set quantidade = 2 where id = 1;

select * from pedidos;



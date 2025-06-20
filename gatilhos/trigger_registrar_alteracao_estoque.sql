use gatilhos;

create table produtos(
    id_produto int auto_increment primary key,
    nome varchar(80) not null,
    estoque int not null default 10
);

create table log_alteracao_estoque(
    id_log int auto_increment primary key,
    id_produto int not null,
    estoque_atual int not null,
    estoque_anterior int not null,
    foreign key (id_produto) references produtos(id_produto)
);


delimiter $$
create trigger tr_registrar_alteracao_estoque
after update on produtos
for each row
begin
    declare estoque_antigo int;
    declare estoque_novo int;
    set estoque_antigo = old.estoque;
    set estoque_novo = new.estoque;
    if estoque_novo <> estoque_antigo then
        insert into log_alteracao_estoque(id_produto, estoque_atual, estoque_anterior)
        values (new.id_produto, estoque_novo, estoque_antigo);
    end if;
end$$
delimiter ;

insert into produtos(nome) values
('Produto A');

update produtos set estoque = 20 where id_produto = 1;
update produtos set estoque = 11 where id_produto = 1;
update produtos set nome = 'Produto A - Atualizado' where id_produto = 1;

select * from produtos;
select * from log_alteracao_estoque;
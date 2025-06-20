use gatilhos;

create table produtos_2(
    id_produto int auto_increment primary key,
    nome varchar(80) not null
);

create table log_exclusao(
    id_log int auto_increment primary key,
    id_produto int not null,
    nome_produto varchar(80) not null,
    data_exclusao date
);

delimiter $$
create trigger tr_registrar_exclusao
after delete on produtos_2
for each row
begin
    insert into log_exclusao(id_produto, nome_produto, data_exclusao)
    values (old.id_produto, old.nome, date(now()));
end$$
delimiter ;

insert into produtos_2(nome) values
('Produto A');

delete from produtos_2 where id_produto = 1;

select * from produtos_2;
select * from log_exclusao;
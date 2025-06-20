use gatilhos;

create table pessoa(
    id varchar(255) primary key,
    nome varchar(50)
);

-- definição de trigger

delimiter $$
create trigger tr_gerar_id
before insert on pessoa
for each row
set new.id = UUID();
$$
delimiter ;

insert into pessoa(nome) values ('João da Silva'), ('Maria Oliveira'), ('Carlos Souza');

select * from pessoa;
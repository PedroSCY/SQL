use gatilhos;

create table funcionario(
    id int auto_increment primary key,
    nome varchar(50)
);

drop table estatisticas;

create table estatisticas(
    id int primary key auto_increment,
    total_funcionarios int unsigned
);

delimiter $$
create trigger tr_atualizar_estatisticas
after insert on funcionario
for each row
begin
     declare tf int;
     set tf = (select count(*) from funcionario);
     
     update estatisticas
     set total_funcionarios = tf
     where id = 1;
end$$
delimiter ;

insert into estatisticas(total_funcionarios) values (0);

insert into funcionario(nome) values ('João da Silva'), ('Maria Oliveira'), ('Carlos Souza');

Select * from funcionario;
Select * from estatisticas;
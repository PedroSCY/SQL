use gatilhos;

create table avalizacoes(
    id int primary key auto_increment,
    nome_funcionario varchar(60),
    aval_tecnicas int,
    aval_comportamentais int,
    desempenho decimal(5,2)
);

delimiter $$
create trigger tr_calculo_desempenho
before insert on avalizacoes
for each row
begin
    set new.desempenho = (new.aval_tecnicas + new.aval_comportamentais) / 2;
end$$

delimiter ;

insert into avalizacoes(nome_funcionario, aval_tecnicas, aval_comportamentais)
values 
('João da Silva', 85, 90),
('Maria Oliveira', 78, 85),
('Carlos Souza', 60, 72);

select * from avalizacoes;
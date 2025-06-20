use gatilhos;

create table clientes(
    id_cliente int auto_increment primary key,
    nome varchar(80) not null,
    saldo decimal(10,2) not null default 0.00
);

delimiter $$
create trigger tr_verificar_saldo
before delete on clientes
for each row
begin
    if old.saldo > 10 then
        signal sqlstate '45000'
        set message_text = 'O cliente possui saldo maior que o permitido para exclusão.';
    end if;
end$$
delimiter ;

insert into clientes(nome, saldo) values
('Cliente A', 5.00),
('Cliente B', 15.00);

select * from clientes;

delete from clientes where id_cliente = 1; -- Deve funcionar
delete from clientes where id_cliente = 2; -- Deve gerar erro
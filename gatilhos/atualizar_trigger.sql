use gatilhos;

-- não da pra alterar de forma nativa um trigger, então é necessário excluir e criar novamente.

drop trigger if exists tr_gerar_id;

delimiter $$
create trigger tr_gerar_id
before insert on pessoa
for each row
set new.id = "alterado_" || UUID();
$$
delimiter ;
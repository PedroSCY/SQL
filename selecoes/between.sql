use selecoes;

select * from departamento
where id >= 2 and id <=4;


select * from departamento where id between 2 and 4;
-- O between é mais legível que o >= e <=. ele vai retornar os itens entre os valores especificados, inclusive os limites.
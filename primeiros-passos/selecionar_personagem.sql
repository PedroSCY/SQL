select * from starwars.personagem;

select id,nome from starwars.personagem;

select id as identificador, nome from starwars.personagem;

select * from starwars.personagem where id = 1;

select * from starwars.personagem where id = 1 or id = 2;

select * from starwars.personagem where id != 1; -- tbm pode ser usado o operador <> para diferente

select altura from starwars.personagem where nome = "Han Solo";

select nome, altura * 3 as triplo from starwars.personagem where id <> 3

select nome, id from starwars.personagem where id > 3;
select nome, id from starwars.personagem where id >= 3;
select nome, id from starwars.personagem where id < 3;
select nome, id from starwars.personagem where id <= 3;


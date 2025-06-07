select * from starwars.planeta;

select nome, raio * 2 as diametro from starwars.planeta;

select * from starwars.planeta where id % 2 = 0;

select * from starwars.planeta where nome <> "Tatooine";

select * from starwars.planeta where habitado = false;

select * from starwars.planeta where habitado = true;

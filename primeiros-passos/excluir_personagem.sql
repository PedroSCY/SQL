select * from starwars.personagem;

delete from starwars.personagem where id = 5; -- Jamais usar sem um where.

delete from starwars.personagem where nascimento is null;

delete from starwars.personagem where nome = "Darth Vader";



-- FORMA ERRADA DE ATUALIZAR UM PERSONAGEM (Não usar o where)

select * from starwars.personagem;

set SQL_SAFE_UPDATES = 0; -- ativa ou desativa o modo seguro do MySQL

update starwars.personagem set nome ="darth vader"; -- isso atualiza todos os personagens para o mesmo nome.

-----------------------------------------------------------------------------------

-- FORMA CORRETA DE ATUALIZAR UM PERSONAGEM (Usar o where)

update starwars.personagem set nome  = "Errante" where id = 1;

update starwars.personagem set nome  = "Luke Skywalker" where id = 2;

update starwars.personagem set destaque = not destaque where nome = "Errante";

update starwars.personagem set nome = "Leia Organa" , altura = 1.65 where nascimento is null;
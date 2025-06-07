use starwars;

insert into personagem(id, nome, altura, destaque, nascimento) values (1, "Luke Skywalker", 1.75, true,"3091-10-25");

insert into personagem(id, nome, destaque) values (2, "Leia Organa", true);

insert into personagem(nome, altura, nascimento, id, destaque) values ("Darth Vader", 2.02, "3091-10-25", 3, true);

insert into personagem values (4, "Han Solo", 1.8, false, "3091-10-25");

insert into personagem values 
(5, "Chewbacca", 2.28, false, "3091-10-25"),
(6, "C-3PO", 1.67, false, "3091-10-25");


SELECT * FROM personagem;
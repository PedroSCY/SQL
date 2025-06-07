use starwars;

desc personagem;

select * from personagem;

alter Table personagem rename column destaque to em_destaque;

alter table personagem add genero varchar(20)

alter table personagem drop column genero;

alter table personagem modify column nome varchar(50);
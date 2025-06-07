use starwars;

desc planeta;

select * from planeta;


insert into planeta(id, nome, raio, habitado) values (600, "Abafar",605857, true);

insert into planeta values (200, "Alderaan", 6250, 0 , true), (300, "Tatooine", 5247.5, 3, true)

insert into planeta(id, nome, qtde_luas, habitado) values (400, "Sullust", 3 , true);

insert into planeta values (500, "Saturno", 58232, 7, false);
insert into planeta values (107, "Jupiter", 69911, 79, false);

delete from planeta;
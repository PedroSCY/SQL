use procedimentos;

delimiter $$
create procedure fazer_matricula(in a_id int, in d_id int)
begin
    insert into matricula (aluno_id, disciplina_id) values (a_id, d_id);
end $$
delimiter ;

call fazer_matricula(3, 1);

select * from matricula;
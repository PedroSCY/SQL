use procedimentos;

delimiter $$
create procedure obter_materias_aluno(in p_id int)
begin
    select aluno.nome_aluno, disciplinas.nome_disciplina as disciplina from aluno join matricula on aluno.id_aluno = matricula.aluno_id join disciplinas on matricula.disciplina_id = disciplinas.id_disciplina where aluno.id_aluno = p_id;
end $$
delimiter ;

call obter_materias_aluno(1);
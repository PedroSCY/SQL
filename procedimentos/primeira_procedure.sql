use procedimentos;

delimiter $$
create procedure obter_alunos_disciplinas()
begin
    select aluno.id_aluno, aluno.nome_aluno, disciplinas.id_disciplina, disciplinas.nome_disciplina from aluno join matricula on aluno.id_aluno = matricula.aluno_id join disciplinas on matricula.disciplina_id = disciplinas.id_disciplina;
end $$
delimiter ;

call obter_alunos_disciplinas();
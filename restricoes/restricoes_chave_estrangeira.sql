use restricoes;


-- as rescrições de chave estrangeira são usadas para garantir a integridade referencial entre tabelas.
/* Alguns exemplos:
    on delete cascade: quando um registro na tabela pai é excluído, todos os registros relacionados na tabela filha também são excluídos.
    on delete set null: quando um registro na tabela pai é excluído, os valores da chave estrangeira na tabela filha são definidos como NULL.
    on update cascade: quando um registro na tabela pai é atualizado, os valores correspondentes na tabela filha também são atualizados.
    on update set null: quando um registro na tabela pai é atualizado, os valores da chave estrangeira na tabela filha são definidos como NULL.
    on delete set default: quando um registro na tabela pai é excluído, os valores da chave estrangeira na tabela filha são definidos como um valor padrão.
    on update set default: quando um registro na tabela pai é atualizado, os valores da chave estrangeira na tabela filha são definidos como um valor padrão.
    on delete restrict: impede a exclusão de um registro na tabela pai se houver registros relacionados na tabela filha.
    on update restrict: impede a atualização de um registro na tabela pai se houver registros relacionados na tabela filha.
    on delete no action: não permite a exclusão de um registro na tabela pai se houver registros relacionados na tabela filha, mas não impede a atualização.
    on update no action: não permite a atualização de um registro na tabela pai se houver registros relacionados na tabela filha, mas não impede a exclusão.
 */ 

drop table departamento;
drop table empregado;
create table departamento (
    id int primary key auto_increment,
    nome varchar(40) not null,
    localizacao varchar(80)
)

create table empregado (
    matricula int primary key auto_increment,
    nome varchar(50) not null,
    departamento_id int,
    Foreign Key (departamento_id) REFERENCES departamento(id) on delete cascade
)

desc departamento;
desc empregado

insert into departamento (nome, localizacao) values (
    'Recursos Humanos', null
);
insert into departamento (nome, localizacao) values (
    'Financeiro', null
)

insert into empregado (nome, departamento_id) values (
    'João Silva', 1
);
insert into empregado (nome, departamento_id) values (
    'Ana Almeida', 2
)


select * from departamento;

select * from empregado;

select * from empregado JOIN departamento ON empregado.departamento_id = departamento.id;


delete from departamento where id=1;
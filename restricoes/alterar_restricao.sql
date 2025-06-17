use restricoes;

drop table departamento;
drop table empregado;

create table empregado (
    matricula int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    salario decimal(7, 2) DEFAULT 2500,
    estado_civil enum('solteiro', 'casado', 'divorciado', 'viuvo') default "solteiro"
);

desc empregado;

--- modicar valor default
alter table restricoes.empregado
alter column estado_civil drop DEFAULT;

alter table restricoes.empregado
alter column estado_civil set default 'solteiro';

alter table restricoes.empregado
alter column salario set default 3600;

-- modificar uma constraint associada na coluna (reescreve a coluna com o modify)
alter table restricoes.empregado
modify column nome varchar(50);

-- check constraints
alter table restricoes.empregado
add constraint salario_maximo check (salario <=2600);

insert into empregado (matricula, nome, salario) values (12345, "Ronaldo Borges", 3600);

alter table restricoes.empregado
drop constraint salario_maximo;




select * from empregado;
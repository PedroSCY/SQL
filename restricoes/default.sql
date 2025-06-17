use restricoes;

drop table departamento;
drop table empregado;

create table empregado (
    matricula int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    salario decimal(7, 2) DEFAULT 2500,
    estado_civil enum('solteiro', 'casado', 'divorciado', 'viuvo') default "solteiro"
);

desc table empregado;

insert into empregado (matricula, nome) values (12345, "Ronaldo Borges")


select * from empregado;
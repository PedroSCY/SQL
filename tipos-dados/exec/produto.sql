use tipos_dados

drop table if EXISTS produto;

create table produto(
    id int,
    codigo_barra char(18),
    nome varchar(80),
    descricao text,
    preco Decimal(7,2),
    quantidade_estoque mediumint,
    dados_tecnicos json,
    status enum("Disponivel","indisponivel"),
    info_frete set("Fragil", "Segurado", "Perecivel", "volumoso"),
    Data_cadastro datetime
);

insert into tipos_dados.produto VALUES(
    123456, "A52T6HF861DQ52F5H4" , "Smartphone", "Aparelho eletrônico portátil com tela sensível ao toque, acesso à internet e múltiplas funcionalidades.", 2199.99, 834, '{ "RAM": "8Gg", "processador": [ "1x - 3.0ghz", "2x - 2.6ghz", "1x - 1.95ghz"]}', "Disponivel", "Segurado,fragil", "2025:06:11 11:34:00"
)

select * from tipos_dados.produto;
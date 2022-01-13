create database db_rh;

use db_rh;

create table tb_funcionarios( 
id bigint auto_increment,
nome varchar(100) not null,
ativo boolean,
salario decimal not null,
primary key (id)
);

Insert into tb_funcionarios(nome, ativo, salario) Values("Letícia", true, 4500.00);
Insert into tb_funcionarios(nome, ativo, salario) Values("Isabô", true, 5000.00);
Insert into tb_funcionarios(nome, ativo, salario) Values("Joaquim", true, 5000.00);
Insert into tb_funcionarios(nome, ativo, salario) Values("Lilian", true, 4500.00);
Insert into tb_funcionarios(nome, ativo, salario) Values("Manuel", true, 1500.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 5000.00 WHERE id = 4;

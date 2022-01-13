create database db_escola;

use db_escola;

create table tb_estudantes( 
id bigint auto_increment,
nome varchar(100) not null,
nota decimal not null,
serie bigint not null,
turma  enum('A','B','C') not null,
matricula boolean,
primary key (id)
);

Insert into tb_estudantes(nome, nota, serie, turma, matricula) Values("Maria", 8.00, 7, "A", true);
Insert into tb_estudantes(nome, nota, serie, turma, matricula) Values("Joaquina", 7.50, 7, "A", true);
Insert into tb_estudantes(nome, nota, serie, turma, matricula) Values("Manuela", 9.00, 7, "A", true);
Insert into tb_estudantes(nome, nota, serie, turma, matricula) Values("Fernanda", 6.00, 7, "A", true);
Insert into tb_estudantes(nome, nota, serie, turma, matricula) Values("Joao", 6.00, 7, "A", true);

select * from tb_estudantes where nota > 7.00;
select * from tb_estudantes where nota < 7.00;
update tb_estudantes set nota = 9.00 where id = 2;



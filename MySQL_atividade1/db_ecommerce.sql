create database db_ecommerce;

use db_ecommerce;

create table tb_produtos( 
id bigint auto_increment,
nome varchar(100) not null,
cor varchar(50),
tamanho enum('PP','P','M','G','GG','Único'),
preco decimal not null,
primary key (id)
);

Insert into tb_produtos(nome, cor, tamanho, preco) Values("Vestido", "preto", 'PP', 180.00);
Insert into tb_produtos(nome, cor, tamanho, preco) Values("Vestido", "branco", 'P', 180.00);
Insert into tb_produtos(nome, cor, tamanho, preco) Values("Vestido", "azul", 'M', 180.00);
Insert into tb_produtos(nome, cor, tamanho, preco) Values("Vestido", "preto", 'G', 180.00);
insert into tb_produtos(nome, cor, tamanho, preco) Values("Vestido", "vermelho", 'GG', 180.00);
Insert into tb_produtos(nome, cor, tamanho, preco) Values("Blusa", "Marrom", 'P', 250.00);
Insert into tb_produtos(nome, cor, tamanho, preco) Values("Blusa", "Marrom", 'G', 250.00);
Insert into tb_produtos(nome, cor, tamanho, preco) Values("Bolsa", "Marrom", 'Unico', 510.00);

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;
update tb_produtos set preco = 450.00 where id = 8;


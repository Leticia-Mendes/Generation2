create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(50) not null,
tamanho enum('pequena', 'media', 'grande'),
primary key (id)
);

INSERT INTO tb_categoria (tipo, tamanho) VALUES ("Salgadas", 'pequena');
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("Salgadas", 'media');
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("Salgadas", 'grande');
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("Doces", 'pequena');
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("Doces", 'media');

SELECT * FROM tb_categoria;
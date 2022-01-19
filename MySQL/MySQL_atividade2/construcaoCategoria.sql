CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar(200) not null,
descricao varchar(150),
primary key (id)
);

INSERT INTO tb_categoria (tipo) VALUES
("material de construção"),
("pisos"),
("ferramentas"),
("acessorio"), 
("outros");

SELECT * FROM tb_categoria;

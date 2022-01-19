CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id int auto_increment,
tipo varchar(30),
controlado boolean,
primary key (id)
);

INSERT INTO tb_categoria (tipo, controlado) VALUES ("antibiotico", true);
INSERT INTO tb_categoria (tipo, controlado) VALUES ("antiinflamatorio", false);
INSERT INTO tb_categoria (tipo, controlado) VALUES ("antitermico", false);
INSERT INTO tb_categoria (tipo, controlado) VALUES ("analgesico", false);
INSERT INTO tb_categoria (tipo, controlado) VALUES ("antidepressivo", true);

SELECT * FROM tb_categoria;


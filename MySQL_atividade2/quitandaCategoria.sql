CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(50) not null,
organico boolean,
primary key (id)
);

INSERT INTO tb_categoria (tipo, organico) VALUES ("fruta", true);
INSERT INTO tb_categoria (tipo, organico) VALUES ("fruta", false);
INSERT INTO tb_categoria (tipo, organico) VALUES ("verdura", true);
INSERT INTO tb_categoria (tipo, organico) VALUES ("verdura", false);
INSERT INTO tb_categoria (tipo, organico) VALUES ("tuberculo", true);
INSERT INTO tb_categoria (tipo, organico) VALUES ("tuberculo", false);

SELECT * FROM tb_categoria;

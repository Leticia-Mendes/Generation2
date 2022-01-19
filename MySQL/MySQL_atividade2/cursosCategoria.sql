CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar(100) not null,
síncrono boolean,
primary key (id)
);

INSERT INTO tb_categoria (tipo, síncrono) VALUES
("Habilidades técnicas", true),
("Habilidades técnicas", false),
("Habilidades comportamentais", true),
("Habilidades comportamentais", false);


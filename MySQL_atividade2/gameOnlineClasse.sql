create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe( 
id int auto_increment,
nome varchar(60) not null,
descricao varchar(60),

primary key (id)
);

INSERT INTO tb_classe (nome) VALUES ("As Meninas Super-Poderosas");
INSERT INTO tb_classe (nome) VALUES ("Marvel");
INSERT INTO tb_classe (nome) VALUES ("Clássicos");

SELECT * FROM tb_classe;
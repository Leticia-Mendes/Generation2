use db_generation_game_online;

create table tb_personagem( 
id int auto_increment,
nome varchar(60) not null,
poderDeAtaque int not null,
poderDeDefesa int not null,
classe_id bigint not null,

primary key (id),
foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Florzinha", 2500, 2500, 1);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Docinho", 3000, 1500, 1);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Lindinha", 1500, 3000, 1);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Sonic", 2500, 1500, 3);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Viúva Negra", 3000, 2500, 2);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE poderDeAtaque > 2000;

SELECT * FROM tb_personagem WHERE poderDeDefesa > 1000 AND poderDeDefesa < 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%C";

SELECT * FROM tb_personagem WHERE classe_id = 1;

SELECT * FROM tb_personagem INNER JOIN tb_classe on tb_classe.id = tb_personagem.classe_id;

SELECT * FROM tb_personagem INNER JOIN tb_classe on tb_classe.id = tb_personagem.classe_id 
	WHERE tb_classe.nome = "As Meninas Super-Poderosas";


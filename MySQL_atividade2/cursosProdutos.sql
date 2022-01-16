USE db_cursoDaMinhaVida;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(100) not null unique,
descricao varchar(250),
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES
("Lógica de programação", 00.00, 2),
("Java básico", 20.00, 2),
("Java intermediário", 20.00, 2),
("MySQL", 20.00, 2),
("Spring framework", 20.00, 2),
("Comunicação", 20.00, 3),
("Persistência", 20.00, 4),
("Aprender a aprender", 20.00, 3);

SELECT * FROM tb_produtos WHERE preco >= 50;

SELECT * FROM tb_produtos WHERE preco >= 3 AND preco < 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%J%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id ORDER BY categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id
	WHERE tb_categoria.tipo = "Habilidades comportamentais";

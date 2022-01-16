USE db_construindo_a_nossa_vida;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(6,2) not null,
quantidade int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, quantidade, categoria_id) VALUES
("Cimento", 26.00, 200, 1),
("Argamassa", 15.00, 120, 1),
("Porcelanato", 79.99, 500, 2),
("Laminado", 51.89, 450, 2),
("Furadeira", 217, 30, 3),
("Alicate", 26.89, 60, 3),
("Prateleira", 44.50, 23, 4),
("Arame", 23.99, 37, 5);

SELECT * FROM tb_produtos WHERE preco >= 50;

SELECT * FROM tb_produtos WHERE preco >= 3 AND preco < 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id ORDER BY categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id
	WHERE tb_categoria.tipo = "ferramentas";

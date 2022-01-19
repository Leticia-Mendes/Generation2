USE db_cidade_das_frutas;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(4,2) not null,
quantidade int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, quantidade, categoria_id) VALUES
("maçã", 6.00, 200, 2),
("laranja", 8.00, 250, 2),
("banana", 5.00, 120, 1),
("melancia", 10.00, 40, 1),
("couve", 3.00, 80, 3),
("batata", 4.00, 300, 6),
("batata-doce", 4.00, 120, 5),
("coentro", 3.00, 30, 3);

SELECT * FROM tb_produto WHERE preco >= 50;

SELECT * FROM tb_produto WHERE preco >= 3 AND preco < 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.categoria_id ORDER BY categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.categoria_id
	WHERE tb_categoria.tipo = "fruta";

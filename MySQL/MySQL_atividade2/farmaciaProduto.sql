USE db_farmacia_do_bem;

CREATE TABLE tb_produto(
id int auto_increment,
nome varchar(30) not null,
preco decimal(5,2) not null,
categoria_id int not null,
laboratorio enum('referencia', 'generico'),
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("ibuprofeno", 12.00, 4, 'referencia');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("ibuprofeno", 8.00, 4, 'generico');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Partacetamol", 18.00, 3, 'referencia');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Paracetamol", 6.00, 3, 'generico');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Nimesulida", 22.00, 2, 'referencia');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Nimesulida", 10.00, 2, 'generico');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Amoxilina", 16.00, 1, 'generico');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Fluoxetina", 20.00, 5, 'referencia');
INSERT INTO tb_produto (nome, preco, categoria_id, laboratorio) VALUES ("Dual", 54.89, 5, 'referencia');

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco >= 50;

SELECT * FROM tb_produto WHERE preco >= 3 AND preco < 60;

SELECT * FROM tb_produto WHERE nome LIKE "%B%";

SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.categoria_id
	WHERE tb_categoria.tipo = "antitermico";
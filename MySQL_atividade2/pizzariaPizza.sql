use db_pizzaria_legal;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(50) not null,
descricao varchar(100),
preco decimal(5,2) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Margherita", 38.00, 2);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Margherita", 48.00, 3);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Quatro Queijos", 45.00, 2);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Quatro Queijos", 55.00, 3);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Chocolate", 26.00, 4);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Chocolate", 34.00, 5);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Banana", 26.00, 4);
INSERT INTO tb_pizza (sabor, preco, categoria_id) VALUES ("Banana", 34.00, 5);

SELECT * FROM tb_pizza WHERE preco >= 50.00;

SELECT * FROM tb_pizza WHERE preco >= 29.00 AND preco <= 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "%C%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.categoria_id
	WHERE tb_categoria.tipo = "Salgadas";
    
DROP TABLE tb_pizza;
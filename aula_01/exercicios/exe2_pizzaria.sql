CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
	tamanhos varchar(255) not null,
    valores int,
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tamanhos, valores)
VALUES ("média", 30);

INSERT INTO tb_categorias (tamanhos, valores)
VALUES ("grande", 45);

INSERT INTO tb_categorias (tamanhos, valores)
VALUES ("pequena", 20);

INSERT INTO tb_categorias (tamanhos, valores)
VALUES ("brotão", 15);

INSERT INTO tb_categorias (tamanhos, valores)
VALUES ("brotinho", 10);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
	sabores varchar(255) not null,
    quantidade int,
    adicional varchar(255) not null,
    borda varchar(255) not null,
    categoria_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Calabresa", 1, "Bacon", "Cheddar" , 1);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Mussarela", 2, "Alho", "Catupiry" , 2);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Frango", 1, "Requeijão", "Catupiry" , 3);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Chocolate", 3, "Morango", "Nutela" , 4);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Banana", 1, "Canela", "Doce de Leite" , 5);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Cocada", 3, "Sorvete", "Nutela" ,1);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Romeu e Julieta", 1, "Requeijão", "Catupiry" , 3);

INSERT INTO tb_pizzas (sabores, quantidade, adicional, borda, categoria_id)
VALUES ("Carne seca", 4, "Cebola", "Cheddar", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias WHERE valores > 45;

SELECT * FROM tb_pizzas WHERE sabores LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.tamanhos = "pequena";

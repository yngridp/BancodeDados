-- DROP DATABASE db_cidade_das_carnes;

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
	TipoDeCarne varchar(255) not null,
	OrigemAnimal varchar(255) not null,
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (TipoDeCarne, OrigemAnimal)
VALUES ("Vermelha","Vaca");

INSERT INTO tb_categorias (TipoDeCarne, OrigemAnimal)
VALUES ("vermelha","Carneiro");

INSERT INTO tb_categorias (TipoDeCarne, OrigemAnimal)
VALUES ("Branca","Porco");

INSERT INTO tb_categorias (TipoDeCarne, OrigemAnimal)
VALUES ("Branca","Peixe");

INSERT INTO tb_categorias (TipoDeCarne, OrigemAnimal)
VALUES ("Branca","Galinha");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	valor decimal(6, 2),
    produto varchar(255) not null,
    validade varchar(255) not null,
    peso varchar(255) not null,
    categoria_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Contra-Filé","1Kg", 40.50, "90 dias",  1);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Costela","1Kg", 30.00, "90 dias",  2);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Pernil"," 500g", 20.00, "60 dias",  3);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Filé de Tilápia"," 1kg", 50.00, "40 dias",  4);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Peito de frango"," 1kg", 18.00, "40 dias",  5);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Acem"," 1kg", 30.00, "30 dias",  1);

INSERT INTO tb_produtos (produto, peso, valor, validade, categoria_id)
VALUES ("Picanha"," 1kg", 80.00, "30 dias",  1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.TipoDeCarne = "Branca" ;






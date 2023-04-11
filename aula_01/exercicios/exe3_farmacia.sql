-- DROP DATABASE db_farmacia_bem_estar;

 CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
	departamento varchar(255) not null,
	descricao varchar(255) not null,
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (departamento, descricao)
VALUES ("Medicamentos","Rémedio para tratamento de dores e doenças");

INSERT INTO tb_categorias (departamento, descricao)
VALUES ("Hiegiene Pessoal", "Produtos de higiene");

INSERT INTO tb_categorias (departamento, descricao)
VALUES ("Perfumaria", "Produtos de beleza");

INSERT INTO tb_categorias (departamento, descricao)
VALUES ("Alimentos", "Alimentação Saudável");

INSERT INTO tb_categorias (departamento, descricao)
VALUES ("Cosméticos", "Cuidados com a pele e cabelo");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	valor decimal(6, 2),
    produto varchar(255) not null,
    validade varchar(255) not null,
    estoque int,
    categoria_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Diporona", 8.50, "06/2024", 25 , 1);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Shampoo e Condicionador Pantene", 25.80, "10/2024", 5 , 3);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Desodorante", 15.00, "01/2024", 7 , 2);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Hidratante", 30.00, "03/2024", 25 , 3);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Barra de cereal", 6.50, "12/2023", 10 , 4);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Sabonete", 4.00, "06/2025", 23 , 2);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Nimesulida", 48.50, "08/2024", 5 , 1);

INSERT INTO tb_produtos (produto, valor, validade, estoque, categoria_id)
VALUES ("Imecap hair", 58.60, "06/2024", 6 , 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.departamento = "Medicamentos" ;





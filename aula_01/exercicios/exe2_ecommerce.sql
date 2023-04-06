CREATE DATABASE Exe_ecommerce;

USE Exe_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	produto varchar(255) not null, 
	fornecedor varchar(255) not null, 
	preco varchar(255) not null,
    categoria varchar(255) not null,
    quantidade int,
	primary key(id)
    );
    
    Select * FROM tb_produtos;
    
INSERT INTO tb_produtos(produto, fornecedor, preco, categoria, quantidade)
values ("Vestido", "Renner","200.00","Adulto", 10);
INSERT INTO tb_produtos(produto, fornecedor, preco, categoria, quantidade)
values ("Tenis", "Nike","1000.00","Adulto", 5);
INSERT INTO tb_produtos(produto, fornecedor, preco, categoria, quantidade)
values ("Macacão", "C&A","130.00","Adulto", 10);
INSERT INTO tb_produtos(produto, fornecedor, preco, categoria, quantidade)
values ("Óculos", "SheIn","20.00","Acessórios", 20);
INSERT INTO tb_produtos(produto, fornecedor, preco, categoria, quantidade)
values ("Colar", "SheIn","15.00","Acessórios", 20);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET categoria= "Infantil" WHERE id = 3;








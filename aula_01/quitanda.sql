-- Query para criação de banco de dados
CREATE DATABASE db_quitanda; 

-- Começar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null, 
	quantidade int, 
	preco decimal (6,2)not null,
	primary key(id)
);

-- Visualizar a tabela
SELECT * FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade,preco)
values ("tomate", 100, 8.80);
INSERT INTO tb_produtos(nomedoproduto, quantidade,preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nomedoproduto, quantidade,preco)
values ("uva", 1200, 30.00);
INSERT INTO tb_produtos(nomedoproduto, quantidade,preco)
values ("perâ", 500, 2.99);

-- buscas especificas
select nome, quantidade FROM tb_produtos;

select * FROM tb_produtos WHERE nome = "uva";

select * FROM tb_produtos WHERE preco > 5.00 AND quantidade <100;

-- Desabilitar nossa segurança do sql
SET SQL_SAFE_UPDATES = 1; -- se for 0 desabilita, sem o WHERE

-- Atualizar colunas da tabela
UPDATE tb_produtos SET nomedoproduto = "graviola" WHERE id = 1;

-- Delete itens
DELETE FROM tb_produtos WHERE id = 2 OR id = 3;

-- Atualizar Coluna
-- ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- Adicionar Coluna
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Deletar Coluna
ALTER TABLE tb_produtos DROP descricao;

-- Alterar nome da Coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar (255);







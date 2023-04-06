CREATE DATABASE Exe1;

USE Exe1;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null, 
	Sobrenome varchar(255) not null, 
	cargo varchar(255) not null,
    Departamento varchar(255) not null,
    Salario decimal not null,
	primary key(id)
    );
    
    SELECT * FROM tb_colaboradores;
    
INSERT INTO tb_colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Yngrid", "Padilha","Desenvolvedora Java","Desenvolvimento", 5.500);
INSERT INTO tb_colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Bianca", "Luna","Diretora","Diretoria", 8.500);
INSERT INTO tb_colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Heimy", "Dias","Desenvolvedora BackEnd","Desenvolvimento", 5.500);
INSERT INTO tb_colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Andresa", "Marçal","Recrutadora","RH", 3.500);
INSERT INTO tb_colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Jamile", "Farias","Desenvolvedora FrontEnd","Desenvolvimento", 5.500);

SELECT * FROM tb_colaboradores WHERE Salario > 2000;

SELECT * FROM tb_colaboradores WHERE Salario < 2000;

UPDATE tb_colaboradores SET Cargo = "P.O" WHERE id = 2;

ALTER TABLE tb_colaboradores MODIFY Salario decimal(6,3);




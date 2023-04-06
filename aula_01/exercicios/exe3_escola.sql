CREATE DATABASE exe3_escola;

USE exe3_escola;

CREATE TABLE tb_alunos(
id bigint auto_increment,
	Nome varchar(255) not null, 
	Idade int,
    Serie varchar(255) not null, 
	Materia varchar(255) not null,
    Nota decimal (6,1)not null,
	primary key(id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Ana Julia", "15","1° Ano","Língua Inglesa", 8.0);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Ricardo Luis", "17","3° Ano","Biologia", 9.0);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Mateus Antune", "16","2° Ano","Fisíca", 7.5);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Bianca Nunes", "16","2° Ano","Cálculo", 6.0);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Carol Souza", "17","3° Ano","Língua Portuguesa", 8.0);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Daniel Alves", "16","2° Ano","Sociologia", 9.0);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Eduardo Junior", "16","2° Ano","Cálculo", 5.5);
INSERT INTO tb_alunos(Nome, Idade, Serie, Materia, Nota)
values ("Fabrício", "16","2° Ano","Educação Fisíca", 6.0);

SELECT * FROM tb_alunos WHERE Nota > 7.0;

SELECT * FROM tb_alunos WHERE Nota < 7.0;

UPDATE tb_alunos SET Nota= "8.5" WHERE id = 4;



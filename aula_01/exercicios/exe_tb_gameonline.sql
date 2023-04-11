-- DROP DATABASE db_generation_game_online;

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT,
nivel varchar(255) NOT NULL,
sexo varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classe (nivel, sexo)
VALUES ("alto", "feminino");

INSERT INTO tb_classe (nivel, sexo)
VALUES ("baixo", "masculino");

INSERT INTO tb_classe (nivel, sexo)
VALUES ("alto", "feminino");

INSERT INTO tb_classe (nivel, sexo)
VALUES ("alto", "outro");

INSERT INTO tb_classe (nivel, sexo)
VALUES ("medio", "outro");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
Nome varchar(255) NOT NULL,
idade int, 
Caracteristica varchar(255) NOT NULL,
Item varchar(255) NOT NULL,
poder int,
defesa int,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);


INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder, defesa, classe_id)
VALUES ("Penelope", 18, "Agilidade", "Taco",4000, 2500, 1);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder, defesa, classe_id)
VALUES ("Cassandra", 18, "Inteligencia", "Cartas", 5000, 4000, 1);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder,defesa, classe_id)
VALUES ("Mucha", 25, "Força", "Mãos",3000, 2800, 2);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder,defesa, classe_id)
VALUES ("Nicols", 20, "Agilidade", "Espada", 1500, 800, 2);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder, defesa, classe_id)
VALUES ("Ursao",100, "Força", "Mãos",5000, 4000, 4);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder, defesa, classe_id)
VALUES ("Donkey", 40, "Força", "Martelo",7000,5500, 4);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder, defesa, classe_id)
VALUES ("Pedro", 25, "Inteligencia", "Chicote", 1300, 600, 2);

INSERT INTO tb_personagens (Nome, Idade, Caracteristica, Item, poder, defesa, classe_id)
VALUES ("Monster", 18, "Agilidade", "Bastão",4000, 2500,  5);

SELECT * FROM tb_personagens WHERE poder > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE  nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classe_id = tb_classe.id;

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classe_id = tb_classe.id WHERE tb_classe.nivel = "alto" ORDER BY nome;






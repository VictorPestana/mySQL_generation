CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (

	id BIGINT auto_increment,
    nome VARCHAR (255) NOT NULL,
    idade INT NOT NULL, 
    matricula VARCHAR (255) NOT NULL UNIQUE, -- matricula unica
    turma VARCHAR (10) NOT NULL,
    nota_final DECIMAL(5,2), 
    email VARCHAR (255),
    PRIMARY KEY (ID)	

);

INSERT INTO tb_estudantes (nome, idade, matricula, turma, nota_final, email)
VALUES 
 ('Ana Paula Souza', 16, 'EM2023001', '1A', 8.50, 'ana.souza@email.com'),
    ('Bruno Henrique Lima', 17, 'EM2023002', '2B', 7.80, 'bruno.lima@email.com'),
    ('Carlos Eduardo Silva', 15, 'EM2023003', '1C', 9.20, 'carlos.silva@email.com'),
    ('Daniela Alves Costa', 18, 'EM2023004', '3A', 6.70, 'daniela.costa@email.com'),
    ('Eduardo Matos Pereira', 16, 'EM2023005', '2A', 8.30, 'eduardo.matos@email.com'),
    ('Fernanda Vieira Santos', 15, 'EM2023006', '1B', 9.00, 'fernanda.santos@email.com'),
    ('Gustavo Oliveira Ramos', 18, 'EM2023007', '3B', 7.50, 'gustavo.ramos@email.com'),
    ('Helena Martins Souza', 17, 'EM2023008', '2C', 8.90, 'helena.souza@email.com');
    
SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET nota_final = 9.90 WHERE id = 4;





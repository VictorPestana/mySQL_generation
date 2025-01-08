CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(500),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, descricao) VALUES
('Java', 'Cursos relacionados à linguagem Java e frameworks'),
('Python', 'Cursos sobre Python para diferentes áreas, como Data Science e Web'),
('JavaScript', 'Cursos para desenvolvimento web com JavaScript e frameworks'),
('Banco de Dados', 'Cursos sobre SQL, NoSQL e administração de bancos de dados'),
('DevOps', 'Cursos relacionados a CI/CD, Docker, Kubernet');

CREATE TABLE tb_cursos (
    id_curso BIGINT AUTO_INCREMENT,
    nome_curso VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL,
    preco DECIMAL(10 , 2 ) NOT NULL,
    descricao_curso VARCHAR(255),
    modalidade VARCHAR(50) NOT NULL,
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id_curso),
    FOREIGN KEY (id_categoria)
        REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_cursos (nome_curso, carga_horaria, preco, descricao_curso, modalidade, id_categoria) VALUES
('Java Básico', 40, 200.00, 'Introdução à linguagem Java e seus fundamentos', 'EAD', 1), # 1 = JAVA
('Spring Framework', 50, 300.00, 'Aprenda a desenvolver aplicações com Spring Boot', 'EAD', 1),
('Python para Iniciantes', 40, 150.00, 'Fundamentos da linguagem Python para iniciantes', 'Presencial', 2), # 2 = PYTHON
('Python para Data Science', 60, 250.00, 'Uso de Python para análise de dados e aprendizado de máquina', 'Híbrido', 2), # 2 = PYTHON
('JavaScript Básico', 30, 120.00, 'Introdução à linguagem JavaScript para iniciantes', 'EAD', 3), # 3 = JS
('React.js Avançado', 50, 350.00, 'Criação de aplicações web modernas com React.js', 'Híbrido', 3), # 3 = JS
('SQL Básico', 35, 150.00, 'Conceitos básicos e comandos essenciais de SQL', 'Presencial', 4), # 4 = banco de dados
('Docker e Kubernetes', 50, 400.00, 'Introdução ao uso de containers e orquestração com Kubernetes', 'EAD', 5); # 5 = DEVOPS


SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT * FROM tb_cursos INNER JOIN tb_categoria
ON tb_cursos.id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categoria
ON tb_cursos.id_categoria = tb_categoria.id_categoria WHERE tb_cursos.id_categoria = 1;





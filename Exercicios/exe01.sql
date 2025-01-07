CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores (

	id BIGINT auto_increment,
    nome VARCHAR (255) NOT NULL,
    idade BIGINT,
    cpf VARCHAR (14) NOT NULL UNIQUE, -- PARA SER UNICO
    salario DECIMAL(10,2),
    email VARCHAR(255),
    PRIMARY KEY (ID)
    
);

INSERT INTO tb_colaboradores (nome, idade, cpf, salario, email)
VALUES
    ('Ana Silva', 30, '123.456.789-00', 1500.50, 'ana.silva@email.com'),
    ('Carlos Santos', 42, '234.567.890-11', 900.75, 'carlos.santos@email.com'),
    ('Beatriz Oliveira', 25, '345.678.901-22', 3800.00, 'beatriz.oliveira@email.com'),
    ('João Almeida', 36, '456.789.012-33', 5000.80, 'joao.almeida@email.com'),
    ('Mariana Costa', 28, '567.890.123-44', 4100.25, 'mariana.costa@email.com');
    
SELECT * FROM tb_colaboradores;

SELECT nome, CONCAT('R$', FORMAT(salario, 2, "pt_BR")) AS Salário FROM tb_colaboradores;

## SALARIO MAIOR QUE 2000
    
SELECT * from tb_colaboradores WHERE salario > 2000.00;

## SALARIO MENOR QUE 2000

SELECT * from tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 10000.00 WHERE id = 3;


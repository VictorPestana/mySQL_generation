CREATE DATABASE  db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    quantidade INT, 
    data_validade DATE,
    preco DECIMAL,
    PRIMARY KEY(id)
);

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- Comentário
DESC tb_produtos;

ALTER TABLE tb_produtos CHANGE descricao descricao_produto vARCHAR(500);

ALTER TABLE tb_produtos DROP descricao_produto; 

INSERT INTO tb_produtos (Nome, quantidade, data_validade, preco)
VALUES ('Tomate', 100, '2025-01-10', 8.00);

INSERT INTO tb_produtos (Nome, quantidade, data_validade, preco)
VALUES 
    ('Pepino', 57, '2025-02-13', 9.50),
    ('Cenoura', 20, '2025-01-10', 7.00),
    ('Cebola', 60, '2025-03-07', 5.00),
    ('Repolho', 30, '2025-02-02', 3.00);

SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1; 

SELECT * FROM tb_produtos WHERE preco > 4.00;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND nome = 'Repolho';

SELECT * FROM tb_produtos WHERE preco > 2.00 OR nome = 'Tomate';

SELECT * FROM tb_produtos WHERE nome != "Tomate";

sELECT nome aS Nome_Completo,
CONCAT('R$', FORMAT(Preco, 2, 'pt_BR')) AS Preco
fROM tb_produtos; 

SELECT nome, CONCAT('R$', FORMAT(Preco, 2, "pt_BR")) AS Preço FROM Tb_produtos;

UPDATE Tb_produtos SET Preco = 9.50 WHERE Id = 2;

UPDATE Tb_produtos SET Preco = 9.50;

DELETE FROM Tb_produtos WHERE Id = 6;

-- DROP ; = EXCLUI ATRIBUTO

-- DELETE ; = APAGA DADO



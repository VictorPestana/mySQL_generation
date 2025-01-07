CREATE DATABASE db_ecommerce;

USE db_ecommerce; 

CREATE TABLE tb_produtos (

	id BIGINT auto_increment,
    nome VARCHAR (255) NOT NULL,
    categoria VARCHAR (255) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    estoque INT NOT NULL,
    fabricante VARCHAR(255),
    PRIMARY KEY (ID)
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque, fabricante)
VALUES
    ('iPhone 14', 'Celular', 7999.99, 15, 'Apple'),
    ('Samsung Galaxy S22', 'Celular', 6999.99, 20, 'Samsung'),
    ('MacBook Pro M2', 'Notebook', 12999.99, 10, 'Apple'),
    ('Dell XPS 13', 'Notebook', 9999.90, 8, 'Dell'),
    ('Monitor UltraWide 29"', 'Monitor', 1899.99, 25, 'LG'),
    ('Teclado Mecânico K70', 'Periférico', 299.90, 50, 'Corsair'),
    ('SSD NVMe 1TB', 'Armazenamento', 399.90, 30, 'Samsung'),
    ('Cadeira Gamer X-Pro', 'Acessório', 1299.90, 12, 'DXRacer');
        
SELECT nome, CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS Preço
FROM tb_produtos;

SELECT * FROM tb_produtos;

SELECT * from tb_produtos WHERE preco > 500.00;

SELECT * from tb_produtos where preco < 500.00;

UPDATE tb_produtos SET preco = 5000.00 WHERE ID = 1 




    





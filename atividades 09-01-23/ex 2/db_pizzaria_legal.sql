CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria) VALUES
(1, 'Salgada', 'Pizzas com recheios salgados'),
(2, 'Doce', 'Pizzas com recheios doces'),
(3, 'Vegetariana', 'Pizzas com recheios vegetarianos'),
(4, 'Especial', 'Pizzas especiais da casa'),
(5, 'Calzone', 'Pizzas no formato de calzone');

CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    descricao_pizza TEXT,
    valor DECIMAL(8, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (id_pizza, nome_pizza, descricao_pizza, valor, id_categoria) VALUES
(1, 'Margarita', 'Molho de tomate, mussarela, manjericão fresco', 39.90, 1),
(2, 'Quatro Queijos', 'Molho de tomate, mussarela, parmesão, provolone, gorgonzola', 49.90, 1),
(3, 'Chocolate com Morango', 'Chocolate, morangos frescos', 55.00, 2),
(4, 'Vegetariana', 'Molho de tomate, mussarela, cogumelos, pimentão, cebola, azeitonas', 42.50, 3),
(5, 'Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 38.00, 1),
(6, 'Doce de Leite com Banana', 'Doce de leite, banana, canela', 58.00, 2),
(7, 'Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado, catupiry', 47.50, 4),
(8, 'Calzone de Presunto e Queijo', 'Presunto, queijo, molho de tomate', 45.00, 5);

SELECT *
FROM tb_pizzas
WHERE valor > 45.00;

SELECT *
FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT *
FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';
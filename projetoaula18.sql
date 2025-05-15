CREATE DATABASE bodega;
USE bodega;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    endereco TEXT
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT DEFAULT 0
);


CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João da Silva', 'joao@gmail.com', '11999999999', 'Rua A, 123 - São Paulo'),
('Maria Oliveira', 'maria@gmail.com', '21988888888', 'Av. B, 456 - Rio de Janeiro'),
('Carlos Souza', 'carlos@hotmail.com', '31977777777', 'Rua C, 789 - Belo Horizonte');

INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Café', 'Café torrado e moído - pacote 500g', 14.90, 100),
('Arroz', 'Arroz branco tipo 1 - pacote 5kg', 22.50, 50),
('Feijão', 'Feijão carioca - pacote 1kg', 9.80, 70);

INSERT INTO vendas (id_cliente, total) VALUES
(1, 47.20);

INSERT INTO vendas (id_cliente, total) VALUES
(2, 32.30);

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM vendas



-- Atividade iniciante - Banco de Dados de Produtos (SQL Server)

-- Criar tabela
CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY,
    Nome VARCHAR(50),
    Preco_Custo DECIMAL(10,2),
    Preco_Venda DECIMAL(10,2)
);

-- Inserir 10 produtos
INSERT INTO Produto (ID_Produto, Nome, Preco_Custo, Preco_Venda) VALUES
(1, 'Arroz', 10, 15),
(2, 'Feijao', 8, 12),
(3, 'Macarrao', 5, 8),
(4, 'Leite', 4, 6),
(5, 'Cafe', 15, 20),
(6, 'Acucar', 6, 9),
(7, 'Oleo', 7, 10),
(8, 'Sal', 3, 2),
(9, 'Farinha', 5, 4),
(10, 'Bolacha', 4, 7);

-- Atualizar preco de venda do produto 1
UPDATE Produto
SET Preco_Venda = 18
WHERE ID_Produto = 1;

-- Consultar os 5 produtos mais caros
SELECT TOP 5 Nome, Preco_Venda
FROM Produto
ORDER BY Preco_Venda DESC;

-- Excluir produtos com prejuizo
DELETE FROM Produto
WHERE Preco_Custo > Preco_Venda;

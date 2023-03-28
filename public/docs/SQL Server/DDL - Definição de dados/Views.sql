-- Views servem para simplificar consultas
CREATE VIEW ExibicaoProdutos AS
SELECT IdProduto AS Código
FROM Produtos
INNER JOIN Marca ON ID = IDMarca

-- Então apenas faz uma consulta simples pela view
SELECT * FROM ExibicaoProdutos

-- Alterar uma view
ALTER VIEW ExibicaoProdutos AS
SELECT ID AS Código FROM Produtos

-- Excluir uma view
DROP VIEW ExibicaoProdutos
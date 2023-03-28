-- Criptografar
SELECT PWDENCRYPT('Senha') -- Retorna um hash do campo passado, esta função esta depreciada
SELECT HASHBYTES('MD5', 'Senha') -- Função mais atual para criptografia, é possível escolher o tipo de criptografia: MD4, MD5, SHA2_512...

-- Comparar campo normal com criptografado
SELECT * FROM Tabela WHERE PWDCOMPARE('Senha', Coluna, 1) = 1 -- Comparador para criptografia PWD
SELECT IIF(HASHBYTES('SHA1', 'az09123') = HASHBYTES('SHA1', 'az09123'), 1, 0) -- Comparador para outras criptografias
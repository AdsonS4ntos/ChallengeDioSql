----- Challenge One -----
-->SELECT Nome, Ano FROM Filmes


----- Challenge Two -----
-->SELECT * FROM Filmes ORDER BY Ano ASC


----- Challenge Three -----
-->SELECT * FROM Filmes WHERE Nome LIKE '%Futuro


----- Chalenge Four -----
-->SELECT * FROM Filmes WHERE Ano = 1997


----- Challenge Five -----
-->SELECT * FROM Filmes WHERE Ano > 2000


----- Challenge Six -----
-->SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC


----- Challenge Seven -----
-->SELECT 
    --F.Ano AS AnoLancamento,
    --COUNT(F.Id) AS QuantidadeDeFilmes,
    --MAX(F.Duracao) AS DuracaoMaxima
--FROM Filmes F
--GROUP BY F.Ano
--ORDER BY DuracaoMaxima DESC;


----- Challenge Eight -----
-->SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';


----- Challenge Nine -----
-->SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC


----- Challenge Ten -----
-->SELECT Nome, Genero FROM Filmes, Generos


----- Challenge Eleven -----
-->SELECT Nome, Genero FROM Filmes, Generos WHERE Genero LIKE '%Mis%'


----- Challenge Twelve -----
SELECT 
    F.Nome AS NomeDoFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id;
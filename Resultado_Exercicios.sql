SELECT f.Nome, 
       f.Ano 
  FROM dbo.Filmes f;

SELECT f.Nome, 
       f.Ano 
  FROM dbo.Filmes f 
 ORDER BY f.Ano;

SELECT f.Nome, 
       f.Ano, 
	   f.Duracao 
  FROM dbo.Filmes f 
 WHERE f.Nome = 'De Volta para o Futuro';

 SELECT f.Nome, 
        f.Ano, 
	    f.Duracao 
   FROM dbo.Filmes f 
  WHERE f.Ano > '2000';

  SELECT f.Nome, 
         f.Ano, 
	     f.Duracao 
    FROM dbo.Filmes f 
   WHERE f.Duracao > '100' AND f.Duracao < '150'
ORDER BY f.Duracao;

   SELECT f.Ano, 
	      COUNT(f.Ano) as Quantidade 
  FROM dbo.Filmes f 
	GROUP BY f.Ano
 ORDER BY Quantidade DESC;

 SELECT a.PrimeiroNome, 
        a.UltimoNome, 
		a.Genero 
   FROM dbo.Atores a
  WHERE a.Genero = 'M'

 SELECT a.PrimeiroNome, 
        a.UltimoNome, 
		a.Genero 
   FROM dbo.Atores a
  WHERE a.Genero = 'F'
ORDER BY a.PrimeiroNome

SELECT f.Nome, 
       g.Genero 
  FROM filmes f
	INNER JOIN FilmesGenero fg ON 
		fg.IdFilme = f.Id
	INNER JOIN Generos g ON 
		g.id = fg.IdGenero


SELECT f.Nome, 
       g.Genero 
  FROM filmes f
	INNER JOIN FilmesGenero fg ON 
		fg.IdFilme = f.Id
	INNER JOIN Generos g ON 
		g.id = fg.IdGenero
WHERE g.Genero = 'Mistério'


SELECT f.Nome, 
	   a.PrimeiroNome,
	   a.UltimoNome,
	   ef.Papel
  FROM filmes f
	INNER JOIN ElencoFilme ef ON 
		ef.IdFilme = f.Id 
	INNER JOIN Atores a ON 
		a.Id = ef.IdAtor 



select * from atores
select * from ElencoFilme

--select * from filmes
--select * from Generos
--select * from FilmesGenero
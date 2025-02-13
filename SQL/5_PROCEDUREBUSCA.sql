ALTER PROCEDURE dbo.BuscaCidades @Nome_Cidade Varchar(50)
AS
BEGIN
  SELECT * 
  FROM dbo.Cidades
  WHERE Nome_Cidade Like '%'+@Nome_Cidade +'%'
END

EXEC dbo.BuscaCidades @Nome_Cidade = 'ar'
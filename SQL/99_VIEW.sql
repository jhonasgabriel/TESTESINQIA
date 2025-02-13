CREATE view dbo.View_Endereco
AS 
SELECT Endereco.ID AS ID_Endereco,
       Endereco.Logradouro AS Logradouro,
	   Cidades.ID AS ID_Cidade,
	   Cidades.Nome_Cidade AS Nome_Cidade,
	   CIdades.Estado AS UF
FROM dbo.Endereco
     INNER JOIN dbo.Cidades
	 ON Endereco.ID_Cidade = Cidades.ID



CREATE PROCEDURE dbo.OperacoesCidade @Nome_Cidade Varchar(50),
                                      @Estado      Char(2),
									  @Operacao    Char(1),
									  @ID          Integer = 0 OUTPUT
AS
BEGIN
  IF (@Operacao = 'I') -- Insert
  BEGIN
    INSERT INTO dbo.Cidades(Nome_Cidade, Estado)
	VALUES (@Nome_Cidade, @Estado);

	SET @ID = @@IDENTITY;
  END

  IF (@Operacao = 'U') --  Update
  BEGIN
    UPDATE dbo.Cidades
	SET Nome_Cidade = @Nome_Cidade,
	    Estado = @Estado
    WHERE ID = @ID;
  END

  IF (@Operacao = 'D') -- Delete
  BEGIN
    IF (@ID > 0)
	BEGIN
	  DELETE FROM dbo.Cidades
	  WHERE ID = @ID;
	END
	ELSE
	BEGIN
	  DELETE FROM dbo.Cidades
	  WHERE Nome_Cidade = @Nome_Cidade;
	END
  END
END
									  


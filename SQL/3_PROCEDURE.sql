DECLARE @id Integer
EXEC dbo.OperacoesCidade @Nome_Cidade = 'Apucarana',
                          @Estado      = 'PR',
						  @Operacao    = 'I',
						  @ID          = @ID OUTPUT

						  SELECT @ID
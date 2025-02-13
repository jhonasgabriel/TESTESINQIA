			-- INSERIR DADOS NA TABELA ESTADOS --

		INSERT INTO Estados (Sigla, Descricao) VALUES ('AC', 'Acre');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('AL', 'Alagoas');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('AP', 'Amap�');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('AM', 'Amazonas');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('BA', 'Bahia');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('CE', 'Cear�');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('DF', 'Distrito Federal');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('ES', 'Esp�rito Santo');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('GO', 'Goi�s');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('MA', 'Maranh�o');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('MT', 'Mato Grosso');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('MS', 'Mato Grosso do Sul');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('MG', 'Minas Gerais');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('PA', 'Par�');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('PB', 'Para�ba');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('PR', 'Paran�');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('PE', 'Pernambuco');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('PI', 'Piau�');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('RJ', 'Rio de Janeiro');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('RN', 'Rio Grande do Norte');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('RS', 'Rio Grande do Sul');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('RO', 'Rond�nia');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('RR', 'Roraima');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('SC', 'Santa Catarina');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('SP', 'S�o Paulo');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('SE', 'Sergipe');
		INSERT INTO Estados (Sigla, Descricao) VALUES ('TO', 'Tocantins');



		  -- INSERIR DADOS NA TABELA PONTOS TURISTICOS --

	INSERT INTO PontosTuristicos (Nome, Descricao, Localizacao, Cidade, DataInclusao, IdEstado)
	VALUES
    ('Cristo Redentor', 'Uma das Sete Maravilhas do Mundo Moderno, oferece vista espetacular.', 'Rua Cosme Velho, Rio de Janeiro, RJ', 'Rio de Janeiro', DATEADD(DAY, -10, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 19), 
    ('Parque Nacional do Igua�u', 'Cataratas do Igua�u, uma das maiores quedas d''�gua do mundo.', 'R. Cel. Raulino Dorneles, Foz do Igua�u, PR', 'Foz do Igua�u', DATEADD(DAY, -20, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 16), 
    ('Praia de Copacabana', 'Uma das praias mais famosas do mundo, famosa pelo seu cal�ad�o.', 'Av. Atl�ntica, Rio de Janeiro, RJ', 'Rio de Janeiro', DATEADD(DAY, -30, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 19), 
    ('Pelourinho', 'Centro hist�rico de Salvador, com casas coloniais e igrejas hist�ricas.', 'Pelourinho, Salvador, BA', 'Salvador', DATEADD(DAY, -40, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 5), 
    ('C�nion do Xing�', 'Maior c�nion naveg�vel do Brasil, localizado em Sergipe.', 'SE-317, Canind� de S�o Francisco, SE', 'Canind� de S�o Francisco', DATEADD(DAY, -50, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 26), 
    ('Praia do Le�o', 'Uma das praias mais bonitas de Fernando de Noronha.', 'Fernando de Noronha, PE', 'Fernando de Noronha', DATEADD(DAY, -60, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 17), 
    ('Serra da Capivara', 'Parque Nacional no Piau�, famoso por s�tios arqueol�gicos com pinturas rupestres.', 'BR-020, S�o Raimundo Nonato, PI', 'S�o Raimundo Nonato', DATEADD(DAY, -70, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 18), 
    ('Pantanal Matogrossense', 'Maior �rea de inunda��o cont�nua do planeta, no Mato Grosso.', 'BR-262, Pocon�, MT', 'Pocon�', DATEADD(DAY, -80, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 11), 
    ('C�nion Fortaleza', 'Localizado em Cambar� do Sul, Rio Grande do Sul, paisagens deslumbrantes.', 'RS-020, Cambar� do Sul, RS', 'Cambar� do Sul', DATEADD(DAY, -90, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 21), 
    ('Len��is Maranhenses', 'Parque Nacional no Maranh�o, com dunas e lagoas de �gua doce.', 'Barreirinhas, MA', 'Barreirinhas', DATEADD(DAY, -100, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 10), 
    ('Praia de Jericoacoara', 'Uma das praias mais famosas do Cear�, famosa pelo p�r do sol.', 'Jericoacoara, CE', 'Jericoacoara', DATEADD(DAY, -110, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 6), 
    ('Parque Nacional da Serra dos �rg�os', 'Unidade de conserva��o no Rio de Janeiro, com trilhas e cachoeiras.', 'BR-116, Teres�polis, RJ', 'Teres�polis', DATEADD(DAY, -120, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 19), 
    ('Chapada dos Veadeiros', 'Parque Nacional em Goi�s, com cachoeiras, trilhas e biodiversidade.', 'Alto Para�so de Goi�s, GO', 'Alto Para�so de Goi�s', DATEADD(DAY, -130, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 9), 
    ('Praia do Rosa', 'Praia famosa em Santa Catarina, conhecida por suas ondas ecol�gicas.', 'Praia do Rosa, Imbituba, SC', 'Imbituba', DATEADD(DAY, -140, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 24), 
    ('Centro Hist�rico de Ouro Preto', 'Cidade hist�rica em Minas Gerais, com igrejas barrocas.', 'Ouro Preto, MG', 'Ouro Preto', DATEADD(DAY, -150, GETDATE()) + CAST(CAST(NEWID() AS VARBINARY) AS INT) % 20, 13); 

	
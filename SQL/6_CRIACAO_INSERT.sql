
--select * from cidades
CREATE TABLE dbo.Cidades(ID Integer Identity(1,1),
                         Nome_Cidade Varchar(50),
						 Estado Char(2)
						 PRIMARY KEY (ID))

INSERT INTO dbo.Cidades(Nome_Cidade, Estado)
VALUES('Salmourão', 'SP'),
      ('Osvaldo Cruz', 'SP'),
	  ('Tupã', 'SP'),
	  ('Rio de Janeiro', 'RJ'),
	  ('Foz do iguaçu', 'PR');

CREATE TABLE dbo.Endereco(ID Integer Identity(1,1),
                          Logradouro Varchar(50),
						  ID_Cidade Integer
						  FOREIGN KEY (ID_Cidade) REFERENCES dbo.Cidades(ID)
						  PRIMARY KEY(ID))

INSERT INTO dbo.Endereco(Logradouro, ID_CIdade)
VALUES('Avenida castelo branco', 1),
      ('Rua Bartolomeu', 2),
	  ('Tamoios', 3),
	  ('Rua Cosme Velho', 4),
	  ('R. Cel. Raulino Dorneles', 5)

CREATE TABLE dbo.CLIENTES(ID Integer Identity(1,1),
                          Nome Varchar(50),
						  ID_Endereco Integer
						  FOREIGN KEY (ID_Endereco) REFERENCES dbo.Endereco(ID)
						  PRIMARY KEY (ID));

INSERT INTO dbo.CLIENTES (Nome, ID_Endereco)
VALUES ('Jhonas Gabriel', 2),
       ('Debora Heloise', 1),
	   ('Micheli Firmino', 3),
	   ('Luiz henrique', 3),
	   ('Joel Jorge', 1);
       
                 
SELECT *
FROM dbo.CLIENTES
     INNER JOIN dbo.Endereco
	 ON CLIENTES.ID_Endereco = Endereco.ID
	 INNER JOIN dbo.Cidades
	 ON Endereco.ID_Cidade = Cidades.ID
WHERE Cidades.Nome_Cidade = 'Tupã'


SELECT *
FROM dbo.CLIENTES
     INNER JOIN dbo.Endereco
	 ON CLIENTES.ID_Endereco = Endereco.ID
WHERE EXISTS(SELECT *
             FROM dbo.Cidades
			 WHERE Cidades.ID = Endereco.ID_Cidade
			   AND Cidades.Nome_Cidade = 'Tupã')

SELECT CLIENTES.Nome, Cidades.Nome_Cidade
FROM dbo.CLIENTES
     INNER JOIN dbo.Endereco
	 ON CLIENTES.ID_Endereco = Endereco.ID
	 INNER JOIN dbo.Cidades
	 ON Endereco.ID_Cidade = Cidades.ID

SELECT *
FROM dbo.CLIENTES
ORDER BY Nome ASC

DELETE FROM dbo.CLIENTES
WHERE ID BETWEEN 100 AND 200

UPDATE dbo.Cidades
SET Estado = 'SP'
WHERE Estado = 'PR'


--CREATE TABLE dbo.Pontos_Turisticos(ID Integer Identity(1,1)
--                                  Nome Varchar(50),
--								  (ID_Endereco Integer)

								  
use [D:\GOOGLE DRIVE\PROJECTS\DIARIOBORDOIBOV\DATA\DIARIOBORDO.MDF]

drop table Movimento
drop table Acao

-- CREATE TABLES

CREATE TABLE [dbo].[Acao] (
    [AcaoId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
    [Sigla] VARCHAR(6) NOT NULL,
    [Nome] VARCHAR (20) NOT NULL,
);


CREATE TABLE [dbo].[Movimento] (
    [MovimentoId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
    [AcaoId] INT NOT NULL,
	[Data] date not null,
    [Qnt] INT NOT NULL,
    [Valor] FLOAT (5) NOT NULL,
	[Lucro] float(3) not null,
	[Visible] bit not null,
    FOREIGN KEY ([AcaoId]) REFERENCES [dbo].[Acao] ([AcaoId])
);

-- INSERT VALUES

INSERT INTO Acao(Sigla, Nome) values ('STBP3', 'Santos BRP'), 
								     ('PRIO3','PetroRio'),
									 ('OIBR4','OI'),
									 ('BBAS3','Banco Brasil'),
									 ('PETR3','Petrobras'),
									 ('ELET3','Eletrobras')
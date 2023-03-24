-- TABLE
CREATE TABLE Alimento 
( 
 idAlimento INT PRIMARY KEY,
 nome VARCHAR(60) NOT NULL UNIQUE
 -- Adicionar propriedade calorias e implementar stored procedure
);
CREATE TABLE Diario 
( 
 idDiario INT PRIMARY KEY,
 data DATE UNIQUE NOT NULL 
);
CREATE TABLE Exercicio 
( 
 idExercicio INT PRIMARY KEY,  
 duracao INT CHECK (duracao > 0),  
 idTipoExercicio VARCHAR(60),
 idUsuario INT,
 FOREIGN KEY(idTipoExercicio) REFERENCES TipoExercicio (idTipoExercicio),
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE TipoExercicio 
(
 idTipoExercicio INT PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL,  
 gastoCalorico FLOAT CHECK(gastoCalorico>0)
);
CREATE TABLE Nutriente 
(
 idNutriente INT PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL,
 caloriasPorGrama FLOAT NOT NULL CHECK(caloriasPorGrama>=0)
);
CREATE TABLE Objetivo 
( 
 idObjetivo INT PRIMARY KEY,
 pesoAlvo INT NOT NULL CHECK (pesoAlvo>0),  
 propositoGanhoDePeso BOOL NOT NULL
);
CREATE TABLE Receita 
( 
 idReceita INT PRIMARY KEY,  
 nome VARCHAR(60) NOT NULL,  
 idUsuario INT,
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE Refeicao 
( 
 idRefeicao INT PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL
);
CREATE TABLE ComposicaoAlimentar 
( 
 idNutriente INT,  
 idAlimento INT,  
 quantidade INT CHECK (quantidade>0),
 FOREIGN KEY(idNutriente) REFERENCES Nutriente (idNutriente),
 FOREIGN KEY(idAlimento) REFERENCES Alimento (idAlimento)
);
CREATE TABLE Treino 
( 
 idExercicio INT,  
 idDiario INT,
 FOREIGN KEY(idExercicio) REFERENCES Exercicio (idExercicio),
 FOREIGN KEY(idDiario) REFERENCES Diario (idDiario)
);
CREATE TABLE CronogramaAlimentar 
( 
 idDiario INT,  
 idRefeicao INT,
 horario TIME NOT NULL,
 FOREIGN KEY(idDiario) REFERENCES Diario (idDiario),
 FOREIGN KEY(idRefeicao) REFERENCES Refeicao (idRefeicao)
);
CREATE TABLE MetaDiaria
( 
 idMetaDiaria INT PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL,
 idUsuario INT,
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE MetaExercicio
( 
 idMeta INT,  
 idExercicio INT,
 FOREIGN KEY(idMeta) REFERENCES MetaDiaria (idMetaDiaria)
 FOREIGN KEY(idExercicio) REFERENCES Exercicio (idExercicio)
);
CREATE TABLE MetaDiarioNutriente
( 
 idNutriente INT,  
 idUsuario INT,
 quantidade INT,
 FOREIGN KEY(idNutriente) REFERENCES Nutriente (idNutriente),
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE Ingrediente 
( 
 idReceita INT,
 idAlimento INT,
 quantidade INT,
 FOREIGN KEY(idReceita) REFERENCES Receita (idReceita),
 FOREIGN KEY(idAlimento) REFERENCES Alimento (idAlimento)
);
CREATE TABLE ComposicaoRefeicao 
( 
 idRefeicao INT,  
 idAlimento INT,
 FOREIGN KEY(idRefeicao) REFERENCES Refeicao (idRefeicao),
 FOREIGN KEY(idAlimento) REFERENCES Alimento (idAlimento)
);
CREATE TABLE Usuario 
(  
 id INT PRIMARY KEY,
 nome VARCHAR(20) UNIQUE NOT NULL,  
 email VARCHAR UNIQUE NOT NULL,
 altura INT NOT NULL,  
 sexo CHAR(1) NOT NULL,
 idObjetivo INT,  
 FOREIGN KEY(idObjetivo) REFERENCES Objetivo (idObjetivo)
);
CREATE TABLE Peso
(
 idPeso INT PRIMARY KEY,
 valor FLOAT NOT NULL CHECK(valor>0),
 data DATE NOT NULL
);
CREATE TABLE Pesagem
(
 idPeso INT,
 idUsuario INT,
 FOREIGN KEY(idPeso) REFERENCES Peso (idPeso),
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
 
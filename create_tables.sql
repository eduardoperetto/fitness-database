CREATE TABLE Objetivo 
( 
 idObjetivo SERIAL PRIMARY KEY,
 pesoAlvo INT NOT NULL CHECK (pesoAlvo>0),  
 propositoGanhoDePeso BOOL NOT NULL
);
CREATE TABLE Alimento 
( 
 idAlimento SERIAL PRIMARY KEY,
 nome VARCHAR(60) NOT NULL UNIQUE
);
CREATE TABLE Diario 
( 
 idDiario SERIAL PRIMARY KEY,
 data DATE UNIQUE NOT NULL 
);
CREATE TABLE TipoExercicio 
(
 idTipoExercicio SERIAL PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL,  
 gastoCalorico FLOAT CHECK(gastoCalorico>0)
);
CREATE TABLE Usuario 
(  
 id SERIAL PRIMARY KEY,
 nome VARCHAR(20) UNIQUE NOT NULL,  
 email VARCHAR UNIQUE NOT NULL,
 altura INT NOT NULL,  
 sexo CHAR(1) NOT NULL,
 idObjetivo INT,  
 FOREIGN KEY(idObjetivo) REFERENCES Objetivo (idObjetivo)
);
CREATE TABLE Exercicio 
( 
 idExercicio SERIAL PRIMARY KEY,  
 duracao INT CHECK (duracao > 0),  
 idTipoExercicio INT,
 idUsuario INT,
 FOREIGN KEY(idTipoExercicio) REFERENCES TipoExercicio (idTipoExercicio),
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE Nutriente 
(
 idNutriente SERIAL PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL,
 caloriasPorGrama FLOAT NOT NULL CHECK(caloriasPorGrama>=0)
);
CREATE TABLE Receita 
( 
 idReceita SERIAL PRIMARY KEY,  
 nome VARCHAR(60) NOT NULL,  
 idUsuario INT,
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE Refeicao 
( 
 idRefeicao SERIAL PRIMARY KEY,
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
 idMetaDiaria SERIAL PRIMARY KEY,
 nome VARCHAR(60) UNIQUE NOT NULL,
 idUsuario INT,
 FOREIGN KEY(idUsuario) REFERENCES Usuario (id)
);
CREATE TABLE MetaExercicio
( 
 idMeta INT,  
 idExercicio INT,
 FOREIGN KEY(idMeta) REFERENCES MetaDiaria (idMetaDiaria),
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
CREATE TABLE Peso
(
 idPeso SERIAL PRIMARY KEY,
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

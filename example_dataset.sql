-- INSERTS

-- Alimento
INSERT INTO Alimento VALUES (
    0,
    "Banana"
);
INSERT INTO Alimento VALUES (
    1,
    "Arroz"
);
INSERT INTO Alimento VALUES (
    2,
    "Frango Cozido"
);

--  Diario
INSERT INTO Diario VALUES (
    0,
    "26/01/2023"
);
INSERT INTO Diario VALUES (
    1,
    "27/01/2023"
);
INSERT INTO Diario VALUES (
    2,
    "28/01/2023"
);

--  TipoExercicio
INSERT INTO TipoExercicio VALUES (
    0,
    "Caminhada",
    4.1
);
INSERT INTO TipoExercicio VALUES (
    1,
    "Futebol",
    5.6
);
INSERT INTO TipoExercicio VALUES (
    2,
    "Musculacao",
    6.0
);

--  Nutriente
INSERT INTO Nutriente VALUES (
    0,
    "Carboidrato",
    4.1
);
INSERT INTO Nutriente VALUES (
    1,
    "Proteina",
    4.0
);
INSERT INTO Nutriente VALUES (
    2,
    "Gordura",
    7.0
);

--  Objetivo
INSERT INTO Objetivo VALUES (
    0,
    80.2,
    True
);
INSERT INTO Objetivo VALUES (
    1,
    67.5,
    False
);
INSERT INTO Objetivo VALUES (
    2,
    74.0,
    True
);

-- Usuario
INSERT INTO Usuario VALUES (
    0,
    "eduardoperetto",
    "erperetto@gmail.com",
    174,
    "M",
    2
);
INSERT INTO Usuario VALUES (
    1,
    "fernandosulzbach",
    "fsulzach@gmail.com",
    181,
    "M",
    0
);
INSERT INTO Usuario VALUES (
    2,
    "fulanosilva",
    "fulano@gmail.com",
    166,
    "F",
    1
);

--  Exercicio
INSERT INTO Exercicio VALUES (
    0,
    30,
    "Caminhada",
    0
);
INSERT INTO Exercicio VALUES (
    1,
    50,
    "Futebol",
    1
);
INSERT INTO Exercicio VALUES (
    2,
    60,
    "Musculacao",
    2
);

-- Receita
INSERT INTO Receita VALUES (
    0,
    "Bolo de banana",
    2
);
INSERT INTO Receita VALUES (
    1,
    "Prato feito",
    0
);
INSERT INTO Receita VALUES (
    2,
    "Sanduiche de frango",
    1
);

-- Refeicao
INSERT INTO Refeicao VALUES (
    0,
    "Cafe da manha"
);
INSERT INTO Refeicao VALUES (
    1,
    "Almoco"
);
INSERT INTO Refeicao VALUES (
    2,
    "Janta"
);

-- ComposicaoAlimentar
INSERT INTO ComposicaoAlimentar VALUES (
    0,
    0,
    30
);
INSERT INTO ComposicaoAlimentar VALUES (
    1,
    1,
    15
);
INSERT INTO ComposicaoAlimentar VALUES (
    2,
    2,
    8
);

-- Treino
INSERT INTO Treino VALUES (
    0,
    1
);
INSERT INTO Treino VALUES (
    1,
    2
);
INSERT INTO Treino VALUES (
    2,
    0
);

-- CronogramaAlimentar
INSERT INTO CronogramaAlimentar VALUES (
    0,
    2,
    "08:00"
);
INSERT INTO CronogramaAlimentar VALUES (
    2,
    1,
    "12:00"
);
INSERT INTO CronogramaAlimentar VALUES (
    0,
    1,
    "19:00"
);

-- MetaDiaria
INSERT INTO MetaDiaria VALUES (
    0,
    "Segunda saudavel",
    0
);
INSERT INTO MetaDiaria VALUES (
    1,
    "Dia do lixo",
    2
);
INSERT INTO MetaDiaria VALUES (
    2,
    "Final de semana",
    "fernandosulzabach"
);

-- MetaExercicio
INSERT INTO MetaExercicio VALUES (
    2,
    1
);
INSERT INTO MetaExercicio VALUES (
    1,
    0
);
INSERT INTO MetaExercicio VALUES (
    0,
    2
);

-- MetaDiarioNutriente
INSERT INTO MetaDiarioNutriente VALUES (
    0,
    0,
    300
);
INSERT INTO MetaDiarioNutriente VALUES (
    1,
    0,
    120
);
INSERT INTO MetaDiarioNutriente VALUES (
    2,
    0,
    40
);

-- Ingrediente
INSERT INTO Ingrediente VALUES (
    0,
    1,
    100
);
INSERT INTO Ingrediente VALUES (
    1,
    0,
    200
);
INSERT INTO Ingrediente VALUES (
    2,
    2,
    400
);

-- ComposicaoRefeicao
INSERT INTO ComposicaoRefeicao VALUES (
    2,
    2
);
INSERT INTO ComposicaoRefeicao VALUES (
    1,
    1
);
INSERT INTO ComposicaoRefeicao VALUES (
    0,
    0
);

-- Peso
INSERT INTO Peso VALUES (
    0,
    73.0,
    "01/03/2023"
);

INSERT INTO Peso VALUES (
    1,
    73.7,
    "20/03/2023"
);

INSERT INTO Peso VALUES (
    2,
    76.0,
    "15/02/2023"
);

-- Pesagem
INSERT INTO Pesagem VALUES (
    0,
    0
);

INSERT INTO Pesagem VALUES (
    1,
    0
);

INSERT INTO Pesagem VALUES (
    2,
    1
);

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
    "Caminhada",
    4.1
);
INSERT INTO TipoExercicio VALUES (
    "Futebol",
    5.6
);
INSERT INTO TipoExercicio VALUES (
    "Musculacao",
    6.0
);

--  Nutriente
INSERT INTO Nutriente VALUES (
    "Carboidrato",
    4.1
);
INSERT INTO Nutriente VALUES (
    "Proteina",
    4.0
);
INSERT INTO Nutriente VALUES (
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
    "eduardoperetto",
    "erperetto@gmail.com",
    174,
    "M",
    74.0,
    2
);
INSERT INTO Usuario VALUES (
    "fernandosulzbach",
    "fsulzach@gmail.com",
    181,
    "M",
    76.0,
    0
);
INSERT INTO Usuario VALUES (
    "fulanosilva",
    "fulano@gmail.com",
    166,
    "F",
    55.0,
    1
);

--  Exercicio
INSERT INTO Exercicio VALUES (
    0,
    30,
    "Caminhada",
    "eduardoperetto"
);
INSERT INTO Exercicio VALUES (
    1,
    50,
    "Futebol",
    "fernandosulzbach"
);
INSERT INTO Exercicio VALUES (
    2,
    60,
    "Musculacao",
    "fulanosilva"
);

-- Receita
INSERT INTO Receita VALUES (
    0,
    "Bolo de banana",
    "fulanosilva"
);
INSERT INTO Receita VALUES (
    1,
    "Prato feito",
    "eduardoperetto"
);
INSERT INTO Receita VALUES (
    2,
    "Sanduiche de frango",
    "fernandosulzbach"
);

-- Refeicao
INSERT INTO Refeicao VALUES (
    "Cafe da manha",
    "08:00"
);
INSERT INTO Refeicao VALUES (
    "Almoco",
    "12:00"
);
INSERT INTO Refeicao VALUES (
    "Janta",
    "20:00"
);

-- ComposicaoAlimentar
INSERT INTO ComposicaoAlimentar VALUES (
    "Carboidrato",
    0,
    30
);
INSERT INTO ComposicaoAlimentar VALUES (
    "Proteina",
    1,
    15
);
INSERT INTO ComposicaoAlimentar VALUES (
    "Gordura",
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
    2
);
INSERT INTO CronogramaAlimentar VALUES (
    2,
    1
);
INSERT INTO CronogramaAlimentar VALUES (
    0,
    1
);

-- MetaDiaria
INSERT INTO MetaDiaria VALUES (
    "Segunda saudavel",
    "eduardoperetto"
);
INSERT INTO MetaDiaria VALUES (
    "Dia do lixo",
    "fulanosilva"
);
INSERT INTO MetaDiaria VALUES (
    "Final de semana",
    "fernandosulzabach"
);

-- MetaExercicio
INSERT INTO MetaExercicio VALUES (
    "Final de semana",
    1
);
INSERT INTO MetaExercicio VALUES (
    "Dia do lixo",
    0
);
INSERT INTO MetaExercicio VALUES (
    "Segunda saudavel",
    2
);

-- MetaDiarioNutriente
INSERT INTO MetaDiarioNutriente VALUES (
    "Carboidrato",
    "eduardoperetto",
    300
);
INSERT INTO MetaDiarioNutriente VALUES (
    "Proteina",
    "eduardoperetto",
    120
);
INSERT INTO MetaDiarioNutriente VALUES (
    "Gordura",
    "eduardoperetto",
    40
);

-- Ingrediente
INSERT INTO Ingrediente VALUES (
    0,
    1
);
INSERT INTO Ingrediente VALUES (
    1,
    0
);
INSERT INTO Ingrediente VALUES (
    2,
    2
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

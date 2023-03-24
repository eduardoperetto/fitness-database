-- Alimentos que nao combinam
-- Ex: alimentos que nunca aparecem nas mesmas refeicoes em que Frango aparece
select nome
from Alimento ALI
where idAlimento <> 2 and
not exists (select nome
from ComposicaoRefeicao
where idAlimento = 2 and
idAlimento in
(select distinct idAlimento
from ComposicaoRefeicao
where idAlimento = ALI.idAlimento))

-- Consulta para obter o número de calorias consumidas por um usuário em um determinado dia:
SELECT SUM(ca.quantidade * n.caloriasPorGrama)
FROM ComposicaoAlimentar ca
JOIN Alimento a ON ca.idAlimento = a.idAlimento
JOIN CronogramaAlimentar caa ON caa.idRefeicao = ca.idRefeicao
JOIN Diario d ON d.idDiario = caa.idDiario
JOIN Usuario u ON u.id = d.idUsuario
JOIN Nutriente n ON n.idNutriente = ca.idNutriente
WHERE d.data = '2023-03-24' AND u.id = 1;

-- Consulta para obter o número de calorias queimadas por um usuário em um determinado dia:
SELECT SUM(e.duracao * te.gastoCalorico)
FROM Exercicio e
JOIN TipoExercicio te ON e.idTipoExercicio = te.idTipoExercicio
JOIN Diario d ON d.idDiario = e.idDiario
JOIN Usuario u ON u.id = d.idUsuario
WHERE d.data = '2023-03-24' AND u.id = 1;

-- Consulta para obter as receitas de um usuário com um determinado nutriente:
SELECT r.nome
FROM Receita r
JOIN Usuario u ON u.id = r.idUsuario
JOIN Ingrediente i ON i.idReceita = r.idReceita
JOIN Alimento a ON a.idAlimento = i.idAlimento
JOIN ComposicaoAlimentar ca ON ca.idAlimento = a.idAlimento
JOIN Nutriente n ON n.idNutriente = ca.idNutriente
WHERE u.id = 1 AND n.nome = 'proteína';

-- Consulta para obter a média de peso de um usuário em um determinado mês:
SELECT AVG(valor)
FROM Peso p
JOIN Pesagem pe ON pe.idPeso = p.idPeso
JOIN Usuario u ON u.id = pe.idUsuario
WHERE MONTH(data) = 3 AND YEAR(data) = 2023 AND u.id = 1;

-- Consulta para obter os exercícios realizados por um usuário em um determinado dia:
SELECT te.nome, e.duracao
FROM Exercicio e
JOIN TipoExercicio te ON e.idTipoExercicio = te.idTipoExercicio
JOIN Diario d ON d.idDiario = e.idDiario
JOIN Usuario u ON u.id = d.idUsuario
WHERE d.data = '2023-03-24' AND u.id = 1;

-- Consulta para obter a quantidade de um nutriente consumido por um usuário em um determinado dia, agrupado por refeição:
SELECT caa.idRefeicao, SUM(ca.quantidade)
FROM ComposicaoAlimentar ca
JOIN Alimento a ON ca.idAlimento = a.idAlimento
JOIN CronogramaAlimentar caa ON caa.idRefeicao = ca.idRefeicao
JOIN Diario d ON d.idDiario = caa.idDiario
JOIN Usuario u ON u.id = d.idUsuario
WHERE d.data = '2023-03-24' AND u.id = 1 AND ca.idNutriente = 1
GROUP BY caa.idRefeicao;

-- Retorna a lista de usuários e suas metas diárias de macronutrientes, calculando as quantidades em gramas com base em sua ingestão calórica diária e objetivos de ganho ou perda de peso.
SELECT 
  u.nome as nome_usuario,
  md.nome as nome_meta,
  round((md.prot_porcentagem/100) * (o.pesoAlvo - p.valor) * 4, 2) as proteinas_g,
  round((md.carb_porcentagem/100) * (o.pesoAlvo - p.valor) * 4, 2) as carboidratos_g,
  round((md.gord_porcentagem/100) * (o.pesoAlvo - p.valor) * 9, 2) as gorduras_g
FROM 
  Usuario u 
  JOIN Objetivo o ON u.idObjetivo = o.idObjetivo 
  JOIN Peso p ON u.id = p.idUsuario
  JOIN MetaDiaria md ON u.id = md.idUsuario;
Retorne a lista de receitas que contêm um determinado ingrediente e o nome desse ingrediente.

SELECT 
  r.nome as nome_receita,
  a.nome as nome_ingrediente
FROM 
  Receita r 
  JOIN Ingrediente i ON r.idReceita = i.idReceita 
  JOIN Alimento a ON i.idAlimento = a.idAlimento 
WHERE 
  a.nome = 'Tomate';

-- Retorna a lista de usuários e suas médias de peso por mês durante o ano atual.
SELECT 
  u.nome as nome_usuario,
  EXTRACT(MONTH FROM ps.data) as mes,
  ROUND(AVG(ps.valor), 2) as media_peso
FROM 
  Usuario u 
  JOIN Pesagem pe ON u.id = pe.idUsuario 
  JOIN Peso ps ON pe.idPeso = ps.idPeso 
WHERE 
  EXTRACT(YEAR FROM ps.data) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY 
  u.nome,
  EXTRACT(MONTH FROM ps.data)
ORDER BY 
  u.nome,
  EXTRACT(MONTH FROM ps.data);

-- Retorna a lista de exercícios que foram realizados em um determinado dia, juntamente com o tipo de exercício e o gasto calórico correspondente.
SELECT 
  e.idExercicio,
  e.duracao,
  t.nome as tipo_exercicio,
  t.gastoCalorico * e.duracao / 60 as gasto_calorico
FROM 
  Exercicio e 
  JOIN TipoExercicio t ON e.idTipoExercicio = t.idTipoExercicio 
  JOIN Treino tr ON e.idExercicio = tr.idExercicio 
  JOIN Diario d ON tr.idDiario = d.idDiario 
WHERE 
  d.data = '2022-03-15';
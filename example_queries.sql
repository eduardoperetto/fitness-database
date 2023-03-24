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
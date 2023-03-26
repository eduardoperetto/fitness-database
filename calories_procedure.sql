-- Adicionar propriedade totalCalorias
ALTER TABLE Alimento ADD COLUMN totalCalorias FLOAT;

-- Trigger Function
CREATE OR REPLACE FUNCTION update_total_calorias()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE Alimento SET totalCalorias = (
    SELECT SUM(caloriasPorGrama * quantidade)
    FROM ComposicaoAlimentar ca
    JOIN Nutriente n ON n.idNutriente = ca.idNutriente
    WHERE ca.idAlimento = NEW.idAlimento
  )
  WHERE idAlimento = NEW.idAlimento;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- Trigger
CREATE TRIGGER update_alimento_total_calorias
AFTER INSERT OR UPDATE OR DELETE ON ComposicaoAlimentar
FOR EACH ROW
EXECUTE FUNCTION update_total_calorias();

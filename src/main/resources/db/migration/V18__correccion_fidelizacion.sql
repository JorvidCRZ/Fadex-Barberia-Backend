ALTER TABLE fidelizacion_movimiento
ADD COLUMN IF NOT EXISTS updated_at TIMESTAMP;

UPDATE fidelizacion_movimiento
SET updated_at = CURRENT_TIMESTAMP
WHERE updated_at IS NULL;

ALTER TABLE fidelizacion_movimiento
ALTER COLUMN updated_at SET NOT NULL;

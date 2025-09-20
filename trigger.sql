criado a tabela de auditoria para salvar os logs

CREATE TABLE log_auditoria(
    id          SERIAL PRIMARY Key,
    id_pedido   INT,
    action      VARCHAR(10),
    action_time TIMESTAMP
)

--criado a função da trigger
CREATE OR REPLACE FUNCTION tg_auditoria_pedido()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO log_auditoria(id_pedido, action, action_time)
    VALUES (
        COALESCE(NEW.id_pedido, OLD.id_pedido),
        TG_OP,
        NOW()
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql

-- criado a trigger
CREATE TRIGGER trg_pedido_auditoria
AFTER INSERT OR UPDATE OR DELETE
ON pedidos
FOR EACH ROW
EXECUTE FUNCTION tg_auditoria_pedido();

INSERT INTO pedidos (id_cliente, data_pedido, status)
VALUES(1, now(), 'Pendente');

UPDATE pedidos
SET status = 'Cancelado'
where id_pedido = 6;

-- Comandos para dropar se precisar
-- DROP TRIGGER IF EXISTS trg_pedido_auditoria ON pedidos;
-- DROP FUNCTION IF EXISTS tg_auditoria_pedido();

CREATE OR ALTER TRIGGER trg_EvitarBorradoPaquete
ON paquete
INSTEAD OF DELETE
AS
BEGIN

    IF EXISTS (SELECT 1 FROM reserva r INNER JOIN deleted d ON r.idPaquete = d.id)
    BEGIN
        RAISERROR('Error de negocio: No se puede eliminar el paquete porque ya tiene reservas asociadas.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN

        DELETE FROM paquete WHERE id IN (SELECT id FROM deleted);
    END
END;
GO

CREATE OR ALTER TRIGGER trg_ValidarFechasReserva
ON reserva
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE fechaInicio > fechaFinal)
    BEGIN
        RAISERROR('Error de negocio: La fecha de inicio no puede ser posterior a la fecha final de la reserva.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO
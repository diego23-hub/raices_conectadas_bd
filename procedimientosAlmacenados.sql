CREATE OR ALTER PROCEDURE sp_InsertarReserva
    @p_correo_usuario VARCHAR(100),
    @p_id_paquete INT,
    @p_fecha_inicio DATE,
    @p_fecha_final DATE,
    @p_cantidad_personas INT,
    @p_subtotal DECIMAL,
    @p_iva DECIMAL,
    @p_total DECIMAL,
    @p_adultos INT,
    @p_bebes INT = 0,
    @p_jovenes INT = 0,
    @p_ninos INT = 0,
    @p_num_seguimiento INT
AS
BEGIN
    DECLARE @v_id_usuario INT;

    SELECT @v_id_usuario = id FROM usuario WHERE correo = @p_correo_usuario;

    IF @v_id_usuario IS NOT NULL
    BEGIN
        INSERT INTO reserva (
            idUsuario, idPaquete, fechaInicio, fechaFinal, 
            cantidadPersonas, subtotal, iva, total, 
            adultos, bebes, jovenes, ninos, estado, numSeguimiento
        )
        VALUES (
            @v_id_usuario, @p_id_paquete, @p_fecha_inicio, @p_fecha_final, 
            @p_cantidad_personas, @p_subtotal, @p_iva, @p_total, 
            @p_adultos, @p_bebes, @p_jovenes, @p_ninos, 'Confirmada', @p_num_seguimiento
        );
        PRINT 'Transacción exitosa: Reserva registrada en el sistema.';
    END
    ELSE
    BEGIN
        PRINT 'Error de integridad: El usuario no se encuentra registrado.';
    END
END;
GO

CREATE OR ALTER PROCEDURE sp_ConsultarPaquetesPorDestino
    @p_id_destino INT
AS
BEGIN
    SELECT
        d.nombre AS Destino_Patrimonial,
        p.id AS ID_Paquete,
        p.nombre AS Nombre_Paquete,
        p.precio AS Precio_Base,
        p.duracion AS Duracion,
        p.limitePersonas AS Limite_Personas,
        p.descripcion AS Detalles_Incluidos
    FROM destino d
    INNER JOIN paquete p ON d.id = p.idDestino
    WHERE d.id = @p_id_destino;
END;
GO

CREATE OR ALTER PROCEDURE sp_ValidarAccesoUsuario
    @p_correo VARCHAR(100),
    @p_password VARCHAR(100)
AS
BEGIN

    SELECT u.id, u.nombres, u.apellidos, u.telefono, r.nombre AS rol
    FROM usuario u
    INNER JOIN rol r ON u.idRol = r.id
    WHERE u.correo = @p_correo AND u.contrasena = @p_password;
END;
GO

CREATE OR ALTER PROCEDURE sp_RegistrarPagoReserva
    @p_id_reserva INT,
    @p_id_metodo_pago INT,
    @p_referencia VARCHAR(100),
    @p_monto DECIMAL,
    @p_id_proveedor INT
AS
BEGIN

    INSERT INTO pago (idReserva, idMetodoPago, referencia, monto, fecha, estado)
    VALUES (@p_id_reserva, @p_id_metodo_pago, @p_referencia, @p_monto, GETDATE(), 'Aprobado');

    UPDATE reserva SET estado = 'Pagada' WHERE id = @p_id_reserva;

    INSERT INTO notificacion (idReserva, idProveedor, estado, fechaCreacion)
    VALUES (@p_id_reserva, @p_id_proveedor, 'Pendiente de confirmación', GETDATE());

    PRINT 'Pago registrado y notificación generada con éxito.';
END;
GO

CREATE OR ALTER PROCEDURE sp_ConsultarReservasPorUsuario
    @p_correo_usuario VARCHAR(100)
AS
BEGIN
    SELECT 
        r.id AS ID_Reserva,
        p.nombre AS Paquete_Turistico,
        d.nombre AS Destino,
        r.fechaInicio,
        r.fechaFinal,
        r.cantidadPersonas,
        r.total,
        r.estado,
        r.numSeguimiento
    FROM reserva r
    INNER JOIN usuario u ON r.idUsuario = u.id
    INNER JOIN paquete p ON r.idPaquete = p.id
    INNER JOIN destino d ON p.idDestino = d.id
    WHERE u.correo = @p_correo_usuario;
END;
GO
SELECT 
    p.id AS ID_Paquete, 
    p.nombre AS Nombre_Paquete, 
    p.precio AS Precio, 
    d.nombre AS Destino, 
    p.duracion AS Duracion
FROM paquete p
INNER JOIN destino d ON p.idDestino = d.id;

SELECT 
    r.numSeguimiento AS Num_Reserva, 
    u.nombres + ' ' + u.apellidos AS Cliente,
    p.nombre AS Paquete_Comprado, 
    r.fechaInicio, 
    r.cantidadPersonas, 
    r.total, 
    r.estado
FROM reserva r
INNER JOIN usuario u ON r.idUsuario = u.id
INNER JOIN paquete p ON r.idPaquete = p.id;

SELECT 
    e.nombre AS Nombre_Evento, 
    d.nombre AS Ciudad, 
    te.nombre AS Categoria, 
    e.fechaInicio
FROM evento e
INNER JOIN destino d ON e.idDestino = d.id
INNER JOIN tipoEvento te ON e.idTipoEvento = te.id;

EXEC sp_ConsultarPaquetesPorDestino @p_id_destino = 4;
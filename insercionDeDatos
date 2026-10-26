USE raices_conectadas;
GO

INSERT INTO rol (nombre) VALUES 
('admin'), 
('viajero');

INSERT INTO tipoDoc (nombre, aplicaIva) VALUES 
('cc.ti', 'Si'), 
('cédula de extranjería', 'No'), 
('pasaporte', 'No');

INSERT INTO tipoDestino (nombre) VALUES 
('inmaterial'), 
('arquitectónico'), 
('gastronómico');

INSERT INTO tipoProveedor (nombre) VALUES 
('hoteles'), 
('transporte'), 
('guías');

INSERT INTO tipoEvento (nombre) VALUES 
('cultural'), ('histórico'), ('gastronómico'), 
('folclórico'), ('artesanal'), ('religioso'), 
('ambiental'), ('ecoturístico'), ('recreativo'), ('deportivo');

INSERT INTO metodoPago (nombre) VALUES 
('Nequi'), 
('PSE'), 
('Tarjeta de Crédito');

INSERT INTO usuario (idTipoDoc, numDoc, nombres, apellidos, telefono, correo, contrasena, idRol) VALUES 
(1, 1000111222, 'Diego', 'Noreña', '3001234567', 'admin@raices.com', 'password123', 1), 
(1, 1000333444, 'Carlos', 'Viajero', '3109876543', 'carlos@viajero.com', 'password123', 2); 

SET IDENTITY_INSERT destino ON;
INSERT INTO destino (id, nombre, descripcion, idTipoDestino) VALUES 
(1, 'SAN FÉLIX', 'Un destino popular para el parapente con vistas panorámicas increíbles del Valle de Aburrá.', 3),
(2, 'SANTA FE DE ANTIOQUIA', 'Ciudad colonial conocida por su arquitectura de la época republicana, calles empedradas y el famoso Puente de Occidente.', 3),
(3, 'VILLA DE LEYVA', 'Famoso por su inmensa plaza principal empedrada, edificios coloniales bien preservados y su cercanía a yacimientos fósiles.', 3),
(4, 'BARICHARA', 'Considerado uno de los pueblos más lindos de Colombia, destaca por sus construcciones en piedra labrada y sus talleres artesanales.', 3),
(5, 'MOMPOX', 'Isla fluvial rodeada por el río Magdalena, joya arquitectónica colonial y cuna de la filigrana en oro y plata.', 3),
(6, 'JERICÓ', 'Pueblo de arraigo religioso y cafetero, famoso por la fabricación del carriel antioqueño y el santuario de la Madre Laura.', 3),

(7, 'JARDÍN', 'Tesoro del suroeste antioqueño.', 2),
(8, 'JERICÓ (EXT)', 'Pueblo de paisajes montañosos.', 2),
(9, 'MONGUÍ', 'Famoso por sus calles de piedra.', 2),
(10, 'PLAYA DE BELÉN', 'Un oasis de paz con fachadas blancas.', 2),
(11, 'PORE', 'Único Pueblo Patrimonio de los Llanos.', 2),
(12, 'SALAMINA', 'Ciudad Luz de Caldas.', 2),
(13, 'SAN JUAN GIRÓN', 'Monumento nacional de calles empedradas.', 2),
(14, 'SANTA CRUZ DE MOMPOX', 'Isla flotante sobre el río Magdalena.', 2),
(15, 'SANTA CRUZ DE LORICA', 'Mezcla arquitectura republicana y caribeña.', 2),
(16, 'SANTA FE DE ANTIOQUIA (EXT)', 'Antigua capital del departamento.', 2),
(17, 'EL SOCORRO', 'Cuna de la Revolución de los Comuneros.', 2),
(18, 'VILLA DE LEYVA (EXT)', 'Joya colonial de Boyacá.', 2);
SET IDENTITY_INSERT destino OFF;

SET IDENTITY_INSERT paquete ON;
INSERT INTO paquete (id, nombre, precio, descripcion, duracion, incluye, itinerario, limitePersonas, idDestino) VALUES 
(1, 'Aguadas, Caldas', 950000, 'Cuna del pasillo colombiano y tierra de la cultura cafetera, famosa por la calidez de su gente...', '3 días y 2 noches', 'Alojamiento en finca cafetera, talleres...', 'Día 1: Llegada. Día 2: Taller. Día 3: Despedida.', 10, 1),
(2, 'Barichara, Santander', 1200000, 'Considerado el pueblo más lindo de Colombia...', '3 días y 2 noches', 'Alojamiento en hotel boutique...', 'Día 1: Llegada. Día 2: Caminata a Guane. Día 3: Despedida.', 10, 2),
(3, 'Ciénaga, Magdalena', 1100000, 'Capital del realismo mágico, un destino costero...', '3 días y 2 noches', 'Alojamiento, tour por la zona bananera...', 'Día 1: Bienvenida. Día 2: Paseo en lancha. Día 3: Salida.', 10, 3),
(4, 'Jardín, Antioquia', 1100000, 'Tesoro del suroeste antioqueño que conserva intacta...', '1 día (Pasadía)', 'Transporte, cabalgata, caminata ecológica...', 'Día 1: Salida de Medellín, caminata...', 10, 7),
(5, 'Guadalajara de Buga', 490000, 'Hogar de la Basílica del Señor de los Milagros...', '2 días y 1 noche', 'Alojamiento, guía turística a la basílica...', 'Día 1: Llegada. Día 2: Ruta del dulce.', 10, 4),
(6, 'Jericó, Antioquia', 680000, 'Pueblo de paisajes montañosos espectaculares...', '2 días y 1 noche', 'Alojamiento, visita al santuario...', 'Día 1: Llegada. Día 2: Vuelo en parapente.', 10, 8),
(7, 'Monguí, Boyacá', 780000, 'Famoso por sus calles de piedra y arquitectura...', '3 días y 2 noches', 'Alojamiento, excursión guiada al páramo...', 'Día 1: Llegada. Día 2: Páramo de Ocetá. Día 3: Salida.', 10, 9),
(8, 'Honda, Tolima', 850000, 'Conocida como la ciudad de los puentes...', '3 días y 2 noches', 'Alojamiento, tour de puentes coloniales...', 'Día 1: Llegada. Día 2: Paseo en canoa. Día 3: Despedida.', 10, 6),
(9, 'Playa de Belén', 820000, 'Un oasis de paz con fachadas blancas...', '3 días y 2 noches', 'Alojamiento y guía especializado...', 'Día 1: Llegada. Día 2: Los Estoraques. Día 3: Miradores.', 10, 10),
(10, 'San Juan Girón', 550000, 'Monumento nacional caracterizado por calles empedradas...', '2 días y 1 noche', 'Alojamiento, cena romántica privada...', 'Día 1: Llegada, cena. Día 2: Ruta del dulce.', 10, 13),
(11, 'Santa Cruz de Mompox', 1650000, 'Isla flotante sobre el río Magdalena...', '4 días y 3 noches', 'Alojamiento exclusivo, taller de joyería...', 'Día 1: Llegada. Día 2: Taller. Día 3: Paseo. Día 4: Salida.', 10, 14),
(12, 'Santa Fe de Antioquia', 180000, 'Antigua capital del departamento...', '1 día (Pasadía)', 'Transporte ida y vuelta, almuerzo...', 'Día 1: Salida, visita al Puente de Occidente...', 10, 16),
(13, 'Salamina, Caldas', 950000, 'Conocida como la Ciudad Luz de Caldas...', '3 días y 2 noches', 'Alojamiento, recorrido patrimonial...', 'Día 1: Llegada. Día 2: Valle de la Samaria. Día 3: Salida.', 10, 12),
(14, 'El Socorro, Santander', 790000, 'Cuna de la Revolución de los Comuneros...', '3 días y 2 noches', 'Alojamiento, tour histórico...', 'Día 1: Llegada. Día 2: Senderismo. Día 3: Salida.', 10, 17),
(15, 'Guaduas, Cundinamarca', 420000, 'Parte fundamental de la Ruta Mutis...', '2 días y 1 noche', 'Alojamiento, visita a la casa museo...', 'Día 1: Llegada. Día 2: Ruta Mutis.', 10, 5),
(16, 'Santa Cruz de Lorica', 920000, 'Conocida como la Ciudad Antigua y Señorial...', '3 días y 2 noches', 'Alojamiento, taller de tejido...', 'Día 1: Llegada. Día 2: Taller caña flecha. Día 3: Salida.', 10, 15),
(17, 'Pore, Casanare', 1450000, 'Único Pueblo Patrimonio de los Llanos Orientales...', '3 días y 2 noches', 'Alojamiento, safari llanero...', 'Día 1: Llegada. Día 2: Safari llanero. Día 3: Salida.', 10, 11),
(18, 'Villa de Leyva', 1000000, 'Joya colonial de Boyacá, famosa por su inmensa plaza...', '3 días y 2 noches', 'Alojamiento en hotel colonial...', 'Día 1: Llegada. Día 2: Museo El Fósil. Día 3: Salida.', 10, 18);
SET IDENTITY_INSERT paquete OFF;

SET IDENTITY_INSERT evento ON;
INSERT INTO evento (id, idDestino, nombre, descripcion, fechaInicio, fechaFin, idTipoEvento) VALUES 
(1, 1, 'Festival del Viento y el Parapente en Floridablanca', 'Festival que reúne a los mejores pilotos...', '2026-03-15', '2026-03-19', 10), 
(5, 2, 'Festival de Cine de Santa Fe de Antioquia', 'El festival de cine independiente más antiguo...', '2026-12-04', '2026-12-08', 1), 
(6, 3, 'Festival Nacional del Viento y las Cometas', 'Cientos de cometas de todas las formas...', '2026-08-15', '2026-08-17', 9), 
(7, 5, 'Mompox Jazz Festival', 'Encuentro musical de talla mundial...', '2026-10-15', '2026-10-18', 1), 
(8, 6, 'Hay Festival Jericó', 'Celebración cultural que reúne literatura...', '2026-01-23', '2026-01-25', 1), 
(9, 4, 'Festiver (Festival de Cine Verde)', 'Festival dedicado al cine verde y ambiental...', '2026-09-17', '2026-09-20', 7); 
SET IDENTITY_INSERT evento OFF;

INSERT INTO proveedor (nombre, ubicacion, descripcion, telefono, correo, idDestino, idTipoProveedor) VALUES 
('Hotel Colonial Plaza', 'Calle 10 # 5-20', 'Hotel boutique con arquitectura colonial.', '3200000000', 'reservas@hotelcolonial.com', 2, 1);

SET IDENTITY_INSERT reserva ON;
INSERT INTO reserva (id, idUsuario, idPaquete, fechaInicio, fechaFinal, cantidadPersonas, subtotal, iva, total, adultos, bebes, jovenes, ninos, estado, numSeguimiento) VALUES 
(1, 2, 2, '2026-11-10', '2026-11-13', 2, 2400000, 456000, 2856000, 2, 0, 0, 0, 'Confirmada', 10001);
SET IDENTITY_INSERT reserva OFF;

INSERT INTO pago (idReserva, idMetodoPago, referencia, monto, fecha, estado) VALUES 
(1, 1, 'REF-99887766', 2856000, '2026-10-26', 'Aprobado');

INSERT INTO notificacion (idReserva, idProveedor, estado, fechaCreacion) VALUES 
(1, 1, 'Enviada al proveedor', '2026-10-26');
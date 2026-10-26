
CREATE DATABASE raices_conectadas
go
USE raices_conectadas
go

create table rol (
	id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) not null
);

CREATE TABLE permiso (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100) not null
);

CREATE TABLE rolPermiso (
    idRol INT NOT NULL,
    idPermiso INT NOT NULL,
    PRIMARY KEY (idRol, idPermiso),
        
    CONSTRAINT fk_rolPermiso_rol 
        FOREIGN KEY (idRol) 
        REFERENCES rol(id),
        
    CONSTRAINT fk_rolPermiso_permiso 
        FOREIGN KEY (idPermiso) 
        REFERENCES permiso(id) 
);

CREATE table tipoDoc (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(100) not null,
    aplicaIva varchar(100) not null
);

CREATE TABLE usuario (
    id INT IDENTITY(1,1) PRIMARY KEY,
	idTipoDoc int not null,
    numDoc int not null,
    nombres VARCHAR(100) not null,
    apellidos VARCHAR(100) not null,
    telefono VARCHAR(100) not null,
    correo VARCHAR(100) not null,
    contrasena VARCHAR(100),
    idRol int not null,
    constraint fk_usuario_tipodoc
		foreign key (idTipoDoc)
        references tipoDoc(id),
    constraint fk_usuario_rol
		foreign key (idRol)
        references rol(id)
);

create table tipoDestino (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100) not null
);

create table destino (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR (100) not null,
    descripcion varchar (1000) not null,
    idTipoDestino int not null,
    constraint fk_destino_tipodestino
		foreign key (idTipoDestino)
        references tipoDestino(id)
);

create table paquete (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(100) not null,
    precio decimal not null,
    descripcion varchar(1000) not null,
    duracion varchar(100) not null,
    incluye varchar(1000) not null,
    itinerario varchar(1000) not null,
    limitePersonas int not null,
    idDestino int not null,
    constraint fk_paquete_destino
		foreign key (idDestino)
        references destino(id)
);

create table reserva (
	id INT IDENTITY(1,1) PRIMARY KEY,
    idUsuario int not null,
    idPaquete int not null,
    fechaInicio date not null,
    fechaFinal date not null,
    cantidadPersonas int not null,
    subtotal decimal not null,
    iva decimal not null,
    total decimal not null,
    adultos int not null,
    bebes int,
    jovenes int,
    ninos int,
    estado varchar(100) not null,
    numSeguimiento int not null,
	constraint fk_reserva_usuario
		foreign key (idUsuario)
		references usuario(id),
	constraint fk_reserva_paquete
		foreign key (idPaquete)
		references paquete(id)
);

create table tipoEvento (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(100) not null
);

create table evento (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(100) not null,
    descripcion varchar(1000) not null,
    fechaInicio date not null,
    fechaFin date not null,
    idDestino int not null,
    idTipoEvento int not null,
    constraint fk_evento_destino
		foreign key (idDestino)
        references destino(id),
	constraint fk_evento_tipoEvento
		foreign key (idTipoEvento)
        references tipoEvento(id)
);

create table tipoProveedor (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(100) not null
);

create table proveedor (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(100) not null,
    ubicacion varchar(200) not null,
    descripcion varchar(1000) not null,
    telefono varchar(10) not null,
    correo varchar(100) not null,
    idDestino int not null,
    idTipoProveedor int not null,
    constraint fk_proveedor_destino
		foreign key (idDestino)
        references destino(id),
	constraint fk_proveedor_tipoproveedor
		foreign key (idTipoProveedor)
        references tipoProveedor(id)
);

create table notificacion (
	id INT IDENTITY(1,1) PRIMARY KEY,
	idReserva int not null,
    idProveedor int not null,
    estado varchar(100) not null,
    fechaCreacion date not null,
    constraint fk_notificacion_reserva
		foreign key (idReserva)
        references reserva(id),
	constraint fk_notificacion_proveedor
		foreign key(idProveedor)
        references proveedor(id)
);

create table metodoPago(
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(100) not null
);

create table pago(
	id INT IDENTITY(1,1) PRIMARY KEY,
	idReserva int not null,
    idMetodoPago int not null,
    referencia varchar(100) not null,
    monto decimal not null,
    fecha date not null,
    estado varchar(100) not null,
    constraint fk_pago_reserva
		foreign key (idReserva)
        references reserva(id),
    constraint fk_pago_metodopago
		foreign key (idMetodoPago)
        references metodoPago(id)
);
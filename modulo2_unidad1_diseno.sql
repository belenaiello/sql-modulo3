CREATE TABLE clientes (
id_cliente int NOT NULL IDENTITY (1,1) PRIMARY KEY,
nombre varchar(100) NOT NULL,
perfil_bio text NOT NULL,
fecha_registro date NOT NULL,
);
CREATE TABLE productos (
id_producto int NOT NULL IDENTITY (1,1) PRIMARY KEY,
descripcion varchar(255) NOT NULL,
precio decimal (10,2) NOT NULL,
esta_activo BIT NOT NULL,
);
-- Tabla para almacenar información de los clientes
CREATE TABLE clientes (
-- Entero para identificar de manera única a cada cliente
    id_cliente INT,
-- Texto de hasta 100 caracteres para almacenar el nombre
    nombre VARCHAR(100),
-- Texto largo para guardar observaciones o biografías
    perfil_bio TEXT,
-- Solo se necesita la fecha de registro, sin hora
    fecha_registro DATE
);
-- Tabla para almacenar información de los productos
CREATE TABLE productos (
-- Entero para identificar de manera única a cada producto
    id_producto INT,
-- Texto de hasta 255 caracteres para describir el producto
    descripcion VARCHAR(255),
-- Tipo numérico con 2 decimales para representar importes monetarios
    precio NUMERIC(10,2),
-- BIT permite indicar si el producto está activo (1) o inactivo (0)
    esta_activo BIT
);
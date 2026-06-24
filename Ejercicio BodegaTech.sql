-- BodegaTech — Script de Inventario
-- Autor: Belén Aiello
-- Fecha: 2026-06-23

-- SECCIÓN DDL
DROP TABLE IF EXISTS inventario;
CREATE DATABASE BodegaTech;
CREATE TABLE inventario (
id_producto int NOT NULL IDENTITY (1,1) PRIMARY KEY,
nombre_producto varchar(100) NOT NULL,
categoria varchar(50) NOT NULL,
precio_unitario decimal (10,2) NOT NULL,
stock_actual int NOT NULL,
stock_minimo int NOT NULL,
fecha_ingreso date NOT NULL,
activo TINYINT NOT NULL
);
SELECT * FROM inventario

-- SECCIÓN DML
INSERT INTO inventario
(nombre_producto, categoria,precio_unitario,stock_actual,stock_minimo,fecha_ingreso,activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15,3,'2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12,2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

-- INT permite identificar de forma única cada producto
-- VARCHAR(100) permite almacenar nombres de distinta longitud
-- DECIMAL(10,2) evita errores de precisión en valores monetarios
-- DATE almacena únicamente la fecha sin necesidad de hora

-- Ventas del día
UPDATE inventario SET stock_actual = 12
WHERE id_producto = 1;

UPDATE inventario SET stock_actual = 68
WHERE id_producto = 2;

UPDATE inventario SET stock_actual = 30
WHERE id_producto = 6;

-- Producto descontinuado
UPDATE inventario set activo = 0
WHERE id_producto = 8;

-- Validación final
SELECT * FROM inventario;
-- -----------------------------------------------------
-- Opcional: crear base de datos 'comercioit'
-- (Comentado porque ya existe o se creó antes)
-- -----------------------------------------------------
-- CREATE DATABASE comercioit;

-- Selecciona la base de datos 'comercioit' para trabajar con ella
USE comercioit;

-- -----------------------------------------------------
-- Crear tabla 'Productos'
-- -----------------------------------------------------
-- Esta tabla almacenará información de productos tecnológicos,
-- incluyendo su precio, marca, categoría, stock y disponibilidad.
CREATE TABLE Productos(
	idProducto INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Identificador único y autoincremental
	Nombre VARCHAR(50) NOT NULL,                                 -- Nombre descriptivo del producto
	Precio DOUBLE,                                               -- Precio del producto (en USD)
	Marca VARCHAR(30) NOT NULL,                                  -- Marca del producto
	Categoria VARCHAR(30) NOT NULL,                              -- Categoría (Portátiles, Audio, etc.)
	Stock INT NOT NULL,                                          -- Cantidad disponible en inventario
	Disponible BOOLEAN DEFAULT false                             -- Indica si está disponible para la venta
);

-- -----------------------------------------------------
-- Eliminar tabla 'Productos'
-- -----------------------------------------------------
-- Esta sentencia elimina la tabla 'Productos' de la base de datos.
DROP TABLE Productos;

-- La versión con 'IF EXISTS' elimina la tabla solo si existe,
-- evitando errores si ya fue eliminada o nunca se creó.
DROP TABLE IF EXISTS Productos;


-- -----------------------------------------------------
-- Insertar datos de prueba en la tabla 'Productos'
-- -----------------------------------------------------
-- Inserta 30 registros con información realista de productos tecnológicos.
-- Incluye portátiles, monitores, periféricos, smartphones, tablets,
-- dispositivos de red, audio, consolas y accesorios.

INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Laptop Dell Inspiron 15', 750.00, 'Dell', 'Portátiles', 25, true),
('Laptop HP Pavilion 14', 680.00, 'HP', 'Portátiles', 18, true),
('MacBook Air M1', 999.00, 'Apple', 'Portátiles', 12, true),
('Monitor Samsung 24"', 180.00, 'Samsung', 'Monitores', 30, true),
('Monitor LG UltraWide 29"', 250.00, 'LG', 'Monitores', 20, true),
('Teclado Mecánico Logitech G513', 120.00, 'Logitech', 'Periféricos', 40, true),
('Mouse Inalámbrico Logitech MX Master 3', 99.00, 'Logitech', 'Periféricos', 35, true),
('Impresora HP DeskJet 2700', 85.00, 'HP', 'Impresoras', 15, true),
('Smartphone Samsung Galaxy S23', 799.00, 'Samsung', 'Smartphones', 22, true),
('Smartphone iPhone 14', 899.00, 'Apple', 'Smartphones', 18, true),
('Tablet Samsung Galaxy Tab S8', 650.00, 'Samsung', 'Tablets', 14, true),
('Tablet iPad 10th Gen', 449.00, 'Apple', 'Tablets', 20, true),
('Router TP-Link Archer AX50', 120.00, 'TP-Link', 'Redes', 25, true),
('Disco Duro Externo WD 1TB', 65.00, 'Western Digital', 'Almacenamiento', 40, true),
('SSD Kingston NV1 500GB', 45.00, 'Kingston', 'Almacenamiento', 50, true),
('Auriculares Sony WH-1000XM4', 320.00, 'Sony', 'Audio', 12, true),
('Auriculares Apple AirPods Pro', 249.00, 'Apple', 'Audio', 18, true),
('Cámara Web Logitech C920', 70.00, 'Logitech', 'Periféricos', 28, true),
('Proyector Epson PowerLite X49', 580.00, 'Epson', 'Proyectores', 8, true),
('Smartwatch Samsung Galaxy Watch5', 299.00, 'Samsung', 'Wearables', 16, true),
('Smartwatch Apple Watch Series 9', 399.00, 'Apple', 'Wearables', 14, true),
('Consola PlayStation 5', 499.00, 'Sony', 'Consolas', 10, true),
('Consola Xbox Series X', 499.00, 'Microsoft', 'Consolas', 9, true),
('Control PS5 DualSense', 69.00, 'Sony', 'Accesorios Consolas', 30, true),
('Impresora Brother HL-L2350DW', 130.00, 'Brother', 'Impresoras', 12, true),
('Servidor NAS Synology DS220+', 299.00, 'Synology', 'Redes', 6, true),
('Switch de Red TP-Link 8 Puertos', 35.00, 'TP-Link', 'Redes', 25, true),
('Altavoz Inteligente Amazon Echo Dot', 49.00, 'Amazon', 'Audio', 50, true),
('Base de Carga Inalámbrica Belkin', 30.00, 'Belkin', 'Accesorios', 40, true),
('Kit Teclado y Mouse Logitech MK270', 40.00, 'Logitech', 'Periféricos', 35, true);

-- Cada registro tiene valores realistas:
-- - Precio en dólares (USD)
-- - Marcas reconocidas
-- - Categorías variadas
-- - Stock representativo
-- - Disponible en true para indicar que están a la venta
create database LaboratorioSAB;
Use LaboratorioSAB;

CREATE TABLE Articulos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL
);

-- Insertar registros en la tabla Articulos
INSERT INTO Articulos (Nombre, Precio) VALUES
('Yerba Mate 1kg', 2999.00),
('Dulce de Leche 400g', 1790.00),
('Alfajor de Chocolate', 1349.00),
('Vino Malbec Reserva 750ml', 9690.00),
('Fernet 750ml', 12500.00),
('Galletitas Criollitas 170g', 750.00),
('Asado de Tira (kg)', 12310.00),
('Tapas para Empanadas 12 Unidades', 1565.00),
('Queso Cremoso (kg)', 8450.00),
('Facturas Docena', 10270.00);


-- Crear la tabla Clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Telefono VARCHAR(20),
    Ciudad VARCHAR(50),
    Provincia VARCHAR(50),
    CodigoPostal VARCHAR(10)
);

-- Insertar registros en la tabla Clientes
INSERT INTO Clientes (Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal) VALUES
('Juan', 'Pérez', 'juan.perez@gmail.com', '1145678901', 'Buenos Aires', 'Buenos Aires', '1001'),
('María', 'González', 'maria.gonzalez@gmail.com', '1145678902', 'Córdoba', 'Córdoba', '5000'),
('Pedro', 'López', 'pedro.lopez@gmail.com', '1145678903', 'Rosario', 'Santa Fe', '2000'),
('Ana', 'Martínez', 'ana.martinez@gmail.com', '1145678904', 'Mendoza', 'Mendoza', '5500'),
('José', 'Ramírez', 'jose.ramirez@gmail.com', '1145678905', 'Salta', 'Salta', '4400'),
('Laura', 'Fernández', 'laura.fernandez@gmail.com', '1145678906', 'La Plata', 'Buenos Aires', '1900'),
('Carlos', 'Torres', 'carlos.torres@gmail.com', '1145678907', 'San Miguel de Tucumán', 'Tucumán', '4000'),
('Martina', 'Silva', 'martina.silva@gmail.com', '1145678908', 'Neuquén', 'Neuquén', '8300'),
('Federico', 'Sosa', 'federico.sosa@gmail.com', '1145678909', 'Posadas', 'Misiones', '3300'),
('Sofía', 'Alvarez', 'sofia.alvarez@gmail.com', '1145678910', 'San Juan', 'San Juan', '5400');
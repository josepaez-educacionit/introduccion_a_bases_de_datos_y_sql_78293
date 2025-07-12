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
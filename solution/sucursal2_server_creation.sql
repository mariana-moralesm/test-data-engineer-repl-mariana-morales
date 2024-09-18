-- Crear base de datos
CREATE DATABASE Sucursal2DB;

-- Usar la base de datos
USE Sucursal2DB;

-- Crear tabla pasajeros
CREATE TABLE pasajeros (
    ID_Pasajero INT PRIMARY KEY,
    Pasajero NVARCHAR(100),
    Edad INT
);

-- Crear tabla vuelos
CREATE TABLE vuelos (
    Sucursal INT,
    Cve_LA NVARCHAR(50),
    Viaje DATE,
    Clase NVARCHAR(50),
    Precio INT,
    Ruta NVARCHAR(100),
    Cve_Cliente INT
);

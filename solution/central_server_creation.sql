-- Crear base de datos
CREATE DATABASE CentralDB;

-- Usar la base de datos
USE CentralDB;

-- Crear tabla CatLineasAereas
CREATE TABLE CatLineasAereas (
    Code NVARCHAR(50) PRIMARY KEY,
    Linea_Aerea NVARCHAR(100)
);

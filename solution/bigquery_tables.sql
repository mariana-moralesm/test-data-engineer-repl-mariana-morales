CREATE TABLE `my_project.deacero.CatLineasAereas` (
    Code STRING,
    Linea_Aerea STRING
);

CREATE TABLE `my_project.deacero.pasajeros` (
    ID_Pasajero INT64,
    Pasajero STRING,
    Edad INT64
);

CREATE TABLE `my_project.deacero.vuelos` (
    Sucursal INT64,
    Cve_LA STRING,
    Viaje DATE,
    Clase STRING,
    Precio INT64,
    Ruta STRING,
    Cve_Cliente INT64
);


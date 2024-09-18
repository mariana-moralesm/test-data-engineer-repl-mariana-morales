--Servidor Central 
USE CentralDB;

-- Habilitar CDC en la base de datos
EXEC sys.sp_cdc_enable_db;

-- Habilitar CDC en las tablas
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'CatLineasAereas', 
    @role_name = NULL;

--Servidor Sucursal1 
USE Sucursal1DB;

-- Habilitar CDC en la base de datos
EXEC sys.sp_cdc_enable_db;

-- Habilitar CDC en las tablas
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'pasajeros', 
    @role_name = NULL;

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'vuelos', 
    @role_name = NULL;


--Servidor Sucursal2 
USE Sucursal2DB;

-- Habilitar CDC en la base de datos
EXEC sys.sp_cdc_enable_db;

-- Habilitar CDC en las tablas
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'pasajeros', 
    @role_name = NULL;

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'vuelos', 
    @role_name = NULL;

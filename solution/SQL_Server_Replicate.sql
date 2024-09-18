-- En el servidor de publicación
EXEC sp_adddistributor @distributor = N'ServidorDistribuidor', @pwd = N'contraseña';
EXEC sp_adddistributiondb @database = N'distribution', @security_mode = 1;
EXEC sp_adddistpublisher @publisher = N'ServidorPublicador', @distribution_db = N'distribution';


-- En el servidor de publicación
EXEC sp_addpublication @publication = N'NombrePublicacion', @status = N'active';

-- En el servidor suscriptor
EXEC sp_addsubscription @publication = N'NombrePublicacion', @subscriber = N'ServidorSuscriptor', @destination_db = N'DatabaseName';



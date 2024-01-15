---- Registros en la primera base de datos que no están en la segunda
SELECT * FROM SocialMedia.dbo.Publicacion
EXCEPT
SELECT * FROM SocialMedia2.dbo.Publicacion;
use SocialMedia

-- Registros en la segunda base de datos que no están en la primera
SELECT * FROM SocialMedia2.dbo.Publicacion
EXCEPT
SELECT * FROM SocialMedia.dbo.Publicacion;

-- Registros en la primera base de datos que no están en la segunda
SELECT *
FROM SocialMedia.dbo.Publicacion A
LEFT JOIN SocialMedia2.dbo.Publicacion B ON A.IdPublicacion = B.IdPublicacion
WHERE B.IdPublicacion IS NULL;

-- Registros en la segunda base de datos que no están en la primera
SELECT *
FROM SocialMedia2.dbo.Publicacion B
LEFT JOIN SocialMedia.dbo.Publicacion A ON A.IdPublicacion = B.IdPublicacion
WHERE A.IdPublicacion IS NULL;


-- Cambia al contexto de la base de datos de SocialMedia
USE SocialMedia;

-- Actualiza los campos en la tabla de Publicacion con datos de la tabla de SocialMedia2
UPDATE p1
SET
    p1.Imagen = p2.Imagen
FROM
    dbo.Publicacion p1
INNER JOIN
    SocialMedia2.dbo.Publicacion p2 ON p1.IdPublicacion = p2.IdPublicacion;

	SELECT * FROM SocialMedia.dbo.Publicacion
	SELECT * FROM SocialMedia2.dbo.Publicacion

//Ejemplo 2
USE Agora;
-- Actualiza los campos en la tabla de Publicacion con datos de la tabla de SocialMedia2
UPDATE p1
SET
    p1.nota1 = p2.nota1, p1.nota2 = p2.nota2, p1.nota3 = p2.nota3, p1.resultado = '2401'
FROM
    dbo.tblMaterias_Matriculadas p1
INNER JOIN
    tblMaterias_Matriculadas_temporal p2 ON p1.codigo_estudiante = p2.codigo_estudiante
	WHERE p1.codigo_materia_cupo = 'DE0007601022023011059901'


--Permisos
	USE DBCESDEV3;
ALTER ROLE db_ddladmin ADD MEMBER Andrex;

use [YourDatabaseName] EXEC sp_changedbowner 'sa'
----------------------------------------------------
	
-- Agrega la clave externa en la tabla principal (Tabla1)
ALTER TABLE Tabla1
ADD CONSTRAINT FK_Tabla1_Tabla2
FOREIGN KEY (CampoTabla1) REFERENCES Tabla2(CampoTabla2);

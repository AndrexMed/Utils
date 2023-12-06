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
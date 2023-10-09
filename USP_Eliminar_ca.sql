/*
CREADO POR EDDY LOBATON
2023-10-08 
Eliminar datos de la tabla TB_CATEGORIA
*/

CREATE PROCEDURE USP_Eliminar_ca
@nCodigo_Ca INT=0
AS
	DELETE FROM TB_CATEGORIA
	WHERE codigo_ca = @nCodigo_Ca;
GO
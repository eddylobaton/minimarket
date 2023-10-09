/*
CREADO POR EDDY LOBATON
2023-10-08 
Guardar datos en la tabla TB_CATEGORIA
*/

CREATE PROCEDURE USP_Guardar_ca
@nOpcion INT=0,
@nCodigo_Ca INT=0,
@Descripcion_Ca VARCHAR(40)=''
AS
IF @nOpcion=1--Nuevo registro
BEGIN
	INSERT INTO TB_CATEGORIA(descripcion_ca, estado) VALUES (@Descripcion_Ca,1);
END;
ELSE--actualiza
BEGIN
	UPDATE TB_CATEGORIA SET descripcion_ca=@Descripcion_Ca WHERE codigo_ca=@nCodigo_Ca;
END;
GO
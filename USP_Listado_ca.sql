/*
CREADO POR EDDY LOBATON
2023-10-08 
Listar datos de la tabla TB_CATEGORIA
*/

CREATE PROCEDURE USP_Listado_ca
@cTexto VARCHAR(100)=''
AS
	 SELECT codigo_ca, descripcion_ca 
	 FROM TB_CATEGORIA
	 WHERE estado=1 AND 
	 UPPER(TRIM(CAST(codigo_ca AS CHAR))+TRIM(descripcion_ca)) LIKE '%'+UPPER(TRIM(@cTexto))+'%';
	 --trim limpia espacios a la derecha
	 --cast convierte a otro tipo de dato
	 --upper pasa a mayuscula
GO
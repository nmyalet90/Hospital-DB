USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[ALTA_Paciente]    Script Date: 12/4/2025 12:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM Paciente
--EXEC ALTA_Paciente '35609197', 'Jorge', 'Lopez', '20180518', 'calle 1', 'PER', '', 'jorgelopez@gmail.com', ''

ALTER PROC [dbo].[ALTA_Paciente] (
			@DNI VARCHAR(20),
			@nombre VARCHAR(50),
			@apellido VARCHAR(50),
			@fnacimiento VARCHAR(8),
			@domicilio VARCHAR(50),
			@idpais CHAR(3),
			@telefono VARCHAR(20),
			@email VARCHAR(30),
			@observacion VARCHAR(1000)=''
			)

AS

IF NOT EXISTS(SELECT * FROM Paciente WHERE DNI=@DNI)
BEGIN
		INSERT INTO Paciente (DNI, nombre, apellido, fnacimiento, domicilio, idpais, telefono, email, observacion)
		VALUES (@DNI, @nombre, @apellido, @fnacimiento, @domicilio, @idpais, @telefono, @email, @observacion)
		PRINT 'El paciente se agregó correctamente.'
		RETURN
END
ELSE
BEGIN
		PRINT 'El paciente ya existe.'
		RETURN
END


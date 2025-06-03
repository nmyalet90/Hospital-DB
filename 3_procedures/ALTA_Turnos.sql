/*
SELECT * FROM Turno
SELECT * FROM paciente
SELECT * FROM TurnoPaciente
SELECT * FROM Medico
insert into medico values (2, 'Pablo', 'Ramirez')
EXEC ALTA_Turno '20190218 08:15', 6, 1, '' 
*/

set nocount on

ALTER PROC [dbo].[ALTA_Turno] (
			@fecha char(14),  --20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)

AS

/*
estado = 0 (pendiente)
estado = 1 (pendiente)
estado = 2 (pendiente)
*/

IF NOT EXISTS(SELECT TOP 1 idturno FROM Turno WHERE fechaturno=@fecha)
BEGIN
		INSERT INTO Turno (fechaturno,estado,observacion)
		VALUES (@fecha, 0, @observacion)

		declare @auxIdturno turno
		set @auxIdturno = @@IDENTITY

		INSERT INTO TurnoPaciente(idturno, idpaciente, idmedico)
		VALUES (@auxIdturno, @idpaciente, @idmedico)

		PRINT 'El turno se agregó correctamente.'
		RETURN
END
ELSE
BEGIN
		PRINT 'El turno ya existe.'
		RETURN
END
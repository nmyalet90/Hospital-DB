/*
select * from turno
select * from turnopaciente
*/

-- exec UPD_Turno 1,1,'El paciente llamo para cancelar el turno'

alter PROC UPD_Turno (
				@idturno turno,
				@estado tinyint,
				@observacion observacion)

AS
set nocount on

if exists (select * from Turno where idturno = @idturno)
		update Turno set estado = @estado,
						observacion = @observacion
		where idturno = @idturno
else
	print 'No se encontró el turno para que sea modificado el estado'
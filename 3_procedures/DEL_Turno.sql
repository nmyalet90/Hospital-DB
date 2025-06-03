/*
select * from PagoPaciente
select * from turno
select * from turnopaciente
*/

-- exec DEL_Turno 1

ALTER PROC DEL_Turno(
				@idturno turno)

AS
set nocount on

if exists (select * from Turno
			where idturno = @idturno)
begin
	delete from PagoPaciente where idturno = @idturno
	delete from TurnoPaciente where idturno = @idturno
	delete from Turno where idturno = @idturno
	
end
else
	print 'No se encontró el turno para eliminas'
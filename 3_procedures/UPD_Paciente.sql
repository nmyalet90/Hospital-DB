/*
select * from turno
select * from turnopaciente
select * from Paciente
select * from Pais
*/

-- exec UPD_Paciente 7,'cale 44','COL',323232323,'jorgelopez@yahoo.com','El paciente llamo para cancelar el turno'

CREATE PROC UPD_Paciente (
				@idPaciente int,
				@domicilio varchar(50),
				@idPais char(3),
				@telefono varchar(20),
				@email varchar(30),
				@observacion varchar(1000))


AS
set nocount on

if exists (select * from Paciente where idPaciente = @idPaciente)
		update Paciente set domicilio = @domicilio,
						idPais = @idPais,
						telefono = @telefono,
						email = @email,
						observacion = @observacion
		where idPaciente = @idPaciente
else
	print 'No se encontró el paciente para ser actualizado'
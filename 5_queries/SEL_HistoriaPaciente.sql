--exec SEL_HistoriaPaciente 8

ALTER PROC SEL_HistoriaPaciente(
			@idpaciente Paciente)

AS 
set nocount on

/*
select * from historia
select * from historiapaciente

*/

IF EXISTS(SELECT * from Paciente P
				INNER JOIN HistoriaPaciente HP
				ON HP.idPaciente = P.idPaciente
				INNER JOIN Historia H
				ON H.idHistoria = HP.idHistoria
				INNER JOIN MedicoEspecialidad ME
				ON ME.idMedico = HP.idMedico
				INNER JOIN Medico M
				ON M.idMedico = ME.idMedico
				WHERE P.idPaciente = @idpaciente)

		SELECT * from Paciente P
		INNER JOIN HistoriaPaciente HP
		ON HP.idPaciente = P.idPaciente
		INNER JOIN Historia H
		ON H.idHistoria = HP.idHistoria
		INNER JOIN MedicoEspecialidad ME
		ON ME.idMedico = HP.idMedico
		INNER JOIN Medico M
		ON M.idMedico = ME.idMedico
		WHERE P.idPaciente = @idpaciente
ELSE 
		print 'No existen historias clínicas para el paciente'
		--select 0 as resultado

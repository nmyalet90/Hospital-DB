-- EXEC SELECT_TurnosPaciente 6
/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM Paciente
SELECT * FROM MedicoEspecialidad
insert into medicoespecialidad values (1,2,'MedicoClinico')
*/

ALTER PROC SELECT_TurnosPaciente(
			@idpaciente paciente
)

AS
set nocount on

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idpaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
INNER JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico
WHERE P.idPaciente = @idpaciente




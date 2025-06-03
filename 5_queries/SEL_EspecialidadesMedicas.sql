-- EXEC SEL_EspecialidadesMedica

CREATE PROC SEL_EspecialidadesMedica

AS
set nocount on

--SELECT * FROM Especialidad

IF EXISTS (SELECT * FROM Especialidad)
	SELECT * FROM Especialidad
ELSE
	SELECT 0 AS resultado
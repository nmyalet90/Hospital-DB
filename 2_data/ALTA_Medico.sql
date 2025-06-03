/*
select * from Medico
select * from MedicoEspecialidad
select * from Especialidad
INSERT INTO MedicoEspecialidad (Idmedico, idespecialidad,descripcion)
	VALUES (@auxIdmedico, @idespecialidad,@descripcion)
*/

--EXEC ALTA_medico 'Gerardo','Martinez',1,'Medico traumatologo'

ALTER PROC ALTA_Medico(
    @nombre VARCHAR(50),
    @apellido VARCHAR(20),
    @idespecialidad INT,
    @descripcion VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (
        SELECT TOP 1 idMedico 
        FROM Medico 
        WHERE nombre = @nombre AND apellido = @apellido
    )
    BEGIN
        -- Insertar el nuevo médico
        INSERT INTO Medico (nombre, apellido)
        VALUES (@nombre, @apellido);

        -- Obtener el ID generado correctamente
        DECLARE @auxIdmedico INT;
        SET @auxIdmedico = SCOPE_IDENTITY();

        -- Verificación por si acaso
        IF @auxIdmedico IS NULL
        BEGIN
            PRINT 'Error: No se pudo obtener el ID del nuevo médico.';
            RETURN;
        END

        -- Insertar en la tabla de especialidad
        INSERT INTO MedicoEspecialidad (idMedico, idEspecialidad, descripcion)
        VALUES (@auxIdmedico, @idespecialidad, @descripcion);

        PRINT 'El Médico se agregó correctamente';
        RETURN;
    END
    ELSE
    BEGIN
        PRINT 'El Médico ya existe.';
        RETURN;
    END
END

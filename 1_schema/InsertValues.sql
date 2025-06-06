USE HOSPITAL

GO

-- PAIS
INSERT INTO Pais VALUES 
('ARG', 'Argentina'), ('BRA', 'Brasil'), ('CHL', 'Chile'), ('URY', 'Uruguay'), ('PAR', 'Paraguay'),
('PER', 'Perú'), ('BOL', 'Bolivia'), ('COL', 'Colombia'), ('VEN', 'Venezuela'), ('MEX', 'México'),
('USA', 'Estados Unidos'), ('CAN', 'Canadá'), ('ESP', 'España'), ('ITA', 'Italia'), ('FRA', 'Francia'),
('DEU', 'Alemania'), ('RUS', 'Rusia'), ('CHN', 'China'), ('JPN', 'Japón'), ('AUS', 'Australia');

-- CONCEPTO
INSERT INTO Concepto VALUES 
(1, 'Consulta médica'), (2, 'Análisis clínico'), (3, 'Radiografía'), (4, 'Ecografía'), (5, 'Resonancia'),
(6, 'Consulta especialista'), (7, 'Vacuna'), (8, 'Internación'), (9, 'Cirugía menor'), (10, 'Cirugía mayor'),
(11, 'Control post-operatorio'), (12, 'Psicología'), (13, 'Nutricionista'), (14, 'Dermatología'),
(15, 'Oftalmología'), (16, 'Cardiología'), (17, 'Neumonología'), (18, 'Urología'), (19, 'Oncología'), (20, 'Pediatría');

-- MEDICO
INSERT INTO Medico VALUES 
(1, 'Pablo', 'Perez'), (2, 'Jorge', 'Velazco'), (3, 'Mario', 'Ramirez'), (4, 'Nicolás', 'Gutierrez'), (5, 'Víctor', 'Canosa'),
(6, 'Ana', 'Rivas'), (7, 'Laura', 'Paredes'), (8, 'Luis', 'Salinas'), (9, 'Sofía', 'Leiva'), (10, 'Martín', 'Quiroga'),
(11, 'Fernando', 'Mora'), (12, 'Patricia', 'López'), (13, 'Esteban', 'Cruz'), (14, 'Lucía', 'Benítez'), (15, 'Hugo', 'Santos'),
(16, 'Andrea', 'Romero'), (17, 'Emilia', 'Oliva'), (18, 'Daniel', 'Ibarra'), (19, 'Iván', 'Acosta'), (20, 'Julieta', 'Funes');

-- ESPECIALIDAD
INSERT INTO Especialidad VALUES 
(1, 'Clínica Médica'), (2, 'Pediatría'), (3, 'Cardiología'), (4, 'Neurología'), (5, 'Dermatología'),
(6, 'Traumatología'), (7, 'Ginecología'), (8, 'Urología'), (9, 'Psiquiatría'), (10, 'Oftalmología'),
(11, 'Otorrinolaringología'), (12, 'Nutrición'), (13, 'Oncología'), (14, 'Endocrinología'),
(15, 'Reumatología'), (16, 'Alergología'), (17, 'Nefrología'), (18, 'Neumonología'), (19, 'Infectología'), (20, 'Cirugía');

-- TURNO ESTADO
INSERT INTO TurnoEstado VALUES 
(1, 'Programado'), (2, 'Cancelado'), (3, 'Asistido'), (4, 'Ausente'), (5, 'Reprogramado'),
(6, 'Confirmado'), (7, 'Pendiente'), (8, 'Realizado'), (9, 'En espera'), (10, 'Demorado'),
(11, 'Finalizado'), (12, 'Derivado'), (13, 'En curso'), (14, 'No confirmado'), (15, 'Suspendido'),
(16, 'Reservado'), (17, 'Rechazado'), (18, 'Autorizado'), (19, 'Cobrado'), (20, 'Facturado');

-- HISTORIA
INSERT INTO Historia VALUES
(1, '2024-02-02', 'Observación historia 1'),
(2, '2024-03-03', 'Observación historia 2'),
(3, '2024-04-04', 'Observación historia 3'),
(4, '2024-05-05', 'Observación historia 4'),
(5, '2024-06-06', 'Observación historia 5'),
(6, '2024-07-07', 'Observación historia 6'),
(7, '2024-08-08', 'Observación historia 7'),
(8, '2024-09-09', 'Observación historia 8'),
(9, '2024-10-10', 'Observación historia 9'),
(10, '2024-11-11', 'Observación historia 10'),
(11, '2024-12-12', 'Observación historia 11'),
(12, '2024-01-13', 'Observación historia 12'),
(13, '2024-02-14', 'Observación historia 13'),
(14, '2024-03-15', 'Observación historia 14'),
(15, '2024-04-16', 'Observación historia 15'),
(16, '2024-05-17', 'Observación historia 16'),
(17, '2024-06-18', 'Observación historia 17'),
(18, '2024-07-19', 'Observación historia 18'),
(19, '2024-08-20', 'Observación historia 19'),
(20, '2024-09-21', 'Observación historia 20');


-- PACIENTE
INSERT INTO Paciente VALUES 
(1, 'Nombre1', 'Apellido1', '1991-02-15', '30111001', 'ARG', '1100000001', 'nombre1@mail.com', NULL),
(2, 'Nombre2', 'Apellido2', '1992-03-15', '30111002', 'ARG', '1100000002', 'nombre2@mail.com', NULL),
(3, 'Nombre3', 'Apellido3', '1993-04-15', '30111003', 'ARG', '1100000003', 'nombre3@mail.com', NULL),
(4, 'Nombre4', 'Apellido4', '1994-05-15', '30111004', 'ARG', '1100000004', 'nombre4@mail.com', NULL),
(5, 'Nombre5', 'Apellido5', '1995-06-15', '30111005', 'ARG', '1100000005', 'nombre5@mail.com', NULL),
(6, 'Nombre6', 'Apellido6', '1996-07-15', '30111006', 'ARG', '1100000006', 'nombre6@mail.com', NULL),
(7, 'Nombre7', 'Apellido7', '1997-08-15', '30111007', 'ARG', '1100000007', 'nombre7@mail.com', NULL),
(8, 'Nombre8', 'Apellido8', '1998-09-15', '30111008', 'ARG', '1100000008', 'nombre8@mail.com', NULL),
(9, 'Nombre9', 'Apellido9', '1999-01-15', '30111009', 'ARG', '1100000009', 'nombre9@mail.com', NULL),
(10, 'Nombre10', 'Apellido10', '1990-02-15', '30111010', 'ARG', '1100000010', 'nombre10@mail.com', NULL),
(11, 'Nombre11', 'Apellido11', '1991-03-15', '30111011', 'ARG', '1100000011', 'nombre11@mail.com', NULL),
(12, 'Nombre12', 'Apellido12', '1992-04-15', '30111012', 'ARG', '1100000012', 'nombre12@mail.com', NULL),
(13, 'Nombre13', 'Apellido13', '1993-05-15', '30111013', 'ARG', '1100000013', 'nombre13@mail.com', NULL),
(14, 'Nombre14', 'Apellido14', '1994-06-15', '30111014', 'ARG', '1100000014', 'nombre14@mail.com', NULL),
(15, 'Nombre15', 'Apellido15', '1995-07-15', '30111015', 'ARG', '1100000015', 'nombre15@mail.com', NULL),
(16, 'Nombre16', 'Apellido16', '1996-08-15', '30111016', 'ARG', '1100000016', 'nombre16@mail.com', NULL),
(17, 'Nombre17', 'Apellido17', '1997-09-15', '30111017', 'ARG', '1100000017', 'nombre17@mail.com', NULL),
(18, 'Nombre18', 'Apellido18', '1998-01-15', '30111018', 'ARG', '1100000018', 'nombre18@mail.com', NULL),
(19, 'Nombre19', 'Apellido19', '1999-02-15', '30111019', 'ARG', '1100000019', 'nombre19@mail.com', NULL),
(20, 'Nombre20', 'Apellido20', '1990-03-15', '30111020', 'ARG', '1100000020', 'nombre20@mail.com', NULL);

-- HISTORIA PACIENTE
INSERT INTO HistoriaPaciente VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- MEDICO ESPECIALIDAD
INSERT INTO MedicoEspecialidad VALUES 
(1, 1, 'Tipo 2'),
(2, 2, 'Tipo 3'),
(3, 3, 'Tipo 1'),
(4, 4, 'Tipo 2'),
(5, 5, 'Tipo 3'),
(6, 6, 'Tipo 1'),
(7, 7, 'Tipo 2'),
(8, 8, 'Tipo 3'),
(9, 9, 'Tipo 1'),
(10, 10, 'Tipo 2'),
(11, 11, 'Tipo 3'),
(12, 12, 'Tipo 1'),
(13, 13, 'Tipo 2'),
(14, 14, 'Tipo 3'),
(15, 15, 'Tipo 1'),
(16, 16, 'Tipo 2'),
(17, 17, 'Tipo 3'),
(18, 18, 'Tipo 1'),
(19, 19, 'Tipo 2'),
(20, 20, 'Tipo 3');

-- TURNO
INSERT INTO Turno VALUES 
(1, '2024-02-02 10:00:00', 1, 'Turno 1'),
(2, '2024-03-03 10:00:00', 2, 'Turno 2'),
(3, '2024-04-04 10:00:00', 3, 'Turno 3'),
(4, '2024-05-05 10:00:00', 4, 'Turno 4'),
(5, '2024-06-06 10:00:00', 5, 'Turno 5'),
(6, '2024-07-07 10:00:00', 6, 'Turno 6'),
(7, '2024-08-08 10:00:00', 7, 'Turno 7'),
(8, '2024-09-09 10:00:00', 8, 'Turno 8'),
(9, '2024-10-10 10:00:00', 9, 'Turno 9'),
(10, '2024-11-11 10:00:00', 10, 'Turno 10'),
(11, '2024-12-12 10:00:00', 11, 'Turno 11'),
(12, '2024-01-13 10:00:00', 12, 'Turno 12'),
(13, '2024-02-14 10:00:00', 13, 'Turno 13'),
(14, '2024-03-15 10:00:00', 14, 'Turno 14'),
(15, '2024-04-16 10:00:00', 15, 'Turno 15'),
(16, '2024-05-17 10:00:00', 16, 'Turno 16'),
(17, '2024-06-18 10:00:00', 17, 'Turno 17'),
(18, '2024-07-19 10:00:00', 18, 'Turno 18'),
(19, '2024-08-20 10:00:00', 19, 'Turno 19'),
(20, '2024-09-21 10:00:00', 20, 'Turno 20');

-- PAGO
INSERT INTO Pago VALUES 
(1, 1, '2024-02-02', 1050, 1, 'Pago 1'),
(2, 2, '2024-03-03', 1100, 0, 'Pago 2'),
(3, 3, '2024-04-04', 1150, 1, 'Pago 3'),
(4, 4, '2024-05-05', 1200, 0, 'Pago 4'),
(5, 5, '2024-06-06', 1250, 1, 'Pago 5'),
(6, 6, '2024-07-07', 1300, 0, 'Pago 6'),
(7, 7, '2024-08-08', 1350, 1, 'Pago 7'),
(8, 8, '2024-09-09', 1400, 0, 'Pago 8'),
(9, 9, '2024-10-10', 1450, 1, 'Pago 9'),
(10, 10, '2024-11-11', 1500, 0, 'Pago 10'),
(11, 11, '2024-12-12', 1550, 1, 'Pago 11'),
(12, 12, '2024-01-13', 1600, 0, 'Pago 12'),
(13, 13, '2024-02-14', 1650, 1, 'Pago 13'),
(14, 14, '2024-03-15', 1700, 0, 'Pago 14'),
(15, 15, '2024-04-16', 1750, 1, 'Pago 15'),
(16, 16, '2024-05-17', 1800, 0, 'Pago 16'),
(17, 17, '2024-06-18', 1850, 1, 'Pago 17'),
(18, 18, '2024-07-19', 1900, 0, 'Pago 18'),
(19, 19, '2024-08-20', 1950, 1, 'Pago 19'),
(20, 20, '2024-09-21', 2000, 0, 'Pago 20');

-- PAGO PACIENTE
INSERT INTO PagoPaciente VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- TURNO PACIENTE
INSERT INTO TurnoPaciente VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

CREATE DATABASE Hospital;
GO

USE Hospital;
GO

CREATE TABLE Pais (
	idPais CHAR(3) PRIMARY KEY,
	Pais NVARCHAR(50)
);

CREATE TABLE Concepto (
	idConcepto INT PRIMARY KEY,
	Descripcion NVARCHAR(50)
);

CREATE TABLE Medico (
	idMedico INT PRIMARY KEY,
	Nombre NVARCHAR(50),
	Apellido NVARCHAR(50)
);

CREATE TABLE Especialidad (
	idEspecialidad INT PRIMARY KEY,
	Especialidad NVARCHAR(50)
);

CREATE TABLE TurnoEstado (
	idEstado INT PRIMARY KEY,
	Descripcion NVARCHAR (50)
);

CREATE TABLE Historia (
	idHistoria INT PRIMARY KEY,
	fechaHistoria DATETIME,
	Observacion NVARCHAR(50)
);

CREATE TABLE Paciente (
    idPaciente INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    fNacimiento DATE,
    DNI VARCHAR(10),
	idPais CHAR(3),
	FOREIGN KEY (idPais) REFERENCES Pais(idPais),
	Telefono  VARCHAR(20),
	Email NVARCHAR(50),
	Observacion NVARCHAR(100) 
);

CREATE TABLE HistoriaPaciente (
	idHistoria INT,
	idPaciente INT,
	idMedico INT,
	FOREIGN KEY (idHistoria) REFERENCES Historia (idHistoria),
	FOREIGN KEY (idPaciente) REFERENCES Paciente (idPaciente),
	FOREIGN KEY (idMedico) REFERENCES Medico (idMedico)
);

CREATE TABLE MedicoEspecialidad (
	idMedico INT,
	idEspecialidad INT,
	FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
	FOREIGN KEY (idEspecialidad) REFERENCES Especialidad (idEspecialidad),
	Descripcion NVARCHAR(50)
);

CREATE TABLE Turno (
	idTurno INT PRIMARY KEY,
	FechaTurno DATETIME,
	idEstado INT,
	FOREIGN KEY (idEstado) REFERENCES TurnoEstado (idEstado),
	Observacion NVARCHAR(50)
);

CREATE TABLE Pago (
	idPago INT PRIMARY KEY,
	idConcepto INT,
	FOREIGN KEY (idConcepto) REFERENCES	Concepto (idConcepto),
	Fecha DATETIME,
	Monto MONEY,
	Estado INT,
	Observacion NVARCHAR(50)
);

CREATE TABLE PagoPaciente (
	idPago INT,
	idPaciente INT,
	idTurno INT,	
	FOREIGN KEY (idPago) REFERENCES	Pago (idPago),
	FOREIGN KEY (idPaciente) REFERENCES	Paciente (idPaciente),
	FOREIGN KEY (idTurno) REFERENCES Turno (idTurno),
);

CREATE TABLE TurnoPaciente (
	idTurno INT,
	idPaciente INT,
	idMedico INT,
	FOREIGN KEY (idTurno) REFERENCES Turno (idTurno),
	FOREIGN KEY (idPaciente) REFERENCES	Paciente (idPaciente),
	FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
);
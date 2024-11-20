CREATE DATABASE GestionTuristica;
go
CREATE TABLE Bus(idBus INTEGER PRIMARY KEY IDENTITY,
				marca VARCHAR(15),
				capacidadAsientos VARCHAR(10),
				tipo VARCHAR(10),
				CONSTRAINT minMaxAsientos CHECK (capacidadAsientos <= 40 AND capacidadAsientos >= 10)
)
CREATE TABLE Asiento(idBus INTEGER ,
				idAsiento VARCHAR(3) PRIMARY KEY,
				CONSTRAINT FK_idBus FOREIGN KEY (idBus) REFERENCES Bus(idBus)
)
CREATE TABLE Departamento(idDepartamento INTEGER PRIMARY KEY IDENTITY ,
				nombreDepartamento VARCHAR(15),
)

CREATE TABLE Terminal(idTerminal INTEGER PRIMARY KEY IDENTITY ,
				nombreTerminal VARCHAR(15),
				terminalOrigen VARCHAR(15),
				terminalDestino VARCHAR(15),
				idDepartamento INTEGER,
				CONSTRAINT FK_idDepartamento FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento),
				CONSTRAINT FK_terminalesDistintas CHECK (terminalOrigen <> terminalDestino) 
)
CREATE TABLE DestinoTuristico(identificadorDestino INTEGER PRIMARY KEY IDENTITY ,
				fechaHoraSalida DATE,
				duracionAproximada NUMERIC(3),
				informacionGeneral VARCHAR(50),
				importeDeViaje NUMERIC(4),
				idBus INTEGER,
				idTerminal INTEGER,
				CONSTRAINT FK_idBusDestinoTuristico FOREIGN KEY (idBus) REFERENCES Bus(idBus),
				CONSTRAINT FK_idTerminal FOREIGN KEY (idTerminal) REFERENCES Terminal(idTerminal)
)
CREATE TABLE Turista(idPasajero INTEGER PRIMARY KEY IDENTITY ,
				primerNombre VARCHAR(10),
				primerApellido VARCHAR(10),
				segundoApellido VARCHAR(10),
				nroDocumento NUMERIC(15),
				fechaNacimiento DATE,
				nombreUsuario VARCHAR(15),
				email VARCHAR(20) UNIQUE,
				pass VARCHAR(15),
				esMercosur BIT,
				CONSTRAINT TuristaPass CHECK (LEN(pass) >= 8),
)
CREATE TABLE Turista_TelefonosContacto(idPasajero INTEGER,
				telefonosContacto NUMERIC(15) PRIMARY KEY,
				CONSTRAINT FK_TuristaTelefonosContacto FOREIGN KEY (idPasajero) REFERENCES Turista(idPasajero),
)
CREATE TABLE Funcionario(idFuncionario INTEGER PRIMARY KEY IDENTITY,
)
CREATE TABLE UsuarioNoRegistrado(nroDocumento NUMERIC(15) PRIMARY KEY ,
				idFuncionario INTEGER,
				CONSTRAINT FK_FuncionarioUsuarioNoRegistrado FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
)
CREATE TABLE Acompaniante(idPasajero INTEGER PRIMARY KEY,
				idFuncionario INTEGER,
				CONSTRAINT FK_FuncionarioAcompaniante FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario),
				CONSTRAINT FK_TuristaAcompaniante FOREIGN KEY (idPasajero) REFERENCES Turista(idPasajero),

)
CREATE TABLE Pasaje(idPasaje INTEGER PRIMARY KEY IDENTITY ,
				fueUtilizado BIT,
				fechaCompra DATE,
				identificadorDestino INTEGER,
				idFuncionario INTEGER,
				idPasajero INTEGER,
				CONSTRAINT FK_FuncionarioPasaje FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario),
				CONSTRAINT FK_DestinoTuristicoPasaje FOREIGN KEY (identificadorDestino) REFERENCES DestinoTuristico(identificadorDestino),
				CONSTRAINT FK_TuristaPasaje FOREIGN KEY (idPasajero) REFERENCES Turista(idPasajero)
)

ALTER TABLE DestinoTuristico ALTER COLUMN fechaHoraSalida DATETIME;
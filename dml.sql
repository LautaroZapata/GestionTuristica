use GestionTuristica2
go
SET DATEFORMAT mdy;
-- INSERT BUSES
INSERT INTO Bus (marca, capacidadAsientos, tipo) VALUES 
('Mercedes', '40', 'Turismo'),
('Volvo', '36', 'Turismo'),
('Hyundai', '20', 'Mini');

INSERT INTO Bus (marca, capacidadAsientos, tipo) VALUES 
('Scania', '30', 'Turismo'),
('MAN', '25', 'Mini'),
('Iveco', '38', 'Turismo'),
('Mercedes', '12', 'Mini'),
('Volvo', '15', 'Mini'),
('Scania', '35', 'Turismo'),
('MAN', '28', 'Mini');
-- INSERT BUSES TERMINADOS


-- INSERT ASIENTOS 
--BUS MERCEDES 1
INSERT INTO Asiento (idBus, fila) VALUES
(1,'A'), (1,'A'), (1,'A'), (1,'A'), (1,'A'), (1,'A'), (1,'A'), (1,'A'), (1,'A'), (1,'A'),
(1,'B'), (1,'B'), (1,'B'), (1, 'B'), (1, 'B'), (1, 'B'), (1, 'B'), (1, 'B'), (1, 'B'), (1, 'B'),
(1,  'C'), (1, 'C'), (1,  'C'), (1, 'C'), (1, 'C'), (1,  'C'), (1, 'C'), (1,  'C'), (1,  'C'), (1,  'C'),
(1,  'D'), (1, 'D'), (1,  'D'), (1,  'D'), (1,  'D'), (1,  'D'), (1,  'D'), (1,  'D'), (1, 'D'), (1,  'D');

-- BUS VOLVO 2
INSERT INTO Asiento (idBus, fila) VALUES
(2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'), (2, 'A'),
(2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'),
(2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'), (2, 'C'),
(2, 'D'), (2, 'D'), (2, 'D'), (2, 'D'), (2, 'D'), (2, 'D');

-- BUS HYUNDAI
INSERT INTO Asiento (idBus, fila) VALUES
(3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'), (3, 'A'),
(3, 'B'), (3, 'B'), (3, 'B'), (3, 'B'), (3, 'B'), (3, 'B'), (3, 'B'), (3, 'B'), (3, 'B'), (3, 'B');

-- BUS SCANIA
INSERT INTO Asiento (idBus, fila) VALUES
(4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'A'),
(4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'), (4, 'B'),
(4, 'C'), (4, 'C'), (4, 'C'), (4, 'C'), (4, 'C'), (4, 'C'), (4, 'C'), (4, 'C'), (4, 'C'), (4, 'C');



-- BUS MAN
INSERT INTO Asiento (idBus, fila) VALUES
(5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'A'),
(5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'), (5, 'B'),
(5, 'C'), (5, 'C'), (5, 'C'), (5, 'C'), (5, 'C');

-- BUS IVECO
INSERT INTO Asiento (idBus, fila) VALUES
(6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'), (6, 'A'),
(6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'), (6, 'B'),
(6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'), (6, 'C'),
(6, 'D'), (6, 'D'), (6, 'D'), (6, 'D'), (6, 'D'), (6, 'D'), (6, 'D'), (6, 'D');

-- INSERT DEPARTAMENTO
INSERT INTO Departamento (nombreDepartamento) VALUES
('Montevideo'),
('Canelones'),
('San José'),
('Colonia'),
('Maldonado');
-- INSERT TERMINAL
INSERT INTO Terminal (nombreTerminal, terminalOrigen, terminalDestino, idDepartamento) VALUES
('Terminal 1', 'Montevideo', 'Canelones', 1),
('Terminal 2', 'Canelones', 'Montevideo', 2),
('Terminal 3', 'San José', 'Colonia', 3),
('Terminal 4', 'Colonia', 'Maldonado', 4),
('Terminal 5', 'Maldonado', 'Salto', 5);


-- INSERT DESTINO TURISTICO
INSERT INTO DestinoTuristico (fechaHoraSalida, duracionAproximada, informacionGeneral, importeDeViaje, idBus, idTerminal) VALUES
('2024-12-15 08:00:00', 3, 'Viaje a Canelones', 100, 1, 1),
('2024-12-16 09:00:00', 2, 'Viaje a Colonia', 120, 2, 3),
('2024-12-17 10:00:00', 5, 'Viaje a Maldonado', 150, 3, 4),
('2024-12-18 07:30:00', 4, 'Viaje a Montevideo', 130, 4, 2),
('2024-12-19 11:00:00', 6, 'Viaje a Salto', 140, 5, 5);



-- INSERT FUNCIONARIOS
-- INSERT CON CHAT GPT PARA EL ID DE FUNCIONARIOS

-- Habilitar la inserción manual en la columna autoincremental
SET IDENTITY_INSERT Funcionario ON;

INSERT INTO Funcionario (idFuncionario) VALUES
(1),
(2),
(3),
(4),
(5);

-- Desactivar la inserción manual
SET IDENTITY_INSERT Funcionario OFF;

-- INSERT TURISTAS


INSERT INTO Turista (primerNombre, primerApellido, segundoApellido, nroDocumento, fechaNacimiento, nombreUsuario, email, pass, esMercosur) VALUES
('Juan', 'Pérez', 'Gómez', 123456789, '01/01/1990', 'juanperez', 'soyturista@gmail.com', 'password123', 1),
('María', 'López', 'González', 987654321, '05/23/1985', 'marialopez', 'maria@example.com', 'password456', 0),
('Carlos', 'Martínez', 'Sánchez', 112233445, '02/14/1992', 'carlosm', 'carlos@example.com', 'password789', 1),
('Ana', 'Rodríguez', 'Fernández', 223344556, '08/30/1988', 'anarodriguez', 'ana@example.com', 'password012', 1),
('Luis', 'García', 'Pérez', 334455667, '03/12/1995', 'luisgarcia', 'luis@example.com', 'password345', 0);

-- INSERT TELEFONOS

INSERT INTO Turista_TelefonosContacto (idPasajero, telefonosContacto) VALUES
(1, 1234567890), -- Juan Pérez
(2, 2345678901), -- María López
(3, 3456789012), -- Carlos Martínez
(4, 4567890123), -- Ana Rodríguez
(5, 5678901234); -- Luis García

-- INSERT PASAJE

INSERT INTO Pasaje (fueUtilizado, fechaCompra, identificadorDestino, idFuncionario, idPasajero, idAsiento) VALUES
(1, '10/12/2024', 1, 1, 1, 1),   -- Pasaje 1
(0, '10/12/2024', 2, 2, 2, 5),   -- Pasaje 2
(1, '10/12/2024', 3, 3, 3, 10),  -- Pasaje 3
(1, '10/13/2024', 4, 4, 4, 15),  -- Pasaje 4
(0, '10/13/2024', 5, 5, 5, 20),  -- Pasaje 5
(1, '10/13/2024', 1, 1, 1, 5),   -- Pasaje 6 (Pasajero 1 repite)
(0, '10/14/2024', 2, 2, 2, 10),  -- Pasaje 7
(1, '10/14/2024', 3, 3, 1, 15),  -- Pasaje 8 (Pasajero 1 repite)
(0, '10/14/2024', 4, 4, 3, 20),  -- Pasaje 9
(1, '10/14/2024', 5, 5, 4, 1),   -- Pasaje 10
(0, '09/15/2017', 1, 1, 1, 10),  -- Pasaje 11 (Pasajero 1 repite)
(1, '10/15/2024', 2, 2, 2, 15),  -- Pasaje 12
(0, '10/15/2024', 3, 3, 5, 20),  -- Pasaje 13
(1, '09/15/2017', 4, 4, 1, 1),   -- Pasaje 14 (Pasajero 1 repite)
(0, '10/15/2024', 5, 5, 2, 5),   -- Pasaje 15
(1, '10/28/2024', 1, 1, 1, 5),   -- Pasaje 16 (Pasajero 1 repite)
(1, '09/29/2017', 1, 2, 2, 3);	 -- Pasaje 17

-- INSERT CON CHAT GPT PARA EL ID VIAJE 255

-- Habilitar la inserción manual en la columna autoincremental
SET IDENTITY_INSERT Pasaje ON;

-- Insertar un nuevo pasaje con el idPasaje = 255
INSERT INTO Pasaje (idPasaje, fueUtilizado, fechaCompra, identificadorDestino, idFuncionario, idPasajero,idAsiento) 
VALUES (255,0, '10/15/2024', 5, 5, 2, 5);

-- Desactivar la inserción manual
SET IDENTITY_INSERT Pasaje OFF;




-- INSERT USER NO REGISTRADO


INSERT INTO UsuarioNoRegistrado (nroDocumento, idFuncionario) VALUES
(123456789, 1),
(987654321, 2),
(112233445, 3),
(223344556, 4),
(334455667, 5);


-- INSERT ACOMPANIANTE

INSERT INTO Acompaniante (idPasajero, idFuncionario) VALUES
(1, 2),
(2, 3),
(3, 1),
(4, 5),
(5, 4);


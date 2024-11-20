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

-- INSERT ASIENTOS BUS 1(MERCEDES)
INSERT INTO Asiento (idBus, idAsiento) VALUES 
(1, 'A1'), (1, 'A2'), (1, 'A3'), (1, 'A4'), (1, 'A5'), (1, 'A6'), (1, 'A7'), (1, 'A8'),
(1, 'A9'), (1, 'A10'), (1, 'A11'), (1, 'A12'), (1, 'A13'), (1, 'A14'), (1, 'A15'), (1, 'A16'),
(1, 'A17'), (1, 'A18'), (1, 'A19'), (1, 'A20'), (1, 'A21'), (1, 'A22'), (1, 'A23'), (1, 'A24'),
(1, 'A25'), (1, 'A26'), (1, 'A27'), (1, 'A28'), (1, 'A29'), (1, 'A30'), (1, 'A31'), (1, 'A32'),
(1, 'A33'), (1, 'A34'), (1, 'A35'), (1, 'A36'), (1, 'A37'), (1, 'A38'), (1, 'A39'), (1, 'A40');

-- INSERT ASIENTOS BUS2 VOLVO
INSERT INTO Asiento (idBus, idAsiento) VALUES
(2, 'B1'), (2, 'B2'), (2, 'B3'), (2, 'B4'), (2, 'B5'), (2, 'B6'), (2, 'B7'), (2, 'B8'), (2, 'B9'), (2, 'B10'),
(2, 'B11'), (2, 'B12'), (2, 'B13'), (2, 'B14'), (2, 'B15'), (2, 'B16'), (2, 'B17'), (2, 'B18'), (2, 'B19'), (2, 'B20'),
(2, 'B21'), (2, 'B22'), (2, 'B23'), (2, 'B24'), (2, 'B25'), (2, 'B26'), (2, 'B27'), (2, 'B28'), (2, 'B29'), (2, 'B30'),
(2, 'B31'), (2, 'B32'), (2, 'B33'), (2, 'B34'), (2, 'B35'), (2, 'B36');

-- INSERT ASIENTOS BUS3 HYUNDAI
INSERT INTO Asiento (idBus, idAsiento) VALUES
(3, 'C1'), (3, 'C2'), (3, 'C3'), (3, 'C4'), (3, 'C5'), (3, 'C6'), (3, 'C7'), (3, 'C8'), (3, 'C9'), (3, 'C10'),
(3, 'C11'), (3, 'C12'), (3, 'C13'), (3, 'C14'), (3, 'C15'), (3, 'C16'), (3, 'C17'), (3, 'C18'), (3, 'C19'), (3, 'C20');


-- INSERT ASIENTOS BUS4 SCANIA
INSERT INTO Asiento (idBus, idAsiento) VALUES
(4, 'D1'), (4, 'D2'), (4, 'D3'), (4, 'D4'), (4, 'D5'), (4, 'D6'), (4, 'D7'), (4, 'D8'), (4, 'D9'), (4, 'D10'),
(4, 'D11'), (4, 'D12'), (4, 'D13'), (4, 'D14'), (4, 'D15'), (4, 'D16'), (4, 'D17'), (4, 'D18'), (4, 'D19'), (4, 'D20'),
(4, 'D21'), (4, 'D22'), (4, 'D23'), (4, 'D24'), (4, 'D25'), (4, 'D26'), (4, 'D27'), (4, 'D28'), (4, 'D29'), (4, 'D30');

-- Bus 5: MAN (25 asientos)
INSERT INTO Asiento (idBus, idAsiento) VALUES
(5, 'E1'), (5, 'E2'), (5, 'E3'), (5, 'E4'), (5, 'E5'), (5, 'E6'), (5, 'E7'), (5, 'E8'), (5, 'E9'), (5, 'E10'),
(5, 'E11'), (5, 'E12'), (5, 'E13'), (5, 'E14'), (5, 'E15'), (5, 'E16'), (5, 'E17'), (5, 'E18'), (5, 'E19'), (5, 'E20'),
(5, 'E21'), (5, 'E22'), (5, 'E23'), (5, 'E24'), (5, 'E25');

-- Bus 6: Iveco (38 asientos)
INSERT INTO Asiento (idBus, idAsiento) VALUES
(6, 'F1'), (6, 'F2'), (6, 'F3'), (6, 'F4'), (6, 'F5'), (6, 'F6'), (6, 'F7'), (6, 'F8'), (6, 'F9'), (6, 'F10'),
(6, 'F11'), (6, 'F12'), (6, 'F13'), (6, 'F14'), (6, 'F15'), (6, 'F16'), (6, 'F17'), (6, 'F18'), (6, 'F19'), (6, 'F20'),
(6, 'F21'), (6, 'F22'), (6, 'F23'), (6, 'F24'), (6, 'F25'), (6, 'F26'), (6, 'F27'), (6, 'F28'), (6, 'F29'), (6, 'F30'),
(6, 'F31'), (6, 'F32'), (6, 'F33'), (6, 'F34'), (6, 'F35'), (6, 'F36'), (6, 'F37'), (6, 'F38');

-- Bus 7: Mercedes (12 asientos)
INSERT INTO Asiento (idBus, idAsiento) VALUES
(7, 'G1'), (7, 'G2'), (7, 'G3'), (7, 'G4'), (7, 'G5'), (7, 'G6'), (7, 'G7'), (7, 'G8'), (7, 'G9'), (7, 'G10'),
(7, 'G11'), (7, 'G12');

-- Bus 8: Volvo (15 asientos)
INSERT INTO Asiento (idBus, idAsiento) VALUES
(8, 'H1'), (8, 'H2'), (8, 'H3'), (8, 'H4'), (8, 'H5'), (8, 'H6'), (8, 'H7'), (8, 'H8'), (8, 'H9'), (8, 'H10'),
(8, 'H11'), (8, 'H12'), (8, 'H13'), (8, 'H14'), (8, 'H15');

-- Bus 9: Scania (35 asientos)
INSERT INTO Asiento (idBus, idAsiento) VALUES
(9, 'I1'), (9, 'I2'), (9, 'I3'), (9, 'I4'), (9, 'I5'), (9, 'I6'), (9, 'I7'), (9, 'I8'), (9, 'I9'), (9, 'I10'),
(9, 'I11'), (9, 'I12'), (9, 'I13'), (9, 'I14'), (9, 'I15'), (9, 'I16'), (9, 'I17'), (9, 'I18'), (9, 'I19'), (9, 'I20'),
(9, 'I21'), (9, 'I22'), (9, 'I23'), (9, 'I24'), (9, 'I25'), (9, 'I26'), (9, 'I27'), (9, 'I28'), (9, 'I29'), (9, 'I30'),
(9, 'I31'), (9, 'I32'), (9, 'I33'), (9, 'I34'), (9, 'I35');

-- INSERT ASIENTOS TERMINADOS

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
('Terminal 5', 'Maldonado', 'Montevideo', 5);
-- INSERT DESTINO TURISTICO
INSERT INTO DestinoTuristico (fechaHoraSalida, duracionAproximada, informacionGeneral, importeDeViaje, idBus, idTerminal) VALUES
('2024-12-15 08:00:00', 3, 'Viaje a Canelones', 100, 1, 1),
('2024-12-16 09:00:00', 2, 'Viaje a Colonia', 120, 2, 3),
('2024-12-17 10:00:00', 5, 'Viaje a Maldonado', 150, 3, 4),
('2024-12-18 07:30:00', 4, 'Viaje a Montevideo', 130, 4, 2),
('2024-12-19 11:00:00', 6, 'Viaje a Maldonado', 140, 5, 4);

-- INSERT FUNCIONARIOS

INSERT INTO Funcionario (idFuncionario) VALUES
(1),
(2),
(3),
(4),
(5);

-- INSERT TURISTAS


INSERT INTO Turista (primerNombre, primerApellido, segundoApellido, nroDocumento, fechaNacimiento, nombreUsuario, email, pass, esMercosur) VALUES
('Juan', 'Pérez', 'Gómez', 123456789, '01/01/1990', 'juanperez', 'juan@example.com', 'password123', 1),
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

INSERT INTO Pasaje (fueUtilizado, fechaCompra, identificadorDestino, idFuncionario, idPasajero) VALUES
(1, '12/10/2024', 1, 1, 1),
(0, '12/11/2024', 2, 2, 2),
(1, '12/12/2024', 3, 3, 3),
(1, '12/13/2024', 4, 4, 4),
(0, '12/14/2024', 5, 5, 5);


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

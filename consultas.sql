use GestionTuristica
-- CONSULTA 1 Listar el o los nombres de los pasajeros con la mayor cantidad de pasajes comprados a su nombre.
SELECT t.primerNombre, COUNT(p.idPasaje) AS cantidadPasajes
FROM Turista t
JOIN Pasaje p ON t.idPasajero = p.idPasajero
GROUP BY t.idPasajero, t.primerNombre

-- CONSULTA 2 Listar todos los datos de los buses con más de 35 asientos que no tengan asignado ningún destino que parta el día de mañana
SELECT *
FROM Bus b
JOIN DestinoTuristico d ON b.idBus = d.idBus
WHERE b.capacidadAsientos > 35 AND d.fechaHoraSalida > DATEADD(DAY, 1, GETDATE()) --Se le agrega un DIA a la FECHA ACTUAL

-- CONSULTA 3 Listar todos los datos de los pasajeros para los cuales haya registrados en el sistema más de 5 pasajes comprados.

SELECT t.idPasajero, t.email, t.esMercosur,t.fechaNacimiento, t.nroDocumento, t.nombreUsuario, t.pass, t.primerApellido, t.segundoApellido, t.primerNombre, tc.telefonosContacto , COUNT(p.idPasaje) AS cantidadPasajes
FROM Turista t
JOIN Pasaje p ON t.idPasajero = p.idPasajero
JOIN Turista_TelefonosContacto tc ON t.idPasajero = tc.idPasajero
GROUP BY t.idPasajero, t.email, t.esMercosur,t.fechaNacimiento, t.nroDocumento, t.nombreUsuario, t.pass, t.primerApellido, t.segundoApellido, t.primerNombre, tc.telefonosContacto
HAVING COUNT(p.idPasaje) >= 5

-- CONSULTA 4 Listar idpasajero, nombre, apellidos y asiento (idasiento y fila) que correspondan a pasajes comprados para el destino cuyo idviaje es 255.

SELECT t.idPasajero,t.primerApellido, t.segundoApellido, t.primerNombre, a.idAsiento, a.fila
FROM Pasaje p
JOIN Turista t ON p.idPasajero = t.idPasajero
JOIN Asiento a ON p.idAsiento = a.idAsiento
WHERE p.idPasaje = 255



/* CONSULTA 5 Listar todos los idviaje y cantidad de pasajes comprados durante el mes de Setiembre de este año
para c/u de los destinos del pasajero cuyo correo es soyturista@gmail.com comprados en Setiembre del 2017. 
La lista debe estar ordenada por idviaje ascendente.*/

SELECT p.idPasaje, COUNT(p.idPasaje) AS cantidadPasajes, t.email, p.fechaCompra
FROM Pasaje p
JOIN Turista t ON p.idPasajero = t.idPasajero
GROUP BY p.idPasaje, t.email, p.fechaCompra
HAVING p.fechaCompra  > '08/31/2017' AND p.fechaCompra <= '09/30/2017'	




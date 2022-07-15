USE performanceReview;

DELIMITER $$
CREATE PROCEDURE `nuevoRol` (IN nombreRol VARCHAR(150))
	BEGIN
		INSERT INTO Role (ProfileName) VALUES (nombreRol);
	END$$
    
#CALL nuevoRol('Prueba');
#SELECT * FROM Role;

DELIMITER $$
CREATE PROCEDURE `nuevoUser` (IN nombre VARCHAR(150), FechaDeNacimiento DATE)
	BEGIN
		INSERT INTO User (Name, FechaDeNacimiento) VALUES (nombre, FechaDeNacimiento);
	END$$
    
#CALL nuevoUser('Alan', '1999-08-13');
#SELECT * FROM User;

DELIMITER $$
CREATE PROCEDURE `asignaRol` (IN idUser INT, idRole INT)
	BEGIN
		INSERT INTO UserRole (idUser,IdRole) VALUES (idUser, idRole);
	END$$
    
#CALL asignaRol(7,1);
#SELECT * FROM UserRole;

DELIMITER $$
CREATE PROCEDURE `registrosUser` (IN idUser INT)
	BEGIN
		IF idUser IS NOT NULL THEN
			SELECT * FROM User WHERE Id=idUser;
        ELSE
			SELECT * FROM User;
        END IF;
	END$$
    
#CALL registrosUser(NULL);
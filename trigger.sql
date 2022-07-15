USE performanceReview;

DELIMITER $$
CREATE TRIGGER validaEdad
BEFORE INSERT
ON User FOR EACH ROW
BEGIN
DECLARE edad INT;
DECLARE fechaNacimiento DATE;
set fechaNacimiento=NEW.FechaDeNacimiento;
set edad=(SELECT TIMESTAMPDIFF(YEAR,fechaNacimiento,CURDATE()) AS edad);
IF edad>=18 AND edad <=120 THEN
SET NEW.Edad = edad;
ELSE
SET NEW.Edad = 0;
END IF;
END$$


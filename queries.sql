USE performanceReview;

SELECT* FROM User;
SELECT * FROM Role;

SELECT * from User U INNER JOIN UserRole UR ON U.ID=UR.IdUser;

SELECT * from User U LEFT JOIN UserRole UR ON U.ID=UR.IdUser WHERE UR.IdUser IS NULL;

SELECT SUM(EDAD) AS sumaEdad FROM User;

SELECT COUNT(Id) AS registros FROM User;
USE performanceReview;

CREATE VIEW vistaDatosUser AS
SELECT U.Id, U.Name, count(R.Id) as RolesAsignados,
TIMESTAMPDIFF(YEAR,U.FechaDeNacimiento,CURDATE()) AS Edad
FROM User U LEFT JOIN UserRole UR on U.Id=UR.IdUser LEFT JOIN Role R ON UR.IdRole=R.Id GROUP BY U.Id;

SELECT * FROM vistaDatosUser;
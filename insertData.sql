USE performanceReview;

INSERT INTO User (Name, FechaDeNacimiento, Edad) VALUES ('Daniel Sebastiao', '1984-07-15', 38);
INSERT INTO User (Name, FechaDeNacimiento, Edad) VALUES ('Edwin Julian', '1992-06-21', 30);
INSERT INTO User (Name, FechaDeNacimiento, Edad) VALUES ('Mariano Pacienza', '1972-05-07', 50);
INSERT INTO User (Name, FechaDeNacimiento, Edad) VALUES ('Saulo Villasenor', '1985-04-13', 37);
INSERT INTO User (Name, FechaDeNacimiento, Edad) VALUES ('Hector Cisnero', '1985-03-14', 37);
INSERT INTO User (Name, FechaDeNacimiento, Edad) VALUES ('Horeb Gastelum', '1992-02-03', 30);

SELECT * FROM User;

INSERT INTO Role (ProfileName) VALUES ('Admin');
INSERT INTO Role (ProfileName) VALUES ('RH');
INSERT INTO Role (ProfileName) VALUES ('Student');
INSERT INTO Role (ProfileName) VALUES ('Squad');

SELECT * FROM Role;

INSERT INTO UserRole (idUser,IdRole) VALUES (1,1);
INSERT INTO UserRole (idUser,IdRole) VALUES (2,1);
INSERT INTO UserRole (idUser,IdRole) VALUES (3,2);
INSERT INTO UserRole (idUser,IdRole) VALUES (5,4);
INSERT INTO UserRole (idUser,IdRole) VALUES (6,3);

SELECT * FROM UserRole;

UPDATE User SET Edad=38 WHERE Id=1;
UPDATE User SET Edad=30 WHERE Id=2;
UPDATE User SET Edad=50 WHERE Id=3;
UPDATE User SET Edad=37 WHERE Id=4;
UPDATE User SET Edad=37 WHERE Id=5;
UPDATE User SET Edad=30 WHERE Id=6;
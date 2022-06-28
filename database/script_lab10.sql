SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table viaje;
TRUNCATE table costosciudad; 
TRUNCATE table seguro; 
TRUNCATE table especialidad;
TRUNCATE table ciudad; 
TRUNCATE table usuario; 
SET FOREIGN_KEY_CHECKS = 1;

insert into seguro (seguro) values ("Rimac"),("Pacifico"),("La positiva"),
("Seguro internacional"),("Otro");

insert into ciudad (ciudad) values ("Lima"),("Arequipa"),("Trujillo"),("Cusco"),("Chimbote"),("Chiclayo"),
("Ica"),("Tacna"),("Piura"),("Cajamarca");

insert into especialidad (especialidad) values ("Ing. de Telecomunicaciones"),("Ing. Civil"),
("Ing. de Sistemas"),("Ing. de Minas"),("Ing. Ambiental"),("Ing. Electrónica"),
("Ing. Mecatrónica"),("Ing. Mecánica"),("Física");

insert into costosciudad (idciudad_origen,idciudad_destino,costo) values (1,2,99.90),(2,1,99.90),(3,4,70),
(4,3,70),(2,6,90),(6,2,90),(3,10,120),(10,3,120),(4,7,95),(7,4,95),(6,9,110),(9,6,110),(7,8,200),(8,7,200),
(10,4,160),(4,10,160),(6,1,89.90),(1,6,89.90),(5,9,114.90),(9,5,114.90);

insert into usuario (codigopucp,nombre,apellido,correopucp,idespecialidad,password) values
('20190923','Marcelo','Rojas','a20190923@pucp.edu.pe',1,sha2('Robloxfan1!',256)),
('20190506','Juan','Perez','a20190506@pucp.edu.pe',3,sha2('s0yb1caenIWEB95*',256)),
('20192561','Diana','Barboza','a20192561@pucp.edu.pe',1,sha2('LAB10_Dificil',256)),
('20183540','Maria','Mendoza','a20183540@pucp.edu.pe',1,sha2('MeGustaLaGelatina123*!',256)),
('20159912','Kevin','Chavez','a20159912@pucp.edu.pe',4,sha2('!h0laComoesTas',256)),
('20174812','Diego','Ludeña','a20174812@pucp.edu.pe',1,sha2('C1b3rs3gur!d4d',256)),
('20170476','Rommy','Torres','a20170476@pucp.edu.pe',1,sha2('pr0FesorlUch*',256));

insert into viaje (idviaje,usuario_codigopucp,fecha_reserva,fecha_viaje,cantidad_tickets,idcostosciudad,seguro_idseguro)
values ('83746912','20190923','2022-06-27','2022-07-03',1,7,2),
('28956289','20192561','2022-04-15','2022-04-20',3,16,4),('37450621','20192561','2022-05-01','2022-05-20',6,15,2),
('17329267','20183540','2022-01-06','2022-01-08',18,13,1),('89250164','20183540','2022-02-01','2022-02-15',19,13,3),
('82647012','20183540','2022-04-29','2022-05-03',17,18,5),('62819446','20183540','2022-06-25','2022-06-30',16,3,4);
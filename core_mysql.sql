 CREATE TABLE CATEGORIA 
   (	
    CATEGORIA_ID INT NOT NULL AUTO_INCREMENT, 
	 NOMBRE_CATEGORIA VARCHAR(20) NOT NULL,

    PRIMARY KEY(CATEGORIA_ID)

   );


  CREATE TABLE CATEGORIA_DEPARTAMENTO 
   (	
      ID INT NOT NULL AUTO_INCREMENT,
      PRIMARY KEY (ID),
      CATEGORIA_ID INT NOT NULL,
      DEPARTAMENTO_ID INT NOT NULL,
      FOREIGN KEY(CATEGORIA_ID) REFERENCES CATEGORIA(CATEGORIA_ID), 
	   FOREIGN KEY(DEPARTAMENTO_ID) REFERENCES DEPARTAMENTO(DEPARTAMENTO_ID)
   ); 


  CREATE TABLE DEPARTAMENTO 
   (	
    DEPARTAMENTO_ID INT NOT NULL, 
	 NOMBRE_DEPARTAMENTO VARCHAR(30) NOT NULL, 

    PRIMARY KEY(DEPARTAMENTO_ID)
   );

  CREATE TABLE DETALLE_DEVOLUCION 
   (	
    DETALLE_DEVOLUCION_ID INT NOT NULL AUTO_INCREMENT, 
	 FECHA_DEVOLUCION DATE, 
	 MOTIVO VARCHAR(50), 
	 CANTIDAD INT(5), 
	 PRENDA_ID INT(5), 
	 DETALLE_VENTA_ID INT(5), 

    PRIMARY KEY(DETALLE_DEVOLUCION_ID),
    FOREIGN KEY(PRENDA_ID) REFERENCES PRENDA(PRENDA_ID)
   );


  CREATE TABLE DETALLE_VENTA 
   (	
      DETALLE_VENTA_ID INT NOT NULL AUTO_INCREMENT,   
	   TOTAL INT NOT NULL,
	   FECHA DATE, 
	   EMPLEADO_ID INT NOT NULL,

      PRIMARY KEY (DETALLE_VENTA_ID),
      FOREIGN KEY (EMPLEADO_ID) REFERENCES EMPLEADO(EMPLEADO_ID)
   );


  CREATE TABLE EMPLEADO 
   (	
    EMPLEADO_ID INT NOT NULL AUTO_INCREMENT, 
	 NOMBRE VARCHAR(15), 
	 APELLIDO_PATERNO VARCHAR(15), 
	 APELLIDO_MATERNO  VARCHAR(15), 
	 TELEFONO  INT(10), 
	 EMAIL VARCHAR(30), 
	 DIRECCION VARCHAR(40), 
	 FECHA_CONTRATACION DATE

    PRIMARY KEY(EMPLEADO_ID)
   );


  CREATE TABLE MARCA 
   (	
    MARCA_ID INT NOT NULL AUTO_INCREMENT, 
	 NOMBRE_MARCA VARCHAR(15)

    PRIMARY KEY(MARCA_ID)
   );


  CREATE TABLE MATERIAL 
   (
      MATERIAL_ID INT NOT NULL AUTO_INCREMENT, 
	   NOMBRE_MATERIAL VARCHAR(15),

      PRIMARY KEY (MATERIAL_ID)
   );

  CREATE TABLE PRENDA 
   (	
    PRENDA_ID INT NOT NULL AUTO_INCREMENT,  
	 NOMBRE_PRENDA VARCHAR(30) NOT NULL, 
	 PRECIO FLOAT(6,2), 
	 CATEGORIA_ID INT, 
	 MATERIAL_ID INT, 
	 MARCA_ID INT,

    PRIMARY KEY(PRENDA_ID),
    FOREIGN KEY(CATEGORIA_ID) REFERENCES CATEGORIA(CATEGORIA_ID),
    FOREIGN KEY(MATERIAL_ID) REFERENCES MATERIAL(MATERIAL_ID),
    FOREIGN KEY(MARCA_ID) REFERENCES MARCA(MARCA_ID)
   );

  CREATE TABLE PRENDA_PROVEEDOR 
   (
    ID INT NOT NULL AUTO_INCREMENT,	
    PRENDA_ID INT NOT NULL, 
	 PROVEEDOR_ID INT NOT NULL,

    PRIMARY KEY(ID),
    FOREIGN KEY(PRENDA_ID) REFERENCES PRENDA(PRENDA_ID),
    FOREIGN KEY(PROVEEDOR_ID) REFERENCES PROVEEDOR(PROVEEDOR_ID)
   );


  CREATE TABLE PRENDA_TALLA
   (
    ID INT NOT NULL AUTO_INCREMENT  	
    PRENDA_ID INT NOT NULL, 
	 TALLA_ID INT NOT NULL, 
	 STOCK INT NOT NULL,
    
    PRIMARY KEY(ID),
    FOREIGN KEY(PRENDA_ID) REFERENCES PRENDA(PRENDA_ID),
    FOREIGN KEY(TALLA_ID) REFERENCES TALLA(TALLA_ID)

   );


  CREATE TABLE PROVEEDOR 
   (	
    PROVEEDOR_ID INT NOT NULL AUTO_INCREMENT, 
	 NOMBRE_PROVEEDOR VARCHAR(30), 
	 TELEFONO INT(10), 
	 EMAIL VARCHAR(30), 
	 DIRECCION VARCHAR(50),

    PRIMARY KEY(PROVEEDOR_ID)
   );


  CREATE TABLE TALLA 
   (	
      TALLA_ID INT NOT NULL AUTO_INCREMENT, 
	   NOMBRE_TALLA VARCHAR(5),

      PRIMARY KEY (TALLA_ID)
   );


  CREATE TABLE VENTA_PRENDA 
   (	
      PRENDA_ID INT NOT NULL AUTO_INCREMENT, 
	   DETALLE_VENTA_ID INT NOT NULL, 
	   CANTIDAD INT NOT NULL, 
	   PRECIO_UNITARIO FLOAT(6,2), 
	   SUBTOTAL FLOAT(8,2),

      PRIMARY KEY (PRENDA_ID),
      FOREIGN KEY (DETALLE_VENTA_ID) REFERENCES DETALLE_VENTA(DETALLE_VENTA_ID)
   );

Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (1,'Camisetas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (2,'Pantalones');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (3,'Zapatos');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (4,'Accesorios');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (5,'Abrigos');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (6,'Ropa Interior');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (7,'Blusas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (8,'Faldas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (9,'Sueteres');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (10,'Chaquetas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (11,'Ropa Casual');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (12,'Sudaderas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (13,'Kimonos');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (14,'Chalecos');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (15,'Túnicas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (16,'Leotardos');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (17,'Ropa étnica');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (18,'Ropa de Alta Costura');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (19,'Ropa de Yoga');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (20,'Ropa de Danza');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (21,'Ropa para Mascotas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (22,'Uniformes Escolares');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (23,'Mallas Deportivas');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (24,'Ropa de Carnaval');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (25,'Monos');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (26,'Ropa de Gala');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (27,'Ropa Vintage');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (28,'Trajes Tradicionales');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (29,'Ropa de Lactancia');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (30,'Ropa de Maternidad');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (31,'Ropa de Chef');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (32,'Ropa de Laboratorio');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (33,'Ropa para Ciclismo');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (34,'Ropa de Montaña');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (35,'Ropa de Piel');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (36,'Ropa de Invierno');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (37,'Ropa de Pesca');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (38,'Ropa de Golf');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (39,'Ropa de Camuflaje');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (40,'Ropa de Camping');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (41,'Ropa de Escalada');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (42,'Ropa Bohemia');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (43,'Ropa de Playa');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (44,'Ropa Retro');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (46,'Ropa de Patinaje');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (47,'Ropa de Tiro');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (48,'Ropa de Esquí');
Insert into CATEGORIA (CATEGORIA_ID,NOMBRE_CATEGORIA) values (49,'Ropa de Piloto');


Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (1,1);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (2,1);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (3,2);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (4,3);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (5,3);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (6,1);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (7,2);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (8,3);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (9,2);
Insert into CATEGORIA_DEPARTAMENTO (CATEGORIA_ID, DEPARTAMENTO_ID) values (10,1);

Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (1,'Hombre');
Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (2,'Mujer');
Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (3,'Niños');
Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (4,'Calzado');
Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (5,'Accesorios');
Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (46,'test3');
Insert into DEPARTAMENTO (DEPARTAMENTO_ID,NOMBRE_DEPARTAMENTO) values (66,'dyrgkc');

Insert into DETALLE_DEVOLUCION (DETALLE_DEVOLUCION_ID,FECHA_DEVOLUCION,MOTIVO,CANTIDAD,PRENDA_ID,DETALLE_VENTA_ID) values (1, '2024-10-24', 'Producto defectuoso',2,1,101);
Insert into DETALLE_DEVOLUCION (DETALLE_DEVOLUCION_ID,FECHA_DEVOLUCION,MOTIVO,CANTIDAD,PRENDA_ID,DETALLE_VENTA_ID) values (2, '2024-10-25', 'Talla incorrecta',1,4,104);
Insert into DETALLE_DEVOLUCION (DETALLE_DEVOLUCION_ID,FECHA_DEVOLUCION,MOTIVO,CANTIDAD,PRENDA_ID,DETALLE_VENTA_ID) values (3, '2024-10-25', 'No gustó el color',1,10,110);


Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (101,300,'2020-06-20',1);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (102,75, '2020-05-20',2);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (103,450,'2020-11-05',3);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (104,50, '2021-03-21',4);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (105,300,'2019-05-06',5);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (107,70,'2022-02-20',2);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (108,160,'2022-07-08',6);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (109,120,'2022-10-22',3);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (110,200,'2023-01-15',7);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (111,360,'2023-02-10',5);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (112,120,'2023-03-05',2);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (113,40,'2023-03-15',8);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (114,175,'2023-04-10',7);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (115,20,'2023-05-01',3);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (116,1800,'2023-05-15',4);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (117,60,'2023-06-20',9);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (118,80,'2023-07-15',6);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (119,800,'2023-08-05',1);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (120,45,'2023-08-20',10);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (121,1250.5,'2023-01-15',21);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (122,980.75,'2023-02-20',22);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (123,1500,'2023-03-10',23);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (124,320.3,'2023-04-05',24);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (125,780.25,'2023-05-15',25);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (126,2500.99,'2023-06-25',26);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (127,345.6,'2023-07-04',27);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (128,980.1,'2023-08-15',28);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (129,220.99,'2023-09-01',29);
Insert into DETALLE_VENTA (DETALLE_VENTA_ID,TOTAL,FECHA,EMPLEADO_ID) values (130,1120,'2023-10-10',30);


INSERT INTO EMPLEADO (EMPLEADO_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, TELEFONO, EMAIL, DIRECCION, FECHA_CONTRATACION) VALUES
(79, 'admintest2', 'test2', 'test2', 5561403187, 'test2@gmail.com', 'av simpre viva', '2025-01-25'),
(1, 'Juan', 'Pérez', 'Gómez', 5551122334, 'juan.perez@gmail.com', 'Av. Reforma #123, CDMX', '2020-01-20'),
(2, 'Alexa', 'Gonzáles', 'López', 5552233445, 'maria.gonzalez@gmail.com', 'Calle Juárez #456, CDMX', '2020-06-20'),
(3, 'Carlos', 'Ramírez', 'Hernández', 5553344556, 'carlos.ramirez@yahoo.com', 'Av. Insurgentes #789, CDMX', '2021-02-21'),
(4, 'Ana', 'Sánchez', 'Morales', 5554455667, 'ana.sanchez@hotmail.com', 'Calle Zaragoza #135, CDMX', '2021-08-21'),
(5, 'Luis', 'Fernández', 'Ortega', 5555566778, 'luis.fernandez@gmail.com', 'Av. Universidad #240, CDMX', '2022-03-15'),
(6, 'Laura', 'Martínez', 'Castillo', 5556677889, 'laura.martinez@yahoo.com', 'Calle Hidalgo #359, CDMX', '2022-07-25'),
(7, 'Pedro', 'García', 'Rodríguez', 5557788990, 'pedro.garcia@hotmail.com', 'Av. Revolución #460, CDMX', '2023-01-12'),
(8, 'Julia', 'Rivera', 'Soto', 5558899001, 'julia.rivera@gmail.com', 'Calle Morelos #579, CDMX', '2023-05-10'),
(9, 'Fernando', 'Torres', 'Lozano', 5559900112, 'fernando.torres@yahoo.com', 'Av. Tlalpan #670, CDMX', '2023-09-17'),
(10, 'Cecilia', 'Jiménez', 'Delgado', 5551011122, 'cecilia.jimenez@gmail.com', 'Calle Allende #780, CDMX', '2024-04-03'),
(11, 'Juan', 'Pérez', 'García', 5551234567, 'juan.perez@example.com', 'Calle Luna 123, CDMX', '2023-05-15'),
(12, 'María', 'Lopez', 'Hernández', 5559876543, 'maria.lopez@example.com', 'Av. Sol 45, Monterrey', '2022-11-10'),
(13, 'Luis', 'Martínez', 'Núñez', 5554567890, 'luis.martinez@example.com', 'Calle Estrella 89, Guadalajara', '2021-08-20'),
(14, 'Ana', 'Gómez', 'Rodríguez', 5551122334, 'ana.gomez@example.com', 'Av. Insurgentes 567, CDMX', '2023-02-01'),
(15, 'Carlos', 'Hernández', 'Díaz', 5559988776, 'carlos.hernandez@example.com', 'Blvd. Reforma 34, Puebla', '2020-03-25'),
(16, 'Sofía', 'Ramírez', 'Vega', 5554433221, 'sofia.ramirez@example.com', 'Calle Norte 77, Tijuana', '2021-12-15'),
(17, 'Diego', 'Fernández', 'Ruiz', 5556677889, 'diego.fernandez@example.com', 'Av. Centro 101, Mérida', '2023-07-20'),
(18, 'Laura', 'Torres', 'Morales', 5553344556, 'laura.torres@example.com', 'Calle Sur 9, León', '2022-06-05'),
(19, 'Miguel', 'Sánchez', 'Ortiz', 5552211445, 'miguel.sanchez@example.com', 'Blvd. Las Palmas 120, Veracruz', '2020-01-30'),
(20, 'Elena', 'Castro', 'Mendoza', 5557788990, 'elena.castro@example.com', 'Av. Primavera 77, Oaxaca', '2023-09-15'),
(21, 'Pedro', 'Mendoza', 'Gómez', 5551001001, 'pedro.mendoza@example.com', 'Calle Luna 101, CDMX', '2022-07-01'),
(22, 'Carla', 'González', 'Ruiz', 5551001002, 'carla.gonzalez@example.com', 'Av. Sol 202, Guadalajara', '2023-03-15'),
(23, 'Raúl', 'Hernández', 'Martínez', 5551001003, 'raul.hernandez@example.com', 'Calle Estrella 303, Monterrey', '2021-08-10'),
(24, 'Lucía', 'Torres', 'Vargas', 5551001004, 'lucia.torres@example.com', 'Blvd. Reforma 404, Puebla', '2020-05-20'),
(25, 'Daniel', 'Ramírez', 'Lopez', 5551001005, 'daniel.ramirez@example.com', 'Av. Centro 505, Mérida', '2023-01-12'),
(26, 'Sofía', 'Pérez', 'Núñez', 5551001006, 'sofia.perez@example.com', 'Calle Norte 606, Oaxaca', '2022-09-30'),
(27, 'José', 'Gómez', 'Hernández', 5551001007, 'jose.gomez@example.com', 'Blvd. Las Palmas 707, León', '2021-06-18'),
(28, 'Marta', 'Fernández', 'Rodríguez', 5551001008, 'marta.fernandez@example.com', 'Av. Primavera 808, Tijuana', '2020-02-22'),
(29, 'Juan', 'Castro', 'Díaz', 5551001009, 'juan.castro@example.com', 'Calle Luna 909, Veracruz', '2022-04-05'),
(30, 'Paula', 'Lopez', 'García', 5551001010, 'paula.lopez@example.com', 'Av. Insurgentes 1010, Monterrey', '2023-10-13'),
(31, 'Miguel', 'Sánchez', 'Vega', 5551001011, 'miguel.sanchez@example.com', 'Blvd. Reforma 1111, CDMX', '2021-07-07');

INSERT INTO MARCA(MARCA_ID, NOMBRE_MARCA) VALUES
(1,'Nike'),
(2,'Adidas'),
(3,'Zara'),
(4,'Pull And Bear'),
(5,'Puma'),
(6,'Levis'),
(7,'Under Armour'),
(8,'GAP'),
(9,'Converse'),
(10,'Reebook'),
(11,'Forever 21'),
(12,'American Eagle'),
(13,'Old Navy'),
(14,'Aeropostale'),
(15,'Uniqlo'),
(16,'Hollister'),
(18,'Banana Republic'),
(19,'Express'),
(20,'Guess'),
(21,'admin_test1'),
(22,'admin_test2');

INSERT INTO MATERIAL(MATERIAL_ID, NOMBRE_MATERIAL) VALUES
(1,'Algodón'),
(2,'Poliéster'),
(3,'Cuero'),
(4,'Lana'),
(5,'Sintético'),
(6,'Seda'),
(7,'Lino'),
(8,'Spandex'),
(9,'Gamuza'),
(10,'Mezclilla'),
(11,'admin_test1'),
(12,'admin_test2');

INSERT INTO PRENDA(PRENDA_ID, NOMBRE_PRENDA, PRECIO, CATEGORIA_ID, MATERIAL_ID, MARCA_ID) VALUES
(20,'test1',350,25,5,3),
(1,'Camiseta',150,1,1,1),
(2,'Pantalón',250,2,2,2),
(3,'Zapatos',500,3,3,3),
(4,'Bufanda',50,4,4,4),
(5,'Abrigo',300,5,5,5),
(6,'Ropa Interior',50,5,5,5),
(7,'Blusa',75,6,1,6),
(8,'Falda',80,7,2,7),
(9,'Suéter',100,9,1,9),
(10,'Chaqueta',200,10,6,10),
(11,'Chaleco',120,10,4,16),
(12,'Sombrero',60,4,5,18),
(13,'Cinturón',40,4,3,13),
(14,'Guantes',35,4,3,14),
(15,'Calcetines',20,6,1,15),
(16,'Tennis',600,3,5,9),
(17,'Corbata',30,4,2,3),
(18,'Pijama',80,6,6,3),
(19,'Vestido',200,8,1,11),
(40,'prueba2',600,2,2,3),
(21,'test1',350,49,11,22),
(60,'prueba3',500,2,1,8);

INSERT INTO PRENDA_PROVEEDOR (PRENDA_ID, PROVEEDOR_ID) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(14,14),
(16,16),
(17,17),
(18,18),
(19,19);

INSERT INTO PRENDA_TALLA (PRENDA_ID, TALLA_ID, STOCK) VALUES
(1,1,10),
(2,2,20),
(3,3,15),
(4,4,8),
(5,5,5),
(6,1,12),
(7,2,14),
(8,3,9),
(9,4,6),
(10,5,4);

INSERT INTO PROVEEDOR (PROVEEDOR_ID, NOMBRE_PROVEEDOR, TELEFONO, EMAIL, DIRECCION) VALUES
(21,'admin_test1',5561403187,'test!@mail.com','av simpre viva'),
(61,'prueba3',5561403187,'prueba@gmail.com','calle siempre viva'),
(1,'Textiles y Suministros Norte',5527845123,'contacto@tsnorte.com.mx','Av. Insurgentes Sur #1234, CDMX'),
(2,'Suministros Industriales S.A.',5582345671,'ventas@suministrosind.com.mx','Calle Juárez #56, Guadalajara'),
(3,'Manufacturas del Bajío',5539876542,'contacto@corpmanbajo.com.mx','Av. Chapultepec #234, Monterrey'),
(4,'Manufacturas Globales',5594356728,'info@manuglobal.com.mx','Blvd. Benito Juárez #789, Puebla'),
(5,'Industrias del Tejido',5515673450,'ventas@indeltejido.com.mx','Calle Morelos #12, Toluca'),
(6,'Distribuciones Nacionales',5546732891,'contacto@distnacional.com.mx','Av. Reforma #345, CDMX'),
(7,'Confecciones de Querétaro',5562345987,'ventas@confeccionesqro.com.mx','Calle Hidalgo #90, Querétaro'),
(8,'Corporación Textil Mexicana',5579812365,'info@corptextil.com.mx','Av. Universidad #567, Mérida'),
(9,'Grupo de Manufactura Exclusiva',5534567892,'contacto@grupoexclusivo.com.mx','Calle Independencia #678, León'),
(10,'Premium Manufacturas S.A.',5591023456,'info@premiummanuf.com.mx','Av. Revolución #1001, CDMX'),
(11,'Textiles del Sur',5587456123,'ventas@textilessur.com.mx','Calle Libertad #43, Oaxaca'),
(12,'Materiales de Alta Calidad',5549832745,'contacto@materialesac.com.mx','Av. Hidalgo #34, Morelia'),
(14,'Industrias del Norte',5592347812,'ventas@indelnorte.com.mx','Av. Patria #432, Tijuana'),
(16,'Proveedora de Insumos Puebla',5587123490,'info@proveedorapuebla.com.mx','Calle Reforma #290, Puebla'),
(17,'Distribuidora Maya',5567123845,'ventas@dismaya.com.mx','Av. Paseo Montejo #345, Mérida'),
(18,'Insumos y Textiles Veracruz',5534982734,'contacto@insumosver.com.mx','Calle Independencia #12, Veracruz'),
(19,'Insumos industriales',5578123945,'info@corpinsumosind.com.mx','Av. Cuauhtémoc #56, CDMX'),
(20,'Manufacturas cmdx',5541237890,'contacto@mancentro.com.mx','Calle 5 de Mayo #321, San Luis Potosí'),
(41,'prueba2',5561403187,'prov@mail.com','av siempre viva1');

INSERT INTO TALLA (TALLA_ID, NOMBRE_TALLA) VALUES 
(7,'XXXL'),
(1,'XS'),
(2,'S'),
(3,'M'),
(4,'L'),
(5,'XL'),
(6,'XXL'),
(27,'dl');

INSERT INTO VENTA_PRENDA (PRENDA_ID, DETALLE_VENTA_ID, CANTIDAD, PRECIO_UNITARIO, SUBTOTAL) VALUES
(1,101,2,150,300),
(2,102,1,75,75),
(3,103,3,150,450),
(4,104,1,50,50),
(5,105,2,150,300),
(7,107,1,70,70),
(8,108,2,80,160),
(9,109,1,120,120),
(10,110,4,50,200),
(11,111,3,120,360),
(12,112,2,60,120),
(13,113,1,40,40),
(14,114,5,35,175),
(15,115,1,20,20),
(16,116,3,600,1800),
(17,117,2,30,60),
(18,118,1,80,80),
(19,119,4,200,800);


INSERT INTO PROVEEDOR (PROVEEDOR_ID, NOMBRE_PROVEEDOR, TELEFONO, EMAIL, DIRECCION) VALUES
(21,'admin_test1',5561403187,'test!@mail.com','av simpre viva'),
(61,'prueba3',5561403187,'prueba@gmail.com','calle siempre viva'),
(1,'Textiles y Suministros Norte',5527845123,'contacto@tsnorte.com.mx','Av. Insurgentes Sur #1234, CDMX'),
(2,'Suministros Industriales S.A.',5582345671,'ventas@suministrosind.com.mx','Calle Juárez #56, Guadalajara'),
(3,'Manufacturas del Bajío',5539876542,'contacto@corpmanbajo.com.mx','Av. Chapultepec #234, Monterrey'),
(4,'Manufacturas Globales',5594356728,'info@manuglobal.com.mx','Blvd. Benito Juárez #789, Puebla'),
(5,'Industrias del Tejido',5515673450,'ventas@indeltejido.com.mx','Calle Morelos #12, Toluca'),
(6,'Distribuciones Nacionales',5546732891,'contacto@distnacional.com.mx','Av. Reforma #345, CDMX'),
(7,'Confecciones de Querétaro',5562345987,'ventas@confeccionesqro.com.mx','Calle Hidalgo #90, Querétaro'),
(8,'Corporación Textil Mexicana',5579812365,'info@corptextil.com.mx','Av. Universidad #567, Mérida'),
(9,'Grupo de Manufactura Exclusiva',5534567892,'contacto@grupoexclusivo.com.mx','Calle Independencia #678, León'),
(10,'Premium Manufacturas S.A.',5591023456,'info@premiummanuf.com.mx','Av. Revolución #1001, CDMX'),
(11,'Textiles del Sur',5587456123,'ventas@textilessur.com.mx','Calle Libertad #43, Oaxaca'),
(12,'Materiales de Alta Calidad',5549832745,'contacto@materialesac.com.mx','Av. Hidalgo #34, Morelia'),
(14,'Industrias del Norte',5592347812,'ventas@indelnorte.com.mx','Av. Patria #432, Tijuana'),
(16,'Proveedora de Insumos Puebla',5587123490,'info@proveedorapuebla.com.mx','Calle Reforma #290, Puebla'),
(17,'Distribuidora Maya',5567123845,'ventas@dismaya.com.mx','Av. Paseo Montejo #345, Mérida'),
(18,'Insumos y Textiles Veracruz',5534982734,'contacto@insumosver.com.mx','Calle Independencia #12, Veracruz'),
(19,'Insumos industriales',5578123945,'info@corpinsumosind.com.mx','Av. Cuauhtémoc #56, CDMX'),
(20,'Manufacturas cmdx',5541237890,'contacto@mancentro.com.mx','Calle 5 de Mayo #321, San Luis Potosí'),
(41,'prueba2',5561403187,'prov@mail.com','av siempre viva1');

INSERT INTO TALLA (TALLA_ID, NOMBRE_TALLA) VALUES 
(7,'XXXL'),
(1,'XS'),
(2,'S'),
(3,'M'),
(4,'L'),
(5,'XL'),
(6,'XXL'),
(27,'dl');

INSERT INTO VENTA_PRENDA (PRENDA_ID, DETALLE_VENTA_ID, CANTIDAD, PRECIO_UNITARIO, SUBTOTAL) VALUES
(1,101,2,150,300),
(2,102,1,75,75),
(3,103,3,150,450),
(4,104,1,50,50),
(5,105,2,150,300),
(7,107,1,70,70),
(8,108,2,80,160),
(9,109,1,120,120),
(10,110,4,50,200),
(11,111,3,120,360),
(12,112,2,60,120),
(13,113,1,40,40),
(14,114,5,35,175),
(15,115,1,20,20),
(16,116,3,600,1800),
(17,117,2,30,60),
(18,118,1,80,80),
(19,119,4,200,800);

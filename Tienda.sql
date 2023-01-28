-- Lista de Empleados
CREATE TABLE IF NOT EXISTS Employees(
	id SERIAL,
	first_name VARCHAR(250) NOT NULL,
	last_name VARCHAR(250) NOT NULL,
	email VARCHAR(250) NOT NULL,
	contrato VARCHAR(20),
	ingreso_t DATE NOT NULL,
	sueldo NUMERIC(7,2),
	constraint pk_ PRIMARY KEY(id)
);
DROP TABLE IF EXISTS Employees;
SELECT * FROM Employees;
INSERT INTO Employees (first_name, last_name, email, contrato, ingreso_t, sueldo)
VALUES ('Joel', 'Sanchez', 'joel@sanchez.com', 'Empleado','2021-03-01', 3600);
INSERT INTO Employees (first_name, last_name, email, contrato, ingreso_t, sueldo)
VALUES ('Javier', 'Ramirez', 'javier@ramirez.com', 'Empleado','2020-04-07', 4500);
INSERT INTO Employees (first_name, last_name, email, contrato, ingreso_t, sueldo)
VALUES ('Fernando', 'Huarcaya', 'fernando@huarcaya.com', 'Becario','2023-01-15', 1500);

CREATE TABLE IF NOT EXISTS Marcas(
	id SERIAL,
	nombre_marca VARCHAR(250) NOT NULL,
	descripcion VARCHAR(500),
	constraint pk_producto PRIMARY KEY(id)
);	
SELECT * FROM Marcas;
DROP TABLE IF EXISTS Marcas;
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('ASUS','Monitores, Tarjetas Graficas, MotherBoard, Portatiles');
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('Cibertel','Joystick, Teclados, Mouse, Parlantes');
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('Gygabite','Fuentes, Tarjetas Graficas, MotherBoard, Portatiles');
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('MSI','Monitores, Tarjetas Graficas, MotherBoard, Portatiles, Mouse');
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('RedDragon','Teclados, Mouse, Parlantes, Audifonos');
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('Teros','Monitores, Teclados, Mouse, Parlantes, Audifonos, Gabinetes');
INSERT INTO Marcas(nombre_marca, descripcion) VALUES ('Coirsair','Hub, Mouse, Fuentes, Audifonos, Gabinetes');
UPDATE Marcas SET nombre_marca='Teros' WHERE id = 6;

CREATE TABLE IF NOT EXISTS TipoProducto(
	id SERIAL,
	nombre_producto VARCHAR(50) NOT NULL,
	constraint pk_tipoproducto PRIMARY KEY(id)
);
DROP TABLE IF EXISTS TipoProducto;
SELECT * FROM TipoProducto;
INSERT INTO TipoProducto(nombre_producto) VALUES ('Audifono');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Monitor');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Tarjeta Grafica');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Motherboard');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Fuente');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Gabinete');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Hub');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Joystick');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Parlantes');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Mouse');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Teclado');
INSERT INTO TipoProducto(nombre_producto) VALUES ('Portatil');


CREATE TABLE IF NOT EXISTS TipoProducto_marca(
	id_tipo INT NOT NULL,
	id_marca INT NOT NULL,
	constraint pk_proveedor_marca PRIMARY KEY(id_tipo,id_marca),
	constraint fk_marca FOREIGN KEY(id_tipo) REFERENCES TipoProducto(id) ON UPDATE cascade ON DELETE cascade,
	constraint fk_tipo FOREIGN KEY(id_marca) REFERENCES Marcas(id) ON UPDATE cascade ON DELETE cascade
);
SELECT * FROM TipoProducto_marca;
--'ASUS','Monitores, Tarjetas Graficas, MotherBoard, Portatiles'
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (2,1);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (3,1);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (4,1);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (12,1);
--'Cibertel','Joystick, Teclados, Mouse, Parlantes');
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (8,2);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (11,2);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (10,2);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (9,2);
--'Gygabite','Fuentes, Tarjetas Graficas, MotherBoard, Portatiles'
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (5,3);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (3,3);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (4,3);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (12,3);
--'MSI','Monitores, Tarjetas Graficas, MotherBoard, Portatiles, Mouse'
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (2,4);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (3,4);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (4,4);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (12,4);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (10,4);
--'RedDragon','Teclados, Mouse, Parlantes, Audifonos'
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (11,5);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (10,5);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (9,5);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (1,5);
--'Teros','Monitores, Teclados, Mouse, Parlantes, Audifonos, Gabinetes'
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (2,6);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (11,6);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (10,6);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (9,6);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (1,6);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (6,6);
--'Coirsair','Hub, Mouse, Fuentes, Audifonos, Gabinetes'
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (7,7);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (10,7);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (5,7);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (1,7);
INSERT INTO TipoProducto_marca(id_tipo, id_marca) VALUES (6,7);

CREATE TABLE IF NOT EXISTS Modelo(
	id SERIAL,
	name VARCHAR(250) NOT NULL,
	Caracteristicas VARCHAR(250)NOT NULL,
	id_tipo INT,
	id_marca INT,
	constraint pk_modelo PRIMARY KEY(id),
	constraint fK_tipo_marca FOREIGN KEY(id_tipo, id_marca) REFERENCES TipoProducto_marca(id_tipo,id_marca)
);

SELECT * FROM modelo; 
SELECT * FROM tipoproducto_marca;
DROP TABLE IF EXISTS modelo;

INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('TUF GAMING VG247QR1A','26" 2K color negro',2,1);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('ROG Swift OLED PG42UQ','4K 32" color negro',2,1);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('ROG Strix GeForce RTX 4070 Ti','12GB ROG Strix GeForce RTX 4070Ti GDDR6X',3,1);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('TUF Gaming RTX 4070 Ti','12GB ASUS TUF Gaming GeForce RTX 4070 Ti 12GB GDDR6X OC Edition',3,1);
--UPDATE modelo SET  Caracteristicas= '12GB  GDDR6X' WHERE id = 3;
--UPDATE modelo SET  Caracteristicas= '12GB  GDDR6X OC Edition' WHERE id = 4;
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('TUF GAMING Z690-PLUS WIFI D4','LGA 1700 ATX DDR4 5333 (OC)',4,1);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('ROG STRIX Z790-H GAMING WIFI','LGA 1700 ATX DDR5 7800+ (OC)',4,1);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) 
VALUES ('TUF GAMING ','NVIDIA® GeForce RTX™ 4070 AMD Ryzen™9 7940HS 32GB RAM 4800MHz',12,1);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) 
VALUES ('ROG Zephyrus M16 (2022) GU603ZE-LS020W','GeForce RTX™ 3050 Ti GPU 12th Gen Intel® Core™ i7-12700H 16GB RAM 4800MHz',12,1);

INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Gamepad Racer Cyb G805bt','Inalambrico Bluetooth PC y Android 14 botones',8,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Gamepad Danger A','Inalambrico Bluetooth PC, Iphone y Android 16 botones',8,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Teclado Gamer Combat','Conexion USB Mecánico RGB Switch Outemu Blue',11,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Teclado Gamer Prince Xtreme Led Rainbow','Inalambrico RGB SemiMecanico',11,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Mouse Epico','Optico Gamer Luz Led RGB 6 botones Conexion USB',10,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Mouse Keeper','Gamer Luces Led RGB 6 Botones Inalambrico',10,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Parlantes Sputnik','Mini Woofer 15 Watts color negro',9,2);
INSERT INTO Modelo(name, Caracteristicas, id_tipo, id_marca) VALUES ('Parlantes Gamer Cybermax Exxpert','Altavoces 2.1 Rgb 20w',9,2);

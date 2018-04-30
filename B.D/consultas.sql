Consultas:
/* Todos los clientes*/

SELECT * FROM cliente

/* Todas las facturas*/

SELECT * FROM factura

/* Todos los nombres de los clientes, las placas y modelo de su vehículo y el costo del
vehículo.*/

SELECT Nombre,Id_Placas,Modelo,Costo
FROM cliente, vehículo,poliza
------------------------

SELECT c.Nombre, c.Id_Cliente,v.Id_Placas,v.Modelo,Costo
FROM cliente as c, vehículo as v,poliza
WHERE c.Id_Cliente='1'

SELECT Id_Cliente, Id_Placas,Modelo, Costo, 
FROM poliza
WHERE Id_Cliente ='1'

......
SELECT p.Id_Cliente, v.Id_Placas, v.Modelo, v.Costo 
FROM poliza as p, vehículo as v
---si sirve--
SELECT p.Id_Cliente, p.Id_Placas,v.Modelo, p.Costo 
FROM poliza as p, vehículo as v

-................
SELECT v.Id_Placas , v.Modelo, p.Id_Placas
FROM vehículo as v, poliza as p
WHERE v.Id_Placas = p.Id_Placas

............

SELECT v.Id_Placas , v.Modelo, p.Id_Placas, v.Modelo
FROM vehículo as v, poliza as p
WHERE v.Id_Placas = p.Id_Placas




/* Buscar los datos (nombre, dirección y placas de vehículo) de un cliente.*/

SELECT Nombre,Dirección, Id_Placas,
FROM cliente, vehículo,
WHERE cliente.Nombre = ''

/* Buscar los datos (nombre, placas de vehículo, costo de la póliza y prima asegurada) de
un cliente.*/



/* Mostrar fecha de inicio y vencimiento de todas las pólizas.*/

SELECT Fecha_Apertura, Fecha_Vencimiento FROM poliza




/* Nombre del cliente y placas de su vehículo y costo del vehículo, del cliente que pague
el mayor costo de póliza.*/



/* Actualizar la dirección de un cliente.*/
Update cliente Set Dirección = 'nueva_dirección'  Where Dirección = 'dirección_vieja';


/* Actualizar la marca y/o modelo de un vehículo.*/

Update cliente Set Dirección = 'nueva_dirección'  Where Dirección = 'dirección_vieja';

/* Actualizar el costo total de una factura.*/

UPDATE factura SET Monto=montoNuevo WHERE Monto=montoViejo;


SELECT * FROM factura

WHERE Id_Factura='1';



cliente
INSERT INTO `cliente`(`Id_Cliente`, `Nombre`, `Dirección`) VALUES (1,'Mike','Colonia Roma');
INSERT INTO `cliente`(`Id_Cliente`, `Nombre`, `Dirección`) VALUES (2,'Goku','Veyita');
INSERT INTO `cliente`(`Id_Cliente`, `Nombre`, `Dirección`) VALUES (3,'Mario','Nintendo');
INSERT INTO `cliente`(`Id_Cliente`, `Nombre`, `Dirección`) VALUES (4,'Bowser','Nintendo');

factura
INSERT INTO `factura`(`Id_Factura`, `Monto`) VALUES (1,50000);
INSERT INTO `factura`(`Id_Factura`, `Monto`) VALUES (2,130000);
INSERT INTO `factura`(`Id_Factura`, `Monto`) VALUES (3,250000);
INSERT INTO `factura`(`Id_Factura`, `Monto`) VALUES (4,48900);


poliza
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (01,1000000 ,1000 ,'01/01/2018' ,'01/01/2019',1,'358FGV');
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (02,2000000 ,2000 ,'02/01/2018' ,'02/02/2020',2,'452TGH');
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (03,3000000 ,3000,'03/01/2018','03/03/2021',3,'485JOP');
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (04,4000000 , 4000,'04/01/2018' ,'04/04/2022',4,'369TYU');


vehículo

INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('358FGV','VolksWagen','Gol',2);
INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('452TGH','Mercury','Marinner',3);
INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('485JOP','Nissan','Leaf',4);
INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('369TYU','Toyota','Yaris',1);
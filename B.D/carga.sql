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
VALUES (01,1000000 ,1000 ,'2018/01/01' ,'2019/01/01',1,'358FGV');
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (02,2000000 ,2000 ,'2018/02/01' ,'2020/02/02',2,'452TGH');
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (03,3000000 ,3000,'2018/03/01','2021/03/03',3,'485JOP');
INSERT INTO `poliza`(`Id_Poliza`, `Costo`, `Prima_Asegurada`, `Fecha_Apertura`, `Fecha_Vencimiento`, `Id_Cliente`, `Id_Placas`) 
VALUES (04,4000000 , 4000,'2018/04/01' ,'2022/04/04',4,'369TYU');


vehículo

INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('358FGV','VolksWagen','Gol',2);
INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('452TGH','Mercury','Marinner',3);
INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('485JOP','Nissan','Leaf',4);
INSERT INTO `vehículo`(`Id_Placas`, `Marca`, `Modelo`, `Id_Factura`) VALUES ('369TYU','Toyota','Yaris',1);
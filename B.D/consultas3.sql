Consultas:
/* Todos los clientes*/

SELECT * FROM cliente

/* Todas las facturas*/

SELECT * FROM factura

/* Todos los nombres de los clientes, las placas y modelo de su vehículo y el costo del
vehículo.*/


SELECT c.Nombre, p.Costo, p.Id_Placas,v.Id_Placas, v.Modelo
FROM cliente as c, poliza as p, vehículo as v
WHERE c.Id_Cliente = p.Id_Cliente
AND p.Id_Placas = v.Id_Placas;


/* Buscar los datos (nombre, dirección y placas de vehículo) de un cliente.*/

/*EL NUMERO 1 SE DEBE SUSTITUIR POR EL ID DEL CLIENTE DESEADO*/

SELECT c.Nombre, c.Dirección, p.Id_Placas, c.Id_Cliente, p.Id_Cliente
FROM cliente as c, poliza as p
WHERE c.Id_Cliente = '1'
AND p.Id_Cliente ='1';

/* Buscar los datos (nombre, placas de vehículo, costo de la póliza y prima asegurada) de
un cliente.*/

SELECT c.Nombre, p.Id_Placas, c.Id_Cliente, p.Id_Cliente, p.Costo_Poliza, p.Prima_Asegurada
FROM cliente as c, poliza as p
WHERE c.Id_Cliente = p.Id_Cliente;


/* Mostrar fecha de inicio y vencimiento de todas las pólizas.*/

SELECT Fecha_Apertura, Fecha_Vencimiento FROM poliza




/* Nombre del cliente y placas de su vehículo y costo del vehículo, del cliente que pague
el mayor costo de póliza.*/

SELECT c.Nombre, p.Id_Placas, p.Costo
FROM cliente as c, poliza as p
WHERE c.Id_Cliente = p.Id_Cliente
AND p.Costo > 3000000;


/* Actualizar la dirección de un cliente.*/
Update cliente Set Dirección = 'nueva_dirección'  Where Dirección = 'dirección_vieja';


/* Actualizar la marca y/o modelo de un vehículo.*/

Update cliente Set Dirección = 'nueva_dirección'  Where Dirección = 'dirección_vieja';

/* Actualizar el costo total de una factura.*/

UPDATE factura SET Monto=montoNuevo WHERE Monto=montoViejo;


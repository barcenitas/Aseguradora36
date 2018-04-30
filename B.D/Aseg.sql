

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE Cliente(
  Id_Cliente INT NOT NULL,
  Dirección VARCHAR(25)  NOT NULL,
  Nombre VARCHAR(25) NOT NULL,
  PRIMARY KEY (Id_Cliente))


-- -----------------------------------------------------
-- Table Factura
-- -----------------------------------------------------
CREATE TABLE Factura (
  Id_Factura INT NOT NULL,
  Monto DECIMAL NOT NULL,
  PRIMARY KEY (Id_Factura))


-- -----------------------------------------------------
-- Table Vehículo
-- -----------------------------------------------------
CREATE TABLE Vehículo (
  Id_Placas VARCHAR(45) NOT NULL,
  Marca VARCHAR(45) NOT NULL,
  Modelo VARCHAR(45) NOT NULL,
  Id_Factura INT NOT NULL,
  PRIMARY KEY (Id_Placas),
  INDEX (Id_Factura),
  FOREIGN KEY (Id_Factura) REFERENCES Factura(Id_Factura))


-- -----------------------------------------------------
-- Table Poliza
-- -----------------------------------------------------
CREATE TABLE Poliza(
  Id_Poliza INT NOT NULL,
  Costo DECIMAL(15,2) NOT NULL,
  Prima_Asegurada DECIMAL(15,2) NOT NULL,
  Fecha_Apertura DATE NOT NULL,
  Fecha_Vencimiento DATE NOT NULL,
  Id_Cliente INT NOT NULL,
  Id_Placas VARCHAR(45) NOT NULL,
  PRIMARY KEY (Id_Poliza),
  INDEX (Id_Cliente),
  INDEX (Id_Placas),
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente),
    FOREIGN KEY (Id_Placas) REFERENCES Vehículo (Id_Placas))



-- Check SQL version
SELECT VERSION();

-- Create Table

/* Creating the Services table*/
CREATE TABLE Servicios (
    id_servicio INT,
    servicio VARCHAR(10),
    descripcion VARCHAR(20)
)

/* Insert records on Service table */
INSERT INTO servicios (id_servicio,servicio,descripcion) VALUES
(1,'Infraestructura IT','Armado de infraestructura IT para datacenters');
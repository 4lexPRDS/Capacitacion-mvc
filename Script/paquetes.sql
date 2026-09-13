CREATE DATABASE IF NOT EXISTS capacitacion_mvc;

USE taller_mvc;

DROP TABLE IF EXISTS paquete;

CREATE TABLE paquete (
    id_paquete INT NOT NULL AUTO_INCREMENT,
    id_pedido INT,
    codigo_rastreo_paquete VARCHAR(30),
    peso_paquete DECIMAL(10,2),
    alto_paquete DECIMAL(10,2),
    ancho_paquete DECIMAL(10,2),
    largo_paquete DECIMAL(10,2),
    descripcion_paquete VARCHAR(255),
    fragil_paquete VARCHAR(5),
    valor_declarado_paquete DECIMAL(10,2),
    tipo_paquete VARCHAR(25),
    estado_paquete VARCHAR(20),
    PRIMARY KEY (id_paquete)
);


INSERT INTO paquete
    (id_pedido, codigo_rastreo_paquete, peso_paquete, alto_paquete, ancho_paquete, largo_paquete, descripcion_paquete, fragil_paquete, valor_declarado_paquete, tipo_paquete, estado_paquete)
VALUES
    (1, 'TRK-00001', 2.50, 20.00, 15.00, 30.00, 'Paquete con documentos', 'NO', 150.00, 'Documentos', 'Enviado'),
    (2, 'TRK-00002', 5.75, 30.00, 25.00, 40.00, 'Paquete con ropa', 'NO', 350.00, 'Ropa', 'En tránsito'),
    (3, 'TRK-00003', 1.80, 15.00, 15.00, 25.00, 'Paquete con artículos electrónicos', 'SI', 1200.00, 'Electrónico', 'Recibido'),
    (4, 'TRK-00004', 8.25, 35.00, 30.00, 50.00, 'Paquete con accesorios para hogar', 'NO', 500.00, 'Hogar', 'Enviado'),
    (5, 'TRK-00005', 3.40, 25.00, 20.00, 35.00, 'Paquete con artículos frágiles', 'SI', 800.00, 'Frágil', 'Pendiente');
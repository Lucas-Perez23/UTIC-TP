CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);
CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10, 2)
);

CREATE TABLE ventas (
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) ON UPDATE CASCADE ON DELETE RESTRICT   
);

CREATE TABLE detalle_ventas (
    id_detalle INT PRIMARY KEY,
    id_venta INT,
    id_producto INT,
    cantidad INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto) ON UPDATE CASCADE ON DELETE RESTRICT
);

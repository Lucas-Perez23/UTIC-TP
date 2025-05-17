-- 1. Uso de IN
-- Obtener todos los productos cuyo ID esté entre una lista específica
SELECT * FROM productos
WHERE id_producto IN (1, 3, 5);

-- 2. Uso de NOT IN
-- Listar los clientes que no han realizado ninguna venta
SELECT * FROM clientes
WHERE id_cliente NOT IN (
    SELECT id_cliente FROM ventas
);

-- 3. Uso de LIKE
-- Buscar productos cuya descripción contenga la palabra “algodón”
SELECT * FROM productos
WHERE descripcion LIKE '%algodón%';

-- 4. Uso de GROUP BY
-- Obtener el total de ventas realizadas por cada cliente
SELECT v.id_cliente, c.nombre, c.apellido, SUM(v.total) AS total_compras
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente, c.nombre, c.apellido;

-- 5. Uso de BETWEEN
-- Obtener ventas realizadas entre el 1 de enero de 2024 y el 31 de marzo de 2024
SELECT * FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-03-31';

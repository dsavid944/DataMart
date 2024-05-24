-- Transferir datos de ventas a Staging
SELECT D.ID_pedido ID_Ventas, D.ID_producto ID_Producto, ID_cliente Id_Cliente, fecha_pedido Fecha_Venta, cantidad Cantidad, (cantidad * precio_venta) Total_Venta
FROM jardineria.dbo.detalle_pedido D
INNER JOIN jardineria.dbo.pedido P ON D.ID_pedido = P.ID_pedido
INNER JOIN jardineria.DBO.producto T ON D.ID_producto = T.ID_producto;

-- Transferir datos de productos a Staging
SELECT ID_producto ID_Producto, Id_Categoria ID_Categoria,  Nombre, Precio_Venta, cantidad_en_stock Cantidad_Stock
FROM jardineria.dbo.producto P
INNER JOIN jardineria.dbo.Categoria_producto C ON P.Categoria = C.Id_Categoria;

-- Transferir datos de cliente a Staging
SELECT ID_cliente ID_Cliente, nombre_cliente Nombre_Cliente, apellido_contacto Apellido_Cliente, ciudad Ciudad, region Region, pais Pais
FROM jardineria.dbo.Cliente;

---- Transferir datos de tiempo a Staging

SELECT fecha_pedido Fecha, YEAR(fecha_pedido) Año, MONTH(fecha_pedido) Mes, DAY(fecha_pedido) Dia
FROM jardineria.dbo.pedido;
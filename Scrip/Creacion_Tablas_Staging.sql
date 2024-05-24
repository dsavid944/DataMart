CREATE TABLE ProductoStaging (
    ID_Producto INT NOT NULL PRIMARY KEY,
    ID_Categoria INT NOT NULL,
    Nombre NVARCHAR(70) NOT NULL,
    Precio_Venta NUMERIC(15, 2) NOT NULL,
    Cantidad_Stock SMALLINT NOT NULL
);


CREATE TABLE ClienteStaging (
    ID_Cliente INT NOT NULL PRIMARY KEY,
    Nombre_Cliente NVARCHAR(50) NOT NULL,
    Apellido_Cliente NVARCHAR(50) NOT NULL,
    Ciudad NVARCHAR(50) NOT NULL,
    Region NVARCHAR(50) NOT NULL,
    Pais NVARCHAR(50) NOT NULL
);

CREATE TABLE VentaStaging (
    ID_Venta INT NOT NULL,
    ID_Producto INT NOT NULL,
    ID_Cliente INT NOT NULL,
    Fecha_Venta DATE NOT NULL,
    Cantidad INT NOT NULL,
    Total_Venta numeric(26, 2) NOT NULL
);


CREATE TABLE TiempoStaging (
    Fecha DATE NOT NULL PRIMARY KEY,
    Año INT NOT NULL,
    Mes INT NOT NULL,
    Dia INT NOT NULL
);

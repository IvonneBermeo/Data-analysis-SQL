
/*
CONSULTAR LAS ORDENES QUE SE ENCUENTRAN EN LOS EMPLEADOS
*/

--ORDERS
--EMPLOYEES
SP_HELP ORDERS
GO
SP_HELP EMPLOYEES

SELECT 
	A.OrderID,
	B.*
FROM [dbo].[Orders] AS A
	INNER JOIN [dbo].[Employees] AS B
	ON A.[EmployeeID]=B.[EmployeeID]

/*
	OBTENER LOS PRODUCTOS QUE INDISTINTAMENTE TENGAN SI O NO CATEGORIAS DE PRODUCTOS 
*/
SELECT 
	A.ProductID AS CodigoProducto,
	A.ProductName AS NombreProducto,
	B.CategoryID as CodigoCategoria,
	B.CategoryName as NombreCategoria
FROM [dbo].[Products] AS A
	LEFT OUTER JOIN [dbo].[Categories] AS B
	ON A.CategoryID= B.CategoryID

/*
	OBTENER LOS DATOS DE LOS VENDEDORES, PARA ESTO DEBERAN USAR LAS TABLAS EMPLOYEES Y SHIPPERS
	NOTA: SOLO DEBERAN PRESENTAR LOS EMPLEADOS QUE EXISTAN EN AMBAS TABLAS
*/

--INNER JOIN 

SELECT 
	A.*,
	B.ShipperName
	FROM  [dbo].[Employees] AS A
	INNER JOIN [dbo].[Shippers] AS B
	ON A.EmployeeID=B.ShipperID  ---3 registros

--LEFT JOIN
SELECT 
	A.*,
	B.ShipperName
	FROM  [dbo].[Employees] AS A
	LEFT JOIN [dbo].[Shippers] AS B
	ON A.EmployeeID=B.ShipperID   ---10 registros

--RIGHT JOIN 
SELECT 
	A.*,
	B.ShipperName
	FROM  [dbo].[Employees] AS A
	RIGHT JOIN [dbo].[Shippers] AS B
	ON A.EmployeeID=B.ShipperID  ---3 registros



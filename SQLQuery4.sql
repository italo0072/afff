use Northwind


--tabla temporar
select 
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo
into T1
from Customers,Orders,Employees


select * from T1


select
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo

from T1
where    exists(
select
CompanyName
from Customers
where   T1.CompanyName = Customers.CompanyName
)

--operadores no existentes
select
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo

from T1
where  not  exists(
select
CompanyName
from Customers
where   T1.CompanyName = Customers.CompanyName
)



--subconsultas
select ShipName,
 OrderID, ShipCity,EmployeeID,ShipCountry,CustomerID
from Orders
where EmployeeID in(
select 
EmployeeID
from  Employees
where CustomerID in(
select 
CustomerID
from Customers
where EmployeeID='6'
))






---clasula
select
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo
from T1
where BirthDate between '1948/012/08' and '1952/02/19'



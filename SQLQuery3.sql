use Northwind

--tabla temporar
select 
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo
into aaaa
from Customers,Orders,Employees



select * from aaaa

--funcion

select OrderID,LastName,CompanyName,Title,

 Datename(MONTH, OrderDate)+'  ,  '+
 DATENAME(DAY,OrderDate)+' ,   ' +
 DATENAME(YEAR,OrderDate) as fechas  

from aaaa




--operadores existentes
select
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo

from aaaa
where    exists(
select
CompanyName
from Customers
where   aaaa.CompanyName = Customers.CompanyName
)

--operadores no existentes
select
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo

from aaaa
where  not  exists(
select
CompanyName
from Customers
where   aaaa.CompanyName = Customers.CompanyName
)


--subconsultas
select 
 OrderID,EmployeeID,CustomerID
from Orders
where EmployeeID in(
select 
EmployeeID
from  Employees
where CustomerID in(
select 
CustomerID
from Customers
where EmployeeID='4'
))



--clasula
select
LastName,CompanyName,OrderDate,BirthDate,Title,FirstName,OrderID,ReportsTo
from aaaa
where OrderDate between '1996/07/12' and '1997/05/03' AND
OrderID = '10255'


select
*
from Employees
Create database TestDB_Stg
go

Use TestDB_Stg
go

Select * from stg_Employees

CREATE TABLE [dbo].[stg_Employees](
	[EmployeeID] [int] PRIMARY KEY ,
	[LastName] [nvarchar](20) NULL,
	[FirstName] [nvarchar](10) NULL,
	[FullName] [nvarchar](32) NULL,
	[Title] [nvarchar](30) NULL,
	[BirthDate] [datetime] NULL,
	Age int null,
	[HireDate] [datetime] NULL,
	Seniority int null,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[Photo] [image] NULL,
	[ReportsTo] [int] NULL
)




CREATE TABLE [dbo].[stg_Customers](
	[CustomerID] [nchar](5) PRIMARY KEY ,
	[CompanyName] [nvarchar](40) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL
)




CREATE TABLE [dbo].[stg_Orders](
	[OrderID] [int] PRIMARY KEY ,
	[CustomerID] [nchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipCountry] [nvarchar](15) NULL
 )



 CREATE TABLE [dbo].[stg_Order Details](
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [smallint] NULL,
	[Discount] [real] NULL,
	)



CREATE TABLE [dbo].[stg_Products](
	[ProductID] [int] PRIMARY KEY ,
	[ProductName] [nvarchar](40) NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[UnitPrice] [money] NULL,
	ProductType nvarchar(20),
	[Discontinued] [bit] NULL
)



CREATE TABLE [dbo].[stg_Categories](
	[CategoryID] [int]  NULL,
	[CategoryName] [nvarchar](15) NULL,
)




CREATE TABLE [dbo].[stg_Suppliers](
	[SupplierID] [int] PRIMARY KEY  ,
	[CompanyName] [nvarchar](40) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL
)


go
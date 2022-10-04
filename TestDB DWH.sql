Create database TestDB_DWH
go

Use TestDB_DWH
go

CREATE TABLE [dbo].[Dim_Products](
	[ProductSK] [int] identity(100,1) PRIMARY KEY,
	[ProductBK] [int]  NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[ProductUnitPrice] [money] NULL,
	ProductType nvarchar(20),
	[CategoryName] [nvarchar](15) NOT NULL,
	[SupplierName] [nvarchar](40) NOT NULL,
	[Discontinued] [bit] NOT NULL
)


CREATE TABLE [dbo].[Dim_Employees](
	[EmployeeSK] [int] identity(100,1) PRIMARY KEY  ,
	[EmployeeBK] [int]  NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[FullName] [nvarchar](32) NOT NULL,
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




CREATE TABLE [dbo].[Dim_Customers](
	[CustomerSK] int identity(100,1) PRIMARY KEY,
	[CustomerBK] [nchar](5)  NULL,
	[CustomerName] [nvarchar](40)  NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL
)




CREATE TABLE [dbo].[Dim_Orders](
	[OrderSK] [int] identity(100,1) PRIMARY KEY NOT NULL,
	[OrderBK] [int]  NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipCountry] [nvarchar](15) NULL
 )
 


  CREATE TABLE [dbo].[Fact_Sales](
	SalesSK int identity(100,1) PRIMARY KEY not null,
	[OrderSK] [int]  NULL,
	[ProductSK] [int]  NULL,
	[CustomerSK] [int]  NULL,
	[EmployeeSK] [int]  NULL,
	[UnitPrice] [money]  NULL,
	[Quantity] [smallint]  NULL,
	[Discount] [real]  NULL
)
select * from Fact_Sales
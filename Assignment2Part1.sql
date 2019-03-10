use AdventureWorks2017
go

Create Table WorkOrderAnalysis

	(
	ProductName nvarchar(50) not null,
	Productnumber nvarchar(25) not null,
	Color nvarchar(15) null,
	StockedQty int not null,
	ScrappedQty smallint not null, 
	WorkOrderStartDate datetime not null, 
	WorkOrderEndDate datetime not null,
	DaysToComplete int not null
	)
use AdventureWorks2017
go

insert into WorkOrderAnalysis (ProductName,Productnumber,Color,StockedQty,ScrappedQty,WorkOrderStartDate,WorkOrderEndDate,DaysToComplete)

select 
pp.Name
,pp.ProductNumber
,pp.Color
,wo.StockedQty
,wo.ScrappedQty
,wo.StartDate
,wo.EndDate
,DATEDIFF(day,wo.startdate,wo.EndDate) as DaysToComplete
from Production.Product pp
inner join Production.WorkOrder wo
	on pp.ProductID = wo.ProductID
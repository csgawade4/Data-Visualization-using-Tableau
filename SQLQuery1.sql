select count(*)
from master..[Orders$]

select *
from master..[Orders$]
order by 1

select [Order ID], count(*)
from master..[Orders$]
group by [Order ID]
having count(*)>1

select *
from master..[Orders$]
where [Order ID]= 'AG-2013-8490'

select [Row ID], [Order ID], count(*)
from master..[Orders$]
group by [Row ID], [Order ID]
having count(*)>1

select * from master..[Orders$]
where [Ship Date]<[Order Date]

select distinct [Ship Mode] from master..[Orders$]

select min(a.NumOfDays), max(a.NumOfDays)
from(
select DATEDIFF(DAY, [Order Date], [Ship Date]) as NumOfDays, *
from master..[Orders$]
where [Ship Mode]='Same Day') a


select [Customer ID], [Order ID], count(*)
from master..[Orders$]
group by [Customer ID], [Order ID]
order by [Customer ID]


select * from master..[Orders$]
where [Order ID]='CA-2011-138100'
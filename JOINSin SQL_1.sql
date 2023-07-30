/* JOINS :- take data that is in multiple tables and then combine that to create one out put*/
select * from sales;

select * from people;

Select s.SaleDate, s.Amount,  p.Salesperson, s.SPID, p.SPID /*thi code is K sensetive*/
From Sales s
join people p on p.SPID = s.SPID;


select * from products;	
select * from sales;

select  s.salesDate, s.amount, pr.Product 
from sales s
left join products pr on pr.pid = s.pid;

/* joins Multiple table*/
Select s.SaleDate, s.Amount,  p.Salesperson, pr.products, p.Team
From Sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid;

SELECT s.SaleDate, s.Amount, p.Salesperson, pr.products, p.Team
FROM Sales s
JOIN people p ON p.SPID = s.SPID
JOIN products pr ON pr.pid = s.pid
where s.amount<500
and p.Team=''  /* for null values*/
and g.geo in ('newzeland','India') 
order by saleDate;

/* grope by Agrigation to create the report type data setts*/
/* Groupe by gives a pivot repots*/
select Salesperson, sum(amount), avg(Amount), sum(Boxes), avg(Boxes)   from people
group by Salesperson;


select g.geo, sum(amount), avg(Amount), sum(Boxes), avg(Boxes)    from sales s
join geo g on s.geoID = g.geoID
group by g.geoID;








select s.Amount, s.SaleDate, pr.product, p.Team
from sales s 
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID








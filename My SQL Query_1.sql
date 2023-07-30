Select spid, GeoID,amount, saledate from sales
where weekday(saledate)= 4;

Select spid, GeoID,amount, saledate from sales
where GeoID='G3' and year (saledate) =2021;

select * from people
where Team= 'Delish'or'Jucies';

select * from people
where  team = 'Delish' and location = 'Hyderabad';

/* in clouse:- this clouse offers a more flexible way in wich u can add multiple condition and kind of gets that u want*/ 
select *from people
where Team in ('Delish', 'Yummies', 'Jucies')
order by Team;

/* Pattern matching like oprator */
select * from people
where Salesperson like 'B%'; /* anay thing in this colum begains B percentage*/

 select * from people
where Salesperson like '%B%'; /*any where staind B duble perccentage*/

/* case oprators*/
select * from sales;
select SaleDate, Amount,
       case when amount <1000 then 'under_1K' 
            when amount <5000 then 'under_5K'
            when amount <10000 then 'under_10K'
	   else'10K or more'
	end as "amount catogery"
from sales 
order by Amount;


/* JOINS :- take data that is in multiple tables and then combine that to create one out put*/


      
            
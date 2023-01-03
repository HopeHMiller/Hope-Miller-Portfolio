--1. What is the name of customer 11?
use F22_hopemil
select custName
FROM customer
WHERE CustID=11;
--Betsy MC Lean
--2. What is the destination cityid of shipment #19?
select cityID 
from Shipment
where ShipmentID = 19; --this gives the id number of the city not the name so now I will find the city name

select Cityname
from city
where cityID=34;
--riverside

--3. What are the truck numbers that have carried packages (shipments) weighing over 1000 pounds?
select truckid 
from shipment
where ShipWeight >1000;
--4. Give all data for shipments weighing less than or equal to 135 pounds.
select*
from shipment
where ShipWeight <= 135;
--5. Create an alphabetical list of names of customers with more than $3 million in annual revenue. 
select custname
from customer
where annualrevenue > 3000000
order by custname ASC;
--6. Give names and monthly revenue of customers having annual revenue exceeding $1.5 million but less than $2.5 million.
select custname, annualrevenue
from customer
where annualrevenue > 1500000 AND AnnualRevenue < 2500000;
--7. Give IDs for customers who have sent packages (shipments) to cityid 41 or 50 (be sure to list each customer only once).
select custid
from shipment
where cityid=41 OR cityid = 50;
--8. List the city names for cityid 41 and 50.
select cityname
from city
where cityid = 41 OR cityid = 50;
--9. List the cityid and city name for city names starting with ‘B’.
select cityid, cityName
from city
where cityname LIKE 'B%';
--10. List the population of the largest city, the smallest city, and the average city.
select citypop 
from city 
order by citypop desc;
--11. List the city names for cities with ‘ea’ anywhere in their name.
select cityname 
from city
where cityname LIKE '%ea%';
--12. List the city names for cities beginning with ‘C’ and having ‘a’ somewhere else in their name.
select cityname 
from city
where cityname LIKE 'c%' AND cityname LIKE '%a%';
--13. List the city names for cities beginning with “New” and having exactly five more characters.
select cityname 
from city
where cityname LIKE 'new' and cityname like '%[a-z][a-z][a-z][a-z][a-z]'
--14. List all the customer types (custtype) without any duplicates.
select distinct custtype
from customer
--15. Give names and annual revenue of customers that are not retailers.
select custname, annualRevenue
from customer 
where custtype not in ('Retail')
--16. Which shipments weighed more than 500 pounds and went to the city with cityid 23?
select ShipmentID 
from shipment
where ShipWeight >500 and CityID = 23;
--17. Give the shipment id, truck id, and weight of all shipments during the months of June, July and August 2007.  List the data from oldest to newest shipment dates.
select ShipmentID, truckid, shipweight
from shipment
where shipdate LIKE '%[6-8]%' and shipdate like '2007%'
--18. How many unique customers are in the shipment table?
select distinct custid
from shipment;
--8 unique customers
--19. List all data for shipments that haven’t been shipped.
select * 
from shipment 
where shipdate is null;
--20. How many customers have had shipments weighing over 500 pounds?
select distinct custid
from shipment
where ShipWeight >500;
--8 unique customer
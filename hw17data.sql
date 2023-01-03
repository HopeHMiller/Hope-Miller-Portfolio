

--1 List the total annual revenue for customers by their customer type (CustType).
select custtype, sum(annualrevenue)
from customer
group by CustType;

-- 2 List the average monthly revenue for customers by their customer type (CustType)
select avg(annualrevenue/12), CustType
from customer
group by CustType;

--3 List the average shipment weight by truckid.  Exclude average shipment weights less than 600 pounds.
select TruckID, avg(shipweight)
from shipment
group by TruckID
having avg(shipweight)>=600

--4 List the average shipment weight by customerid
select CustID, avg(shipweight)
from shipment
group by CustID
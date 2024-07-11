use cars;
-- READ DATA
select * 
from car_details;

-- total cars
select count(*) 
from car_details;

-- how many cars available in 2023
select count(*) 
from car_details
WHERE year = 2023;

-- how many cars available in 2020,2021,2022

select count(*) 
from car_details
WHERE year = 2020;

select count(*) 
from car_details
WHERE year = 2021;

select count(*) 
from car_details
WHERE year = 2022;

select year, count(*) 
from car_details 
WHERE year IN(2020,2021,2022) GROUP BY year;

-- client asked to print total of all cars by year 
SELECT year, count(*)
FROM car_details
GROUP BY year;

-- how many diesel cars in 2020
select count(*) 
from car_details
WHERE year = 2020 AND fuel ="diesel";

-- how many petrol cars in 2020
select count(*) 
from car_details
WHERE year = 2020 AND fuel ="petrol";


-- print all the fuel cars by year
SELECT year, count(*)
FROM car_details WHERE fuel = "diesel"
GROUP BY year;

SELECT year, count(*)
FROM car_details WHERE fuel = "petrol"
GROUP BY year;

SELECT year, count(*)
FROM car_details WHERE fuel = "CNG"
GROUP BY year;

-- which year have more than 100 cars
SELECT year, count(*)
FROM car_details 
 GROUP BY year HAVING count(*)>100 ;
 
SELECT year, count(*)
FROM car_details 
 GROUP BY year HAVING count(*)<50 ;
 
-- all car count details between 2015 and 2023
SELECT year,count(*)
from car_details 
WHERE year BETWEEN 2015 AND 2023
GROUP BY year;

-- all car details between 2015 and 2023
SELECT *
from car_details 
WHERE year BETWEEN 2015 AND 2023;
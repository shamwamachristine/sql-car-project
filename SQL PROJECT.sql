USE cars;
-- Read Data --
SELECT * FROM car_data;

-- Total Cars: To get count of total records--
SELECT COUNT(*) FROM car_data;

-- How many cars will be available in 2023 --
SELECT COUNT(*) FROM car_data WHERE year = 2023;

-- How many cars will be available in 2020,2021,2022--
SELECT COUNT(*) FROM car_data WHERE year = 2020; #74
SELECT COUNT(*) FROM car_data WHERE year = 2021; #7
SELECT COUNT(*) FROM car_data WHERE year = 2022; #7

-- Using Group by--
SELECT COUNT(*) FROM car_data WHERE year in (2020,2021,2022) GROUP BY year;



-- Print the total number of cars based on year--
SELECT year,COUNT(*) FROM car_data GROUP BY year;

-- How many diesel cars will be there in 2020--
SELECT COUNT(*) FROM car_data WHERE year = 2020 AND fuel = "Diesel";




-- How many petrol cars will be there in 2020--
SELECT COUNT(*) FROM car_data WHERE year = 2020 AND fuel = "petrol";


-- Print all fuel types by year--
SELECT year, COUNT(*) FROM car_data WHERE fuel = "Diesel" GROUP BY year;
SELECT year, COUNT(*) FROM car_data WHERE fuel = "Petrol" GROUP BY year;
SELECT year, COUNT(*) FROM car_data WHERE fuel = "CNG" GROUP BY year;


-- Which year had more than 100 cars--
SELECT year, COUNT(*) FROM car_data GROUP BY year HAVING COUNT(*)>100;


-- All cars count details between 2015 and 2023(list)--
SELECT COUNT(*) FROM car_data WHERE year BETWEEN 2015 AND 2023;

-- All car details between 2015 and 2023--
SELECT * FROM car_data WHERE year BETWEEN 2015 AND 2023;

-- THE END--





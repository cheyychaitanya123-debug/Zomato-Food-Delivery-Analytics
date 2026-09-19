-- database: ./zomato_delivery_cleaned.db

-- Q1. How many total orders are there?
SELECT COUNT(*) AS total_deliveries
FROM deliveries;

-- Q2. What is the Average Delivery time?
SELECT avg("Time_taken (min)") AS avg_time
FROM deliveries;

-- Q3. Which cities have the longest average delivery time?
SELECT City, AVG("Time_taken (min)") AS avg_delivery_time
FROM deliveries
GROUP BY City
ORDER BY avg_delivery_time DESC;

-- Q4. Which type of vehicle has the highest average delivery time?
SELECT Type_of_vehicle, 
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Type_of_vehicle
ORDER BY Avg_delivery_time DESC;

-- Q5. Which weather condition has the highest average delivery time?
SELECT Weather_conditions,
AVG("Time_taken (min)") as Avg_delivery_time
FROM deliveries
GROUP BY Weather_conditions
ORDER BY Avg_delivery_time DESC;

-- Q6. Which road traffic density has the highest average delivery time?
SELECT Road_traffic_density,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Road_traffic_density
ORDER BY Avg_delivery_time DESC;

--Q7. Which type of order has the highest average delivery time?
SELECT Type_of_order,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Type_of_order
ORDER BY Avg_delivery_time DESC;

-- Q8. Which vehicle type has the lowest average delivery time?
SELECT Type_of_vehicle,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Type_of_vehicle
ORDER BY Avg_delivery_time ASC
LIMIT 1;

-- Q9. Which city has the highest number of deliveries?
SELECT city,
COUNT(*) AS Total_deliveries
FROM deliveries
GROUP BY City
ORDER BY Total_deliveries DESC;

-- Q10. Which weather condition has the highest number of deliveries?
SELECT weather_conditions,
COUNT(*) AS Total_orders
from deliveries
GROUP BY Weather_conditions
ORDER BY Total_orders DESC;

-- Q11. Which road traffic density has the highest number of deliveries?
SELECT Road_traffic_density,
COUNT(*) AS Total_orders
FROM deliveries
GROUP BY Road_traffic_density
ORDER BY Total_orders DESC;

-- Q12. Which type of vehicle has the highest number of deliveries?
SELECT Type_of_vehicle,
COUNT(*) AS Total_orders
FROM deliveries
GROUP BY Type_of_vehicle
ORDER BY Total_orders DESC;

-- Q13. What is the average delivery time for each city, but show only cities where the average delivery time is greater than 25 minutes?
SELECT City, 
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY City
HAVING AVG("Time_taken (min)") > 25
ORDER BY Avg_delivery_time DESC;

-- Q14. Find the top 3 cities with the highest average delivery time.
SELECT city,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY City
ORDER BY Avg_delivery_time DESC
LIMIT 3;

-- Q15. How many unique delivery persons are there for each city?
SELECT City,
COUNT(DISTINCT Delivery_person_ID) as Total_Riders
FROM deliveries
GROUP BY City
ORDER BY Total_Riders DESC;

-- Q16. Which cities have more than 10,000 deliveries?
SELECT City,
COUNT(*) AS Total_deliveries
FROM deliveries
GROUP BY City
HAVING COUNT(*) > 10000
ORDER BY Total_deliveries DESC;

-- Q17. Find the average delivery time for each vehicle type, but only show vehicle types where the average delivery time is greater than 25 minutes.

SELECT Type_of_vehicle,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Type_of_vehicle
HAVING AVG("Time_taken (min)") > 25
ORDER BY Avg_delivery_time DESC;

-- Q18. Find the average delivery time for each weather condition, but only show weather conditions where:
---the average delivery time is greater than 25 minutes, AND
---there are more than 1,000 deliveries.
SELECT Weather_conditions, 
COUNT(*) AS Delivery_count,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Weather_conditions
HAVING AVG("Time_taken (min)") > 25 
AND COUNT(*) > 1000
ORDER BY Delivery_count DESC;

-- Q19. Find the top 3 cities with the highest number of unique delivery persons.
SELECT City,
COUNT(DISTINCT Delivery_person_ID) AS Driver_count
FROM deliveries 
GROUP BY City
ORDER BY Driver_count DESC
LIMIT 3;

-- Q20. Find the average delivery time for each city and the number of deliveries in each city.
SELECT City,
COUNT(*) AS Total_deliveries,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY City
ORDER BY Total_deliveries DESC;

-- Q21. Find all delivery persons whose average delivery time is greater than 30 minutes.
SELECT Delivery_person_ID,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries
GROUP BY Delivery_person_ID
HAVING AVG("Time_taken (min)") > 30
ORDER BY Avg_delivery_time DESC;

-- Q22. Find the top 5 delivery persons who have completed the highest number of deliveries.
SELECT Delivery_person_ID,
COUNT(*) AS Delivery_count
FROM deliveries
GROUP BY Delivery_person_ID
ORDER BY Delivery_count DESC
LIMIT 5;

-- Q23. Find the average delivery time for each city, but only include cities that have more than 5,000 deliveries.
SELECT City,
    AVG("Time_taken (min)") AS Avg_delivery_time,
    COUNT(*) AS Orders_count
FROM deliveries
GROUP BY City
HAVING COUNT(*) > 5000
ORDER BY Avg_delivery_time DESC;

-- Q24. Categorize each delivery into a delivery-speed category

SELECT 
 Delivery_person_ID,
"Time_taken (min)",
CASE
   WHEN "Time_taken (min)" <= 20 THEN "Fast"
   WHEN "Time_taken (min)" <= 30 THEN "Medium"
   ELSE "slow"
END AS Delivery_category
FROM deliveries;

-- Q25. Count how many deliveries are Fast, Medium, and Slow.
SELECT 
   CASE
       WHEN "Time_taken (min)" <= 20 THEN "Fast"
       WHEN "Time_taken (min)" <= 30 THEN "Medium"
       ELSE "slow"
   END AS  Delivery_category,
  COUNT(*) AS Total_deliveries
FROM deliveries
GROUP BY Delivery_category
ORDER BY Total_deliveries DESC;

-- Q26. Find the number of deliveries in each delivery-speed category for each city.
SELECT City,
    CASE 
        WHEN "Time_taken (min)" <= 20 THEN 'Fast'
        WHEN "Time_taken (min)" <= 30 THEN 'Medium'
        ELSE 'Slow'
    END AS Delivery_category,
COUNT(*) AS Total_deliveries
FROM deliveries
GROUP BY city, Delivery_category
ORDER BY Total_deliveries DESC;

--Q27. For each city, find:
--- Total deliveries
--- Number of Fast deliveries (≤ 20 min)
--- Number of Slow deliveries (> 30 min)
SELECT City,
COUNT(*) as Total_orders,
SUM(CASE
      WHEN "Time_taken (min)" <= 20 THEN 1
      ELSE 0
      END
    ) AS Fast_deliveries,

SUM(CASE
      WHEN "Time_taken (min)" > 30 THEN 1
      ELSE 0
      END
    ) as Slow_deliveries

FROM deliveries
GROUP BY City;

-- Q28. Find the total number of deliveries that were completed in Sunny weather conditions AND had Road_traffic_density = Low.
SELECT Weather_conditions,
    Road_traffic_density,
    COUNT(*) AS Total_deliveries
FROM deliveries
WHERE Weather_conditions == 'Sunny'
AND Road_traffic_density == 'Low'
GROUP BY Weather_conditions, Road_traffic_density;

-- Q29. Find how many deliveries have a missing (NULL) value in Weather_conditions.
SELECT COUNT(*) AS Missing_values
FROM deliveries
WHERE Weather_conditions IS NULL;

-- Q30. Find the number of deliveries where Weather_conditions is NOT missing.
SELECT COUNT(*) AS Not_Missing
FROM deliveries
WHERE Weather_conditions IS NOT NULL;

-- Q31. Find the number of duplicate combinations of Delivery_person_ID and Order_Date.
SELECT Delivery_person_ID, Order_Date,
COUNT(*) AS Number_of_Records
FROM deliveries
GROUP BY Delivery_person_ID, Order_Date
HAVING COUNT(*) > 1;

-- Q32. Find the top 5 delivery persons who handled the most deliveries overall.
SELECT Delivery_person_ID,
COUNT(*) AS Delivery_Count
FROM deliveries
GROUP BY Delivery_person_ID
HAVING COUNT(*)> 50
ORDER BY Delivery_Count
LIMIT 5;

-- Q33. Find all deliveries where the delivery time is greater than the overall average delivery time.
SELECT Delivery_person_ID,
    "Time_taken (min)"
FROM deliveries
WHERE "Time_taken (min)" > (
    SELECT AVG("Time_taken (min)") 
    FROM deliveries
    );
    
-- Q34. Write a query to show the driver name and their total number of deliveries.
SELECT dr.Driver_name, 
COUNT(*) AS Total_deliveries
FROM deliveries d
INNER JOIN drivers dr
ON d.Delivery_person_ID = dr.Delivery_person_ID
GROUP BY dr.Driver_name
ORDER BY Total_deliveries DESC;


-- Q35. Find the Percentage of deliveries taking more than 30 minutes
SELECT
   SUM(
     CASE
        WHEN "Time_taken (min)" > 30 THEN 1 
        ELSE 0
    END
) * 100/COUNT(*) AS Slow_delivery_Percentage
FROM deliveries;

-- Q36. Find the minimum, maximum, and average delivery time.
SELECT MIN("Time_taken (min)") AS Min_delivery_time, 
MAX("Time_taken (min)")  AS Max_delivery_time,
AVG("Time_taken (min)") AS Avg_delivery_time
FROM deliveries;

-- Q37. Q35. Find the number of deliveries made on each Order_Date
SELECT Order_Date, 
COUNT(*) AS Total_deliveries
FROM deliveries
GROUP BY Order_Date
ORDER BY Total_deliveries DESC;

-- Q38. Find the city with the highest average delivery time, but only among cities having more than 5,000 deliveries.
SELECT City,
COUNT(*) AS Total_Orders,
AVG("Time_taken (min)") as Avg_delivery_time
FROM deliveries
GROUP BY City
HAVING COUNT(*) > 5000
ORDER BY Avg_delivery_time DESC
LIMIT 1;



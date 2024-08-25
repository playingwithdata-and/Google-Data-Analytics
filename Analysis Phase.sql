-- Analyze Phase --

-- 1. Riders by member and casual users --

SELECT
member_casual AS membership_type,
COUNT(ride_id) AS no_of_riders,
CONCAT (CAST (COUNT (member_casual) * 100.0/ SUM (COUNT (member_casual)) OVER () AS DECIMAL (10,2)), '%') AS membership_percentage
FROM dbo.[cyclistic]
GROUP BY
member_casual;

-- 2. Proportion of rides by Bike type --

SELECT rideable_type AS bike_type,
member_casual AS membership_type,
COUNT(rideable_type) AS individual_membership_type
FROM dbo.[cyclistic]
GROUP BY rideable_type, member_casual
ORDER BY COUNT(rideable_type) DESC;

-- 3. Mostly Used Start Station by member and casual users --

SELECT TOP 10
COUNT (ride_id) AS No_Riders,
start_station_name,
member_casual
FROM dbo.cyclistic
GROUP BY
start_station_name,
member_casual
ORDER BY
COUNT (ride_id) DESC;

-- 4. Mostly Used End Station by member and casual users --

SELECT TOP 10
COUNT (ride_id) AS No_Riders,
end_station_name,
member_casual
FROM dbo.cyclistic
GROUP BY
end_station_name,
member_casual
ORDER BY
COUNT (ride_id) DESC;

-- 5. Started time analysis by member and casual users --

-- BY MONTH --

SELECT 
COUNT(ride_id) AS No_Riders,
DATEPART(MONTH, started_at) AS Started_month,
-- DATEPART(WEEKDAY, started_at) AS Started_day,
--DATEPART(HOUR, started_at) AS Started_hour,
member_casual
FROM dbo.cyclistic
GROUP BY member_casual,
DATEPART(MONTH, started_at)
ORDER BY COUNT(ride_id) DESC;

-- BY Day --

SELECT 
COUNT(ride_id) AS No_Riders,
-- DATEPART(MONTH, started_at) AS Started_month,
DATEPART(WEEKDAY, started_at) AS Started_day,
--DATEPART(HOUR, started_at) AS Started_hour,
member_casual
FROM dbo.cyclistic
GROUP BY member_casual,
DATEPART(WEEKDAY, started_at)
ORDER BY COUNT(ride_id) DESC;

-- By Hours --

SELECT 
COUNT(ride_id) AS No_Riders,
-- DATEPART(MONTH, started_at) AS Started_month,
-- DATEPART(WEEKDAY, started_at) AS Started_day,
DATEPART(HOUR, started_at) AS Started_hour,
member_casual
FROM dbo.cyclistic
GROUP BY member_casual,
DATEPART(HOUR, started_at)
ORDER BY COUNT(ride_id) DESC;

-- 6. Ended time analysis by member and casual users --

-- BY MONTH --

SELECT 
COUNT(ride_id) AS No_Riders,
DATEPART(MONTH, ended_at) AS ended_month,
-- DATEPART(WEEKDAY, ended_at) AS ended_day,--
-- DATEPART(HOUR, ended_at) AS ended_hour,--
member_casual
FROM dbo.cyclistic
GROUP BY member_casual,
DATEPART(MONTH, ended_at)
ORDER BY COUNT(ride_id) DESC;


-- BY Day --

SELECT 
COUNT(ride_id) AS No_Riders,
-- DATEPART(MONTH, ended_at) AS ended_month,
DATEPART(WEEKDAY, ended_at) AS ended_day,
-- DATEPART(HOUR, ended_at) AS ended_hour,
member_casual
FROM dbo.cyclistic
GROUP BY member_casual,
DATEPART(WEEKDAY, started_at)
ORDER BY COUNT(ride_id) DESC;

-- BY Hours --

SELECT 
COUNT(ride_id) AS No_Riders,
-- DATEPART(MONTH, ended_at) AS Started_month,
-- DATEPART(WEEKDAY, ended_at) AS Started_day,
DATEPART(HOUR, ended_at) AS Started_hour,
member_casual
FROM dbo.cyclistic
GROUP BY member_casual,
DATEPART(HOUR, ended_at) 
ORDER BY COUNT(ride_id) DESC;

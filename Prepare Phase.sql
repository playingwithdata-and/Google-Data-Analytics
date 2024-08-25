-- Prepare Phase --

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM dbo.[202401]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM dbo.[202402]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM dbo.[202403]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM dbo.[202404]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM dbo.[202405]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM dbo.[202406]
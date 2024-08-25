-- Process Phase --

-- Identify and remove Null values -- 

SELECT *
FROM dbo.cyclistic
WHERE
ride_id IS NULL OR
started_at IS NULL OR
ended_at IS NULL OR
rideable_type IS NULL OR
start_station_name IS NULL OR
end_station_name IS NULL


DELETE FROM dbo.cyclistic
WHERE
ride_id IS NULL OR
started_at IS NULL OR
ended_at IS NULL OR
rideable_type IS NULL OR
start_station_name IS NULL OR
end_station_name IS NULL

-- Identify And Remove Duplicates value --

SELECT *,
COUNT(*) AS duplicate_count
FROM dbo.cyclistic
GROUP BY
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
HAVING COUNT(*) > 1;

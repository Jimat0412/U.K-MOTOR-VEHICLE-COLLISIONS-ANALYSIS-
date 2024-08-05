CREATE DATABASE NYC_Collision;
USE NYC_Collision;
UPDATE NYC_Collisions
SET Date = STR_TO_DATE(Date, '%d/%m/%Y %H:%i:%s');
ALTER TABLE  NYC_Collisions
MODIFY COLUMN Date DATE;
UPDATE  NYC_Collisions
SET Time = STR_TO_DATE(Time, '%H:%i:%s');
ALTER TABLE NYC_Collisions
MODIFY COLUMN Time TIME;
ALTER TABLE NYC_Collisions
CHANGE COLUMN ï»¿Collision ID Collision_ID INT;
SELECT     MONTH(date) AS month,     COUNT(*) AS accident_count,  
   (COUNT(*) /
 (SELECT COUNT(*) FROM NYC_Collisions) * 100) AS percentage 
 FROM NYC_Collisions
GROUP BY     
MONTH(date);
SELECT     DAYOFWEEK(date) AS day_of_week,     COUNT(*) AS accident_count FROM     NYC_Collisions
GROUP BY    
 DAYOFWEEK(date);
SELECT     HOUR(time) AS hour_of_day,     COUNT(*) AS accident_count FROM      NYC_Collisions
GROUP BY     HOUR(time);
 SELECT     Street_Name,     COUNT(*) AS accident_count,     (COUNT(*) / (SELECT COUNT(*) 
 FROM NYC_Collisions) * 100) AS percentage
 FROM     NYC_Collisions
GROUP BY     Street_Name
ORDER BY     accident_count DESC LIMIT 1;
SELECT 
    contributing_factor, 
    COUNT(*) AS accident_count 
FROM 
    NYC_Collisions
GROUP BY 
    contributing_factor 
ORDER BY 
    accident_count DESC 
LIMIT 1;
SELECT 
    contributing_factor, 
    COUNT(*) AS accident_count 
FROM 
    NYC_Collisions
WHERE 
    `Persons Killed` > 0 
    OR `Pedestrians Killed` > 0 
    OR `Cyclists Killed` > 0 
    OR `Motorists Killed` > 0 
GROUP BY 
    contributing_factor 
ORDER BY 
    accident_count DESC;


DESCRIBE NYC_Collisions;

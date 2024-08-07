show databases;
use project1;
SELECT * 
FROM weather_data wd;

#Find all records where the weather was exactly clear.
SELECT * 
FROM weather_data wd 
WHERE Weather = "Clear";

#Find the number of times the wind speed was exactly 4 km/hr
SELECT * 
FROM weather_data wd 
WHERE `Wind Speed_km/h` = 4;

#Check if there are any NULL values present in the dataset.
DESCRIBE weather_data; 

#Rename the column "Weather" to "Weather_Condition."
ALTER TABLE weather_data
CHANGE COLUMN Weather Weather_Condition VARCHAR(100);

#What is the mean visibility of the dataset?
SELECT avg(Visibility_km) 
FROM weather_data wd; 

#Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
SELECT * 
FROM weather_data wd 
WHERE `Wind Speed_km/h` > 24 and Visibility_km = 25;

#What is the mean value of each column for each weather condition?
SELECT 
AVG(Temp_C),
AVG(`Dew Point Temp_C`),
AVG(`Rel Hum_%`),
AVG(`Wind Speed_km/h`),
AVG(Press_kPa), 
AVG(Visibility_km) 
FROM weather_data wd;

#Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.
SELECT * 
FROM weather_data wd 
WHERE Weather_Condition = "Clear" and `Rel Hum_%` > 50 or Visibility_km > 40;

#Find the number of weather conditions that include snow.
SELECT * 
FROM weather_data wdRO 
WHERE Weather_Condition LIKE '%Snow%'; 


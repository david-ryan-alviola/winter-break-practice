# 24-DEC-2020

# Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

SELECT *
    FROM city
    WHERE countryCode = 'USA'
        AND population > 100000;

# Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

SELECT name
    FROM city
    WHERE countryCode = 'USA'
        AND population > 120000;

# Query all columns (attributes) for every row in the CITY table.

SELECT * 
    FROM city;

# Query all columns for a city in CITY with the ID 1661.

SELECT *
    FROM city
    WHERE id = 1661;

# Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT *
    FROM city
    WHERE countryCode = 'JPN';

# Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT name
    FROM city
    WHERE countryCode = 'JPN';

# Query a list of CITY and STATE from the STATION table.

SELECT city, state
    FROM station;

# Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

SELECT DISTINCT city
    FROM station
    WHERE id % 2 = 0;

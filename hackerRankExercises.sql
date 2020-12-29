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

# 29-DEC-2020

# Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(city) - COUNT(DISTINCT city)
    FROM station;

# Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

SELECT city, length(city) as length
    FROM station
    ORDER BY length, city ASC
    LIMIT 1;
SELECT city, length(city) as length
    FROM station
    ORDER BY length DESC, city ASC
    LIMIT 1;

# Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT city
    FROM station
    WHERE city LIKE ('A%')
        OR city LIKE ('E%')
        OR city LIKE ('I%')
        OR city LIKE ('O%')
        OR city LIKE ('U%');

# Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT city
    FROM station
    WHERE city LIKE ('%A')
        OR city LIKE ('%E')
        OR city LIKE ('%I')
        OR city LIKE ('%O')
        OR city LIKE ('%U');

# Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

SELECT DISTINCT city
    FROM station
    WHERE city LIKE ('A%A')
        OR city LIKE ('A%E')
        OR city LIKE ('A%I')
        OR city LIKE ('A%O')
        OR city LIKE ('A%U')
        OR city LIKE ('E%A')
        OR city LIKE ('E%E')
        OR city LIKE ('E%I')
        OR city LIKE ('E%O')
        OR city LIKE ('E%U')
        OR city LIKE ('I%A')
        OR city LIKE ('I%E')
        OR city LIKE ('I%I')
        OR city LIKE ('I%O')
        OR city LIKE ('I%U')
        OR city LIKE ('O%A')
        OR city LIKE ('O%E')
        OR city LIKE ('O%I')
        OR city LIKE ('O%O')
        OR city LIKE ('O%U')
        OR city LIKE ('U%A')
        OR city LIKE ('U%E')
        OR city LIKE ('U%I')
        OR city LIKE ('U%O')
        OR city LIKE ('U%U');

# Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
    FROM station
    WHERE city NOT LIKE 'A%'
        AND city NOT LIKE 'E%'
        AND city NOT LIKE 'I%'
        AND city NOT LIKE 'O%'
        AND city NOT LIKE 'U%';

# Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
    FROM station
    WHERE city NOT LIKE '%A'
        AND city NOT LIKE '%E'
        AND city NOT LIKE '%I'
        AND city NOT LIKE '%O'
        AND city NOT LIKE '%U';

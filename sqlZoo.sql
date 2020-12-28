#23-DEC-2020

# The example uses a WHERE clause to show the population of 'France'. Note that strings (pieces of text that are data) should be in 'single quotes';
# Modify it to show the population of Germany

SELECT population FROM world
  WHERE name = 'Germany';

# Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.
# Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

# Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km.
# Modify it to show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

# Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name
  FROM world
 WHERE population > 200000000;

# Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population AS per_capita_gdp
    FROM world
    WHERE population >= 200000000;

# Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

SELECT name, population/1000000 AS popl_in_mil
    FROM world
    WHERE continent = 'South America';

# Show the name and population for France, Germany, Italy

SELECT name, population
    FROM world
    WHERE name IN ('France', 'Germany', 'Italy');

# Show the countries which have a name that includes the word 'United'

SELECT name
    FROM world
    WHERE name LIKE '%united%';

# Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.
# Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area
    FROM world
    WHERE area > 3000000 OR population > 250000000;

# Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.

SELECT name, population, area
    FROM world
    WHERE (area > 3000000 AND population <= 250000000)
        OR (area <= 3000000 AND population > 250000000);

# Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
# For South America show population in millions and GDP in billions both to 2 decimal places

SELECT name, ROUND(population/1000000, 2) AS popl_in_mil, ROUND(gdp/1000000000, 2) AS gdp_in_bil
    FROM world
    WHERE continent = 'South America'; 

# Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.
# Show per-capita GDP for the trillion dollar countries to the nearest $1000.

SELECT name, ROUND(gdp/population, -3) as per_capita_gdp
    FROM world
    WHERE gdp >= 1000000000000;

# Show the name and capital where the name and the capital have the same number of characters.

SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital);

# The capital of Sweden is Stockholm. Both words start with the letter 'S'.
# Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.

SELECT name, capital
    FROM world
    WHERE LEFT(name, 1) = LEFT(capital, 1)
        AND name <> capital;

# Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. They don't count because they have more than one word in the name.
# Find the country that has all the vowels and no spaces in its name.

SELECT name
   FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';

# 28-DEC-2020

# Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'

SELECT matchid, player
    FROM goal
    WHERE teamid = 'GER';

# Show id, stadium, team1, team2 for just game 1012

SELECT id,stadium,team1,team2
  FROM game
  WHERE id = 1012;

# Modify it to show the player, teamid, stadium and mdate for every German goal.

SELECT player, teamid, stadium, mdate
  FROM game 
    JOIN goal ON (id=matchid)
  WHERE teamid = 'GER';

# Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'

SELECT team1, team2, player
  FROM game 
    JOIN goal ON (id=matchid)
  WHERE player LIKE 'Mario%';

# Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10

SELECT player, teamid, coach, gtime
  FROM goal
    JOIN eteam on teamid = id
 WHERE gtime<=10;

# List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.

SELECT mdate, teamname
  FROM game
    JOIN eteam ON team1 = eteam.id
  WHERE coach = 'Fernando Santos';

# List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'

SELECT player
  FROM goal
    JOIN game ON matchid = id
  WHERE stadium = 'National Stadium, Warsaw';

# Instead show the name of all players who scored a goal against Germany.

SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER')
      AND teamid NOT LIKE 'GER';

# Show teamname and the total number of goals scored.

SELECT teamname, count(teamname) AS goals_scored
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname;

# Show the stadium and the number of goals scored in each stadium.

SELECT stadium, count(stadium) AS goals_scored_in_stadium
  FROM game JOIN goal ON id=matchid
 GROUP BY stadium;

# For every match involving 'POL', show the matchid, date and the number of goals scored.

SELECT matchid, mdate, count(*) AS total_goals
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
    GROUP BY matchid, mdate;

# For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'

SELECT matchid, mdate, count(*) AS total_goals
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'GER' OR team2 = 'GER') AND
    teamid = 'GER'
  GROUP BY matchid, mdate;



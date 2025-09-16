

--	Who is the highest earner in terms of total earnings?

SELECT TOP 1 Name, Sport,Total_Earnings AS Highest_Earning
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY Total_Earnings DESC;


-- ●	Who is the highest earner in on-the-field earnings?

SELECT TOP 1 Name, Sport, On_the_Field_Earnings
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY On_the_Field_Earnings DESC;


-- ●	Who is the highest earner in off-the-field earnings?

SELECT TOP 1 Name, Sport, Off_the_field_earnings
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY Off_the_Field_Earnings;


-- ●	What are the total earnings for all soccer players?

SELECT SUM (Total_Earnings) AS Soccer_Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'Soccer';



-- ●	Who is the highest earning soccer player?

SELECT TOP 1 Name, Sport, Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'Soccer'
ORDER BY Total_Earnings DESC;


-- ●	What are the on-the-field and off-the-field earnings for Lionel Messi?

SELECT Name, Sport, On_the_field_earnings, Off_the_field_earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Name = 'Lionel Messi';


-- ●	How many basketball players are in the top 10 earners list?

SELECT COUNT (*) AS BasketBall_players_in_Top10
FROM (SELECT TOP 10 Name, Sport, Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY Total_Earnings DESC) AS Top10
WHERE Sport = 'Basketball';


-- ●	What is the total earnings for basketball players?


SELECT SUM (Total_Earnings) AS Total_BasketBall_Players_Earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'Basketball';

-- ●	Who is the highest earning golf player?

SELECT TOP 1 Name, Sport, Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'golf' 
ORDER BY Total_Earnings DESC;

-- ●	What is the total off-the-field earnings for golf players?

SELECT SUM (Off_the_Field_Earnings) AS Total_Golf_Off_Field_Earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'Golf';


-- ●	How many football players are in the top 10 earners list?

SELECT COUNT (*) AS Football_Players_in_Top10
FROM (SELECT TOP 10 Name, Sport, Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY Total_Earnings DESC) AS Top10
WHERE Sport = 'Football';


-- ●	What is the total on-the-field earnings for football players?

SELECT SUM (On_the_Field_Earnings) AS TotalFootballPlayer_on_field_earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'Football';



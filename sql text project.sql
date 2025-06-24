SELECT *
FROM SQL_TEXT

-- TEXT FUNCTION QUESTION--
-- 1 RETRIEVE THE FULL_NAME IN UPPERCASE--
;
SELECT upper(full_name) AS FULL_NAME
FROM SQL_TEXT
;
-- 2 EXTRACT THE FIRST 5 CHARACTER FROM THE EMAIL COLUMN--
SELECT left(email,5)
from sql_text
;
-- 3 FIND THE LENGTH OF EACH CITY --
SELECT length(city)
from sql_text
;

-- 4 extract the first three letter from each full name --
SELECT left(full_name,3)
from sql_text
;
-- 5 retrive only the last three letters of country --
select right(country,3)
from sql_text
;

-- 6 concatenate full_name and email into a single column as contact info --
SELECT concat(full_name, email) as contact_info
from sql_text
; 
-- 7 find all records where email ends with ".com"
SELECT *
from sql_text
where email like '%.com'
;
-- 8 convert notes to lowercase and remove any leading or trailing spaces --
SELECT  lower(trim(notes)) new_note
from sql_text
;
-- 9 count the number of full_name values that start with A --
SELECT count(full_name)
from sql_text
where full_name like 'a%'
;
-- 10 count the total number of character in each email --
select email,
char_length(email) as character_length
from sql_text
;

-- DATE FUNCTION QUESTIONS--
-- 11 Retrieve the year from the registration date --
select year(registration_date) year_of_reg
from sql_text
;
-- 12 Retrieve all records where registration date is in 2023 --
select *
FROM sql_text
WHERE year(registration_date) in (2023)
;

-- 13 calculate the number of days between registration_date and last_login --
SELECT full_name, email, registration_date, last_login, 
datediff(last_login, registration_date) date_difference
from sql_text
;
-- 14 extract the year from the registration date--
select *, year(registration_date)
from sql_text
;
-- 15 extract the month from the registration date--
SELECT *, monthname(registration_date)
from sql_text
;
-- 16 find all users who registered in the month of january --
select *
from sql_text
where month(registration_date) in (1)
;
-- 17 Add 1 year to registration_date --
SELECT *, adddate(registration_date,interval 1 YEAR) AS registration_date_plus_1_year
from sql_text
;
-- 18 Retrieve reocrds where last login happens before registration date --
Select *
from sql_text
where last_login < registration_date
;
-- 19 Find the most recent last login date --
Select last_login 
from sql_text 
order by last_login desc
limit 1
;
-- 20 Find the oldest registration date in the table --
Select registration_date
from sql_text
order by registration_date asc
limit 1
;
-- SELECT *
-- FROM parks_and_recreation.employee_demographics;
-- group by
SELECT gender,avg(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender,age ASC;


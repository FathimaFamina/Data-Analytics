-- WHERE CLAUSE
-- SELECT * 
-- FROM employee_salary
-- WHERE first_name ='Leslie';

-- SELECT * 
-- FROM employee_salary
-- WHERE salary > 50000;

-- SELECT * 
-- FROM employee_salary
-- WHERE salary <= 50000;

-- SELECT *
-- FROM employee_demographics
-- WHERE gender != 'female';

-- SELECT *
-- FROM employee_demographics
-- WHERE birth_date > '1985-01-01';

-- SELECT *
-- FROM employee_demographics
-- WHERE birth_date > '1985-01-01'
-- OR gender='male';

-- SELECT *
-- FROM employee_demographics
-- WHERE birth_date > '1985-01-01'
-- OR gender='male';


-- LIKE

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';


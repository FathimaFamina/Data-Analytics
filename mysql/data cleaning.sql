-- data cleaning
use world_layoffs;
select * 
from layoffs;

create table layoffs_staging
like layoffs;

select * 
from layoffs_staging;

insert layoffs_staging
select * 
from layoffs;

select *, 
row_number() over(
partition by company,industry,total_laid_off,percentage_laid_off,'date') as row_num
from layoffs_staging;

with duplicate_cte as 
(
select *, 
row_number() over(
partition by company,industry,total_laid_off,percentage_laid_off,'date') as row_num
from layoffs_staging 
)
select *
from duplicate_cte
where row_num > 1;

select *
from layoffs_staging
where company = 'Casper';

with duplicate_cte as 
(
select *, 
row_number() over(
partition by company,industry,total_laid_off,percentage_laid_off,'date') as row_num
from layoffs_staging 
)
delete
from duplicate_cte
where row_num > 1;



CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select *
from layoffs_staging2;

insert into layoffs_staging2
(
select *, 
row_number() over(
partition by company,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions,location) as row_num
from layoffs_staging 
);

select *
from layoffs_staging2
where row_num >1;

delete
from layoffs_staging2
where row_num > 1;

select *
from layoffs_staging2;

-- standardizing data

select company,trim(company)
from layoffs_staging2;

update layoffs_staging2
set company = trim(company);

select DISTINCT industry
from layoffs_staging2
order by 1;

select * 
from layoffs_staging2
where industry like 'Crypto%';

update layoffs_staging2
set industry ='Crypto'
where industry like 'Crypto%';

select DISTINCT location
from layoffs_staging2
order by 1;

select DISTINCT country
from layoffs_staging2
order by 1;

select *
from layoffs_staging2
WHERE country like 'United States%'
order by 1;

select DISTINCT country,trim(country)
from layoffs_staging2
order by 1;

select DISTINCT country,trim( trailing '.' from country)
from layoffs_staging2
order by 1;

UPDATE layoffs_staging2
SET country = trim( trailing '.' from country)
WHERE country = 'United States%';

-- update date

SELECT date,
str_to_date(date,'%m/%d/%Y')
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET date = str_to_date(date,'%m/%d/%Y');

SELECT date
FROM layoffs_staging2;

ALTER TABLE layoffs_staging2
MODIFY COLUMN date DATE;

SELECT *
FROM layoffs_staging2
WHERE total_laid_off is NULL 
AND percentage_laid_off is NULL;

SELECT *
FROM layoffs_staging2
WHERE industry is NULL
OR industry = '';

SELECT *
FROM layoffs_staging2
WHERE company = 'Airbnb';

SELECT *
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2
	ON t1.company = t2.company
    AND t1.location = t2.location
WHERE (t1.industry is NULL OR t1.industry = '')
AND t2.industry is NOT NULL;

SELECT t1.industry,t2.industry
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2
	ON t1.company = t2.company
    AND t1.location = t2.location
WHERE (t1.industry is NULL OR t1.industry = '')
AND t2.industry is NOT NULL;

UPDATE layoffs_staging2
SET industry = NULL
WHERE industry ='';

SELECT t1.industry,t2.industry
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2
	ON t1.company = t2.company
    AND t1.location = t2.location
WHERE t1.industry is NULL 
AND t2.industry is NOT NULL;

UPDATE  layoffs_staging2 t1
JOIN layoffs_staging2 t2
	ON t1.company = t2.company
SET t1.industry = t2.industry   
WHERE t1.industry is NULL 
AND t2.industry is NOT NULL;

ALTER TABLE layoffs_staging2
DROP COLUMN row_num;

SELECT *
FROM layoffs_staging2;




-- EDA


# 4.  Найти количество сотрудников по специальности “Рабочий” (speciality) в возрасте от 24 до 42 лет.
-- Вариант 1
SELECT name, surname, age FROM staff WHERE speciality="рабочий" HAVING age >=24 AND age<=42\p;

-- Вариант 2
SELECT name, surname FROM staff WHERE age >=24 AND age<=42 AND speciality="рабочий"\p;

-- Вариант 3
SELECT name,surname FROM (SELECT * FROM staff WHERE age >=24 AND age<=42) AS age_lim WHERE speciality="рабочий"\p;

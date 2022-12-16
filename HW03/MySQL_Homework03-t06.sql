# 6. Вывести специальности, у которых средний возраст сотрудника меньше 44 лет

SELECT speciality FROM staff GROUP BY speciality HAVING AVG(age)>=44\p;

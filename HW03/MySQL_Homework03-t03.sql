# 3. Подсчитать суммарную зарплату(salary) по каждой специальности (speciality)

SELECT SUM(salary) AS salary_totals FROM staff GROUP BY speciality\p;

-- 4. Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю. (12 число включено в диапазон)

-- Вариант 1
SELECT an_name, an_cost FROM Analysis
JOIN Orders ON Analysis.an_id=Orders.ord_an
WHERE ord_datetime BETWEEN "2020-02-05 00:00:00" AND "2020-02-12 23:59:59"\p;

-- Вариант 2
SELECT an_name, an_cost FROM Analysis
JOIN (SELECT ord_an FROM Orders WHERE ord_datetime BETWEEN "2020-02-05 00:00:00" AND "2020-02-12 23:59:59") AS t1
WHERE Analysis.an_id = t1.ord_an\p;

-- С выводом даты.
SELECT an_name, an_cost, ord_datetime FROM Analysis
JOIN (SELECT ord_an, ord_datetime FROM Orders WHERE ord_datetime BETWEEN "2020-02-05 00:00:00" AND "2020-02-12 23:59:59") AS t1
WHERE Analysis.an_id = t1.ord_an\p;

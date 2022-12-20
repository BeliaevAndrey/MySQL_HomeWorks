-- 3. Вывести магазины, в котором НЕ продаются коты “Мурзик” и “Zuza”

SELECT shopname FROM shops WHERE id NOT IN (SELECT shops_id FROM (SELECT shops_id, name FROM cats WHERE name IN ("murzik", "zuza")) AS t1)\p;



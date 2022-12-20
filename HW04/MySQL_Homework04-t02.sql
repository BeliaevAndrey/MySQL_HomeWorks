-- 2. Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)

-- 2.1
SELECT shopname FROM shops JOIN cats ON shops.id=cats.shops_id WHERE cats.name="Murzik"\p; -- RIGHT or LEFT JOIN are ok too

SELECT shopname FROM shops JOIN cats ON shops.id=cats.shops_id WHERE name LIKE "murzik"\p; -- RIGHT or LEFT JOIN are ok too

-- 2.2
SELECT shopname FROM shops WHERE id IN (SELECT shops_id FROM cats WHERE name LIKE "murzik")\p;

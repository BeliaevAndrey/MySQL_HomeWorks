# 2. Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва :
# * меньше 100 - Маленький заказ
# * От 100 до 300 - Средний заказ
# * больше 300 - Большой заказ

SELECT id,
CASE
    WHEN count_product < 100 THEN 'Маленький заказ'
    WHEN count_product >= 100 AND count_product < 300 THEN 'Средний заказ'
    ELSE 'Большой заказ'
    END
AS 'Тип заказа'
FROM sales;

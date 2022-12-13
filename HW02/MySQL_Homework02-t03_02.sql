# 3.2 Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
# * OPEN – «Order is in open state» ; 
# * CLOSED - «Order is closed»; 
# * CANCELLED - «Order is cancelled» 
#    ** (if*,case).


SELECT id, employee_id, amount,
IF (order_status = 'OPEN','Order is in open state',
IF (order_status = 'CLOSED', 'Order is closed', 'Order is cancelled'))
AS 'full_order_status'
FROM orders;




# 3. Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
# * OPEN – «Order is in open state» ; 
# * CLOSED - «Order is closed»; 
# * CANCELLED - «Order is cancelled» 
#    ** (if*,case).


CREATE TABLE orders
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(20) NOT NULL UNIQUE,
    amount DECIMAL(10,2) NOT NULL,
    order_status VARCHAR(20)

);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
    ('e03', 15.00, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');


SELECT id, employee_id, amount,
CASE
WHEN order_status = 'OPEN' THEN 'Order is in open state'
WHEN order_status = 'CLOSED' THEN 'Order is closed'
WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
END AS 'full_order_status'
FROM orders;




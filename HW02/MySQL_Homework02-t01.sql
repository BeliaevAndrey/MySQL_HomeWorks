# 1. Используя операторы языка SQL,
# создайте таблицу “sales”. Заполните ее данными.
# Справа располагается рисунок к первому заданию.

#CREATE DATABASE GB_mysql_hw02;

#USE GB_mysql_hw02;

CREATE TABLE sales
(   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL
);

INSERT INTO sales (order_date,count_product)
VALUES
('2022-01-01',156),
('2022-01-02',180),
('2022-01-03',21),
('2022-01-04',124),
('2022-01-05',341);

SELECT * FROM sales;

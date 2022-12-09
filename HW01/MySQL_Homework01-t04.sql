/*4. Спомощью регулярных выражений найти (можно использовать LIKE, RLIKE):
 - 4.1 Товары, в которых есть упоминание "Iphone"
 - 4.2 "Galaxy"
 - 4.3 Товары, в которых есть цифры 
 - 4.4 Товары, в которых есть цифра 8
 */


SELECT * FROM phones WHERE ProductName LIKE "Iphone%";
SELECT * FROM phones WHERE ProductName LIKE "Galaxy%";
SELECT * FROM phones WHERE ProductName RLIKE "[0-9]";
SELECT * FROM phones WHERE ProductName RLIKE "8";

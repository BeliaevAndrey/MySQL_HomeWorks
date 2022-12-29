-- 1.   Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
--      Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP FUNCTION IF EXISTS SecToDate;

DELIMITER //

CREATE FUNCTION SecToDate ( long_seconds INT )
RETURNS TINYTEXT

BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;

    SET days = long_seconds DIV (24 * 3600);
    SET hours  = long_seconds MOD (24 * 3600) DIV 3600 ;
    SET minutes = long_seconds MOD 3600 MOD 3600 DIV 60;
    SET seconds = long_seconds MOD 3600 MOD 3600 MOD 60;


   RETURN CONCAT(long_seconds,' -> ',days," days ",hours," hours ",minutes," minutes ",seconds," seconds ");

END; //

DELIMITER ;

SELECT SecToDate(123456) AS result;

DROP FUNCTION SecToDate;


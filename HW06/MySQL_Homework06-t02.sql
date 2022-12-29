-- 2.   Выведите только четные числа от 1 до 10 включительно.
--      Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)

DROP PROCEDURE IF EXISTS EvensOfTen;

DELIMITER //
CREATE PROCEDURE EvensOfTen()
BEGIN
    DECLARE Ten INT;
    DECLARE Evens INT;
    SET Ten = 10;
    SET Evens = 1;
    WHILE Evens <= Ten DO
        IF Evens MOD 2 = 0 THEN SELECT Evens AS Even;
        END IF;
        SET Evens = Evens + 1;
    END WHILE;
END; //

DELIMITER ;

CALL EvensOfTen();

DROP PROCEDURE IF EXISTS EvensOfTen;

SELECT "Variant 2:" AS ` `;
SELECT " " AS ` `;

DELIMITER //
CREATE PROCEDURE EvensOfTen()
BEGIN
    DECLARE Evens INT DEFAULT 2;
    WHILE Evens <= 10 DO
        SELECT Evens;
        SET Evens = Evens + 2;
    END WHILE;
END; //

DELIMITER ;

CALL EvensOfTen();

DROP PROCEDURE IF EXISTS EvensOfTen;

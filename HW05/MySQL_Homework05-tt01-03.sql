-- 1. Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов

CREATE VIEW `Cheaper_cars` AS SELECT * FROM Cars WHERE Cost <= 25000\p;

SELECT * FROM Cheaper_cars\p;

-- 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 

ALTER VIEW Cheaper_cars AS SELECT * FROM Cars WHERE Cost <= 30000\p;

SELECT * FROM Cheaper_cars\p;

-- 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

CREATE VIEW `skoudi` AS SELECT * FROM Cars WHERE Name IN ("Skoda ", "Audi ")\p;

SELECT * FROM skoudi\p;


/*1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными*/
CREATE TABLE phones
(
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),    /*e.g.: Samsung Galaxy S22*/
    Manufacturer VARCHAR(50),   /*e.g.: Samsung Electronics Co., Ltd. */
    ProductCount INT NOT NULL,  /*0 is not NULL*/
    Price INT NOT NULL          /*Not shure. Instead if 0 'N/A' is possible.*/
);

INSERT phones(ProductName,Manufacturer,ProductCount,Price) VALUES
('iPhone X','Apple',3,76000),
('iPhone 8','Apple',2,51000),
('Galaxy S9','Samsung',2,56000),
('Galaxy S8','Samsung',1,41000),
('P20 Pro','Huawei',5,36000);

SELECT * FROM phones;

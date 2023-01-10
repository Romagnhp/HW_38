DROP TABLE IF EXISTS products;

CREATE TABLE products(
	"id" INTEGER UNIQUE,
	"name" TEXT,
	"brand" TEXT,
	"category" TEXT,
	"product_code" INTEGER,
	"price" INTEGER,
	PRIMARY KEY ("id")
	);
	
INSERT INTO products VALUES (1, "IPhone_14", "Apple", "smart_phone", 00100, 4000);
INSERT INTO products VALUES (2, "TUF_Gaming_F15", "ASUS", "notebook", 00108, 35000);
INSERT INTO products VALUES (3, "IdeaPad 3 15ALC6", "Lenovo", "notebook", 00202, 26000);
INSERT into products VALUES (4, "Galaxy S22 Ultra ", "Samsung", "smart_phone", 00205, 5100);

-- нахождение общей стоимости
SELECT SUM(products.price) as summary_price
FROM products;

-- нахождение самого дешевого товара
SELECT MIN(products.price) as "cheapest product" 
FROM products;

-- нахождение самого дорогого товара
SELECT MAX(products.price) as "most expensive product"
FROM products;

-- Вывести список категорий и сколько в них товаров
SELECT COUNT() as quantity, category
FROM products
GROUP BY category;


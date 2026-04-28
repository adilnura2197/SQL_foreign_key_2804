CREATE TABLE IF NOT EXISTS users(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	username TEXT,
	email TEXT UNIQUE,
	age INTEGER CHECK(age >= 18 AND age <= 90),
	balance INTEGER CHECK(balance >= 0),
	status TEXT CHECK(status IN ('active', 'blocked'))
);

INSERT INTO users
(username, email, age, balance, status)
VALUES
('ali_dev', 'ali@mail.uz', 25, 320000, 'active'),
('nilufar99', 'nilu@gmail.com', 22, 0, 'blocked'),
('sardor_x', 'sardor@box.com', 31, 1500000, 'active'),
('zulfiya_m', 'zulfi@net.uz', 28, 75000, 'active'),
('bekzod22', 'bek22@inbox.uz', 19, 200000, 'blocked');


CREATE TABLE IF NOT EXISTS products(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	sku TEXT UNIQUE,
	name TEXT NOT NULL,
	price INTEGER CHECK(price >= 0),
	stock INTEGER CHECK(stock >= 0),
	discount_pct INTEGER CHECK(discount_pct >= 0 AND discount_pct < 100)
);

INSERT INTO products
(sku, name, price, stock, discount_pct)
VALUES
('SHOE-001', 'Adidas Ultrabost', 850000, 12, 10),
('PHON-002', 'Samsung A54', 2490000, 5, 0),
('BOOK-003', 'Clean Code', 120000, 30, 25),
('HDPH-004', 'Sony WH-1000XM5', 3333334, 8, 5),
('DESK-005', 'Ikea Bekant stol', 8765656, 3, 50),
('BAG-006', 'Samsonite sumka', 345345, 15, 0);

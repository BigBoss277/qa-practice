-- Reconstructed practice snapshot with synthetic contact details.
-- Import into a separate, empty SQLite database.
BEGIN TRANSACTION;

CREATE TABLE customers (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(50) NOT NULL,
    Address TEXT NOT NULL,
    City VARCHAR(50)
);

-- The missing foreign key matches the original practice schema.
CREATE TABLE orders (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    product TEXT NOT NULL,
    amount INTEGER NOT NULL
);

INSERT INTO customers (ID, Name, Phone, Address, City) VALUES
    (43, 'Maks', '555-0101', '100 Example Street', 'Los Angeles'),
    (44, 'Alex', '555-0102', '200 Example Street', 'Oregon'),
    (45, 'John', '555-0103', '300 Example Street', 'New-York'),
    (46, 'Maks', '555-0101', '100 Example Street', 'Los Angeles'),
    (47, 'Alex', '555-0102', '200 Example Street', 'Oregon'),
    (48, 'John', '555-0103', '300 Example Street', 'New-York');

-- Customer 37 is intentionally missing for the data integrity check.
INSERT INTO orders (ID, customer_id, product, amount) VALUES
    (1, 37, 'iPhone', 1),
    (2, 37, 'Keyboard', 2),
    (3, 46, 'iPhone', 1),
    (4, 46, 'Keyboard', 2);

COMMIT;

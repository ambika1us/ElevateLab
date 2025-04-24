CREATE TABLE Product (
    P_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Description TEXT
);

CREATE TABLE POrder (
    Order_ID INT PRIMARY KEY,
    Order_Amount DECIMAL(10, 2),
    Order_Date DATE
);

CREATE TABLE Customer (
    User_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Type VARCHAR(50),
    Amount DECIMAL(10, 2)
);

CREATE TABLE Cart (
    Cart_ID INT PRIMARY KEY,
    User_ID INT,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID)
);

CREATE TABLE Category (
    C_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Picture VARCHAR(255),
    Description TEXT
);

INSERT INTO Product (P_ID, Name, Price, Description)
VALUES
    (1, 'Laptop', 75000.99, 'A high-performance laptop for professionals'),
    (2, 'Smartphone', 24999.50, 'A feature-rich smartphone with excellent camera'),
    (3, 'Headphones', 4999.00, 'Noise-cancelling headphones for immersive audio'),
    (4, 'Smartwatch', 15999.99, 'A stylish smartwatch with health tracking features'),
    (5, 'Tablet', 18999.00, 'A lightweight tablet for entertainment and productivity'),
    (6, 'Monitor', 10999.50, 'A 24-inch full HD monitor for clear visuals'),
    (7, 'Keyboard', 1499.00, 'A mechanical keyboard with RGB lighting'),
    (8, 'Mouse', 999.99, 'An ergonomic wireless mouse'),
    (9, 'Printer', 8999.00, 'A compact color printer for home use'),
    (10, 'Router', 2999.50, 'A dual-band Wi-Fi router with high speed'),
    (11, 'Speaker', 3499.00, 'Portable Bluetooth speaker with rich sound'),
    (12, 'Camera', 45000.00, 'A DSLR camera with advanced features'),
    (13, 'Smart TV', 39999.99, 'A 43-inch 4K smart TV'),
    (14, 'Hard Drive', 5999.00, 'A 1TB external hard drive'),
    (15, 'Power Bank', 1999.99, 'A 20000mAh power bank for charging on the go'),
    (16, 'Gaming Console', 49999.00, 'A next-gen gaming console'),
    (17, 'Microphone', 2999.50, 'A USB microphone for recording and streaming'),
    (18, 'Tripod', 1999.99, 'A lightweight tripod for cameras'),
    (19, 'Flash Drive', 999.00, 'A 128GB USB flash drive'),
    (20, 'Charger', 799.99, 'A fast charger for smartphones'),
    (21, 'Air Purifier', 12999.00, 'An air purifier for clean and fresh air'),
    (22, 'Electric Kettle', 2499.00, 'An electric kettle with auto shut-off feature'),
    (23, 'Vacuum Cleaner', 7599.00, 'A portable vacuum cleaner for quick cleaning'),
    (24, 'Fitness Band', 2999.00, 'A fitness band for tracking activity and health metrics'),
    (25, 'Drone', 59999.99, 'A camera drone with 4K video recording');

select * from Product


INSERT INTO POrder (Order_ID, Order_Amount, Order_Date)
VALUES
    (1, 1500.50,'2025-04-01'),
    (2, 2499.99,'2025-04-02'),
    (3, 599.00,'2025-04-03'),
    (4, 345.75,'2025-04-04'),
    (5, 999.99,'2025-04-05'),
    (6, 1999.50,'2025-04-06'),
    (7, 750.25,'2025-04-07'),
    (8, 1299.99,'2025-04-08'),
    (9, 2500.00,'2025-04-09'),
    (10,890.50,'2025-04-10'),
    (11,300.00,'2025-04-11'),
    (12,4500.00,'2025-04-12'),
    (13,1785.75,'2025-04-13'),
    (14,650.00,'2025-04-14'),
    (15,2999.50,'2025-04-15'),
    (16,549.00,'2025-04-16'),
    (17,375.25,'2025-04-17'),
    (18,129.99,'2025-04-18'),
    (19,2000.00,'2025-04-19'),
    (20,899.75,'2025-04-20'),
    (21,1099.50,'2025-04-21'),
    (22,4999.99,'2025-04-22'),
    (23,1450.00,'2025-04-23'),
    (24,990.00,'2025-04-24'),
    (25,275.99,'2025-04-25');

select * from POrder

INSERT INTO Customer (User_ID, Name, Email, Password)
VALUES
    (1, 'Alice Johnson', 'alice.johnson@example.com', 'password123'),
    (2, 'Bob Smith', 'bob.smith@example.com', 'securepass'),
    (3, 'Charlie Brown', 'charlie.brown@example.com', 'charlie123'),
    (4, 'Daisy Cooper', 'daisy.cooper@example.com', 'daisy2025'),
    (5, 'Eve Adams', 'eve.adams@example.com', 'eve789'),
    (6, 'Frank Wright', 'frank.wright@example.com', 'frank@pass'),
    (7, 'Grace Hall', 'grace.hall@example.com', 'grace&hall'),
    (8, 'Hank Miller', 'hank.miller@example.com', 'hank!2025'),
    (9, 'Ivy Wilson', 'ivy.wilson@example.com', 'ivy_secure'),
    (10, 'Jack Moore', 'jack.moore@example.com', 'jack_password'),
    (11, 'Kate Clark', 'kate.clark@example.com', 'kate!secure'),
    (12, 'Liam Lee', 'liam.lee@example.com', 'liam1234'),
    (13, 'Mia Scott', 'mia.scott@example.com', 'mia_password'),
    (14, 'Noah Young', 'noah.young@example.com', 'noah2025'),
    (15, 'Olivia Green', 'olivia.green@example.com', 'olivia_789'),
    (16, 'Paul Hill', 'paul.hill@example.com', 'paul!pass'),
    (17, 'Quinn Baker', 'quinn.baker@example.com', 'quinn2025'),
    (18, 'Ruby Carter', 'ruby.carter@example.com', 'ruby_secure'),
    (19, 'Sam Turner', 'sam.turner@example.com', 'sam_password'),
    (20, 'Tina Parker', 'tina.parker@example.com', 'tina_123'),
    (21, 'Uma Evans', 'uma.evans@example.com', 'uma_pass'),
    (22, 'Victor Hughes', 'victor.hughes@example.com', 'victor!2025'),
    (23, 'Will Davis', 'will.davis@example.com', 'will_secure'),
    (24, 'Xena King', 'xena.king@example.com', 'xena_password'),
    (25, 'Yara Collins', 'yara.collins@example.com', 'yara!pass');

select * from Customer

INSERT INTO Payment (Payment_ID, Type, Amount)
VALUES
    (1, 'Credit Card', 5000.00),
    (2, 'Debit Card', 2500.50),
    (3, 'Net Banking', 1200.00),
    (4, 'UPI', 800.75),
    (5, 'Wallet', 1500.00),
    (6, 'Cash', 200.00),
    (7, 'Bank Transfer', 7500.99),
    (8, 'Credit Card', 3000.00),
    (9, 'UPI', 450.00),
    (10, 'Debit Card', 1800.00),
    (11, 'Net Banking', 999.50),
    (12, 'Cash', 500.00),
    (13, 'Wallet', 1200.25),
    (14, 'Bank Transfer', 6000.00),
    (15, 'UPI', 250.99),
    (16, 'Credit Card', 10000.00),
    (17, 'Debit Card', 3500.75),
    (18, 'Wallet', 400.00),
    (19, 'Net Banking', 2200.50),
    (20, 'Cash', 50.00),
    (21, 'Bank Transfer', 800.00),
    (22, 'UPI', 999.99),
    (23, 'Credit Card', 300.00),
    (24, 'Debit Card', 1500.00),
    (25, 'Net Banking', 2000.00);

select * from Payment

INSERT INTO Cart (Cart_ID, User_ID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25);

select * from Cart

INSERT INTO Category (C_ID, Name, Picture, Description)
VALUES
    (1, 'Electronics', 'electronics.jpg', 'Devices and gadgets including phones, laptops, and cameras'),
    (2, 'Fashion', 'fashion.jpg', 'Clothing, accessories, and apparel for men and women'),
    (3, 'Home Decor', 'home_decor.jpg', 'Furniture, decorative items, and home essentials'),
    (4, 'Sports', 'sports.jpg', 'Sports equipment and gear for various activities'),
    (5, 'Books', 'books.jpg', 'A wide collection of books across multiple genres'),
    (6, 'Toys', 'toys.jpg', 'Toys and games for children of all ages'),
    (7, 'Beauty', 'beauty.jpg', 'Cosmetics and skincare products'),
    (8, 'Automobile', 'automobile.jpg', 'Car and bike accessories, spare parts'),
    (9, 'Groceries', 'groceries.jpg', 'Food items, snacks, and daily essentials'),
    (10, 'Fitness', 'fitness.jpg', 'Fitness gear, equipment, and wellness items'),
    (11, 'Healthcare', 'healthcare.jpg', 'Medical supplies and wellness products'),
    (12, 'Music', 'music.jpg', 'Musical instruments and audio gear'),
    (13, 'Travel', 'travel.jpg', 'Luggage, travel accessories, and outdoor gear'),
    (14, 'Jewelry', 'jewelry.jpg', 'Elegant jewelry and ornaments'),
    (15, 'Pets', 'pets.jpg', 'Pet care products and accessories'),
    (16, 'Stationery', 'stationery.jpg', 'Office supplies and stationery items'),
    (17, 'Gaming', 'gaming.jpg', 'Gaming consoles and accessories'),
    (18, 'Garden', 'garden.jpg', 'Gardening tools, plants, and outdoor decor'),
    (19, 'Kitchen', 'kitchen.jpg', 'Kitchen appliances and cooking essentials'),
    (20, 'Art', 'art.jpg', 'Art supplies and creative tools'),
    (21, 'Photography', 'photography.jpg', 'Cameras and photography accessories'),
    (22, 'Baby Care', 'baby_care.jpg', 'Products for infants and toddlers'),
    (23, 'Clothing', 'clothing.jpg', 'Seasonal and casual clothing options'),
    (24, 'Technology', 'technology.jpg', 'Innovative gadgets and smart devices'),
    (25, 'Luxury', 'luxury.jpg', 'High-end products and premium collections');

select * from Category

SELECT * 
FROM Category
WHERE Name = 'Electronics';

SELECT * 
FROM Category
WHERE Description LIKE '%devices%';

SELECT * 
FROM Category
ORDER BY Name ASC;

SELECT COUNT(*), Picture
FROM Category
GROUP BY Picture;

SELECT COUNT(*), Description
FROM Category
GROUP BY Description
HAVING COUNT(*) > 1;

SELECT Category.C_ID, Category.Name, Product.P_ID, Product.Name AS Product_Name
FROM Category
INNER JOIN Product ON Category.C_ID = Product.P_ID;

SELECT Category.C_ID, Category.Name, Product.P_ID, Product.Name AS Product_Name
FROM Category
LEFT JOIN Product ON Category.C_ID = Product.P_ID;

SELECT Product.P_ID, Product.Name AS Product_Name, Category.C_ID, Category.Name AS Category_Name
FROM Product
RIGHT JOIN Category ON Product.P_ID = Category.C_ID;

SELECT Category.Name AS Category_Name, Product.Name AS Product_Name
FROM Category
INNER JOIN Product ON Category.C_ID = Product.P_ID
WHERE Category.Name LIKE 'E%';

SELECT Category.C_ID, Category.Name AS Category_Name, COUNT(Product.P_ID) AS Product_Count
FROM Category
LEFT JOIN Product ON Category.C_ID = Product.P_ID
GROUP BY Category.C_ID, Category.Name;

SELECT Name, Price
FROM Product
WHERE P_ID IN (
    SELECT Order_ID
    FROM POrder
);

select * from POrder

SELECT Name, Price
FROM Product
WHERE Price > (
    SELECT MAX(order_amount)
    FROM POrder
);

SELECT SUM(Amount) AS Total_Payment_Amount
FROM Payment;

SELECT AVG(Amount) AS Average_Payment_Amount
FROM Payment;

SELECT Type, SUM(Amount) AS Total_Amount
FROM Payment
GROUP BY Type;

SELECT Type, AVG(Amount) AS Average_Amount
FROM Payment
GROUP BY Type;

SELECT Type, SUM(Amount) AS Total_Amount
FROM Payment
GROUP BY Type
HAVING SUM(Amount) > 5000;

/*View for Product Analysis*/

CREATE VIEW ProductAnalysis AS
SELECT 
    Product.P_ID, 
    Product.Name AS Product_Name, 
    Product.Price, 
    Category.Name AS Category_Name, 
    Category.Description AS Category_Description
FROM Product
INNER JOIN Category ON Product.P_ID = Category.C_ID;

select * from ProductAnalysis

/*View for Customer and Cart Data*/
CREATE VIEW CustomerCartView AS
SELECT 
    Customer.User_ID, 
    Customer.Name AS Customer_Name, 
    Customer.Email, 
    Cart.Cart_ID
FROM Customer
LEFT JOIN Cart ON Customer.User_ID = Cart.User_ID;

select * from CustomerCartView

/*View for Payment Summary*/
CREATE VIEW PaymentSummary AS
SELECT 
    Type AS Payment_Type, 
    COUNT(*) AS Payment_Count, 
    SUM(Amount) AS Total_Amount, 
    AVG(Amount) AS Average_Amount
FROM Payment
GROUP BY Type;

select * from PaymentSummary

/*View for Category Popularity*/
CREATE VIEW CategoryPopularity AS
SELECT 
    Category.C_ID, 
    Category.Name AS Category_Name, 
    COUNT(Product.P_ID) AS Product_Count
FROM Category
LEFT JOIN Product ON Category.C_ID = Product.P_ID
GROUP BY Category.C_ID, Category.Name;

select * from CategoryPopularity

CREATE INDEX idx_product_id ON Product(P_ID);
CREATE INDEX idx_product_price ON Product(Price);

CREATE INDEX idx_payment_type ON Payment(Type);
CREATE INDEX idx_payment_amount ON Payment(Amount);

CREATE INDEX idx_customer_id ON Customer(User_ID);
CREATE INDEX idx_customer_email ON Customer(Email);

CREATE INDEX idx_cart_user_id ON Cart(User_ID);
CREATE INDEX idx_cart_id ON Cart(Cart_ID);

CREATE INDEX idx_category_id ON Category(C_ID);
CREATE INDEX idx_category_name ON Category(Name);
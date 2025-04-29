CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);

select * from orders

INSERT INTO orders (order_date, amount, product_id)
VALUES 
    ('2024-04-29', 1500.00, 101),
    ('2023-04-28', 2200.50, 102),
    ('2025-04-27', 750.75, 103),
    ('2025-04-26', 1800.00, 104),
    ('2025-04-25', 900.25, 105),
    ('2019-04-24', 1200.75, 106),
    ('2025-04-23', 1350.00, 107),
    ('2018-04-22', 500.50, 108),
    ('2025-04-21', 2500.00, 109),
    ('2018-04-20', 1100.75, 110),
    ('2025-04-19', 1450.00, 111),
    ('2017-04-18', 1600.25, 112),
    ('2025-04-17', 1750.50, 113),
    ('2015-04-16', 950.00, 114),
    ('2025-04-15', 2200.75, 115),
    ('2015-04-14', 1950.00, 116),
    ('2025-04-13', 800.50, 117),
    ('2010-04-12', 1550.00, 118),
    ('2025-04-11', 2400.25, 119),
    ('2010-04-10', 1250.75, 120),
    ('2025-04-09', 1750.00, 121),
    ('2021-04-08', 1300.50, 122),
    ('2021-04-07', 1400.00, 123),
    ('2025-04-06', 2100.25, 124),
    ('2019-04-05', 1850.75, 125),
	('2024-04-29', 1500.00, 126),
    ('2023-04-28', 2200.50, 127),
    ('2025-04-27', 750.75, 128),
    ('2025-04-26', 1800.00, 129),
    ('2025-04-25', 900.25, 130),
    ('2019-04-24', 1200.75, 131),
    ('2025-04-23', 1350.00, 132),
    ('2018-04-22', 500.50, 133),
    ('2025-04-21', 2500.00, 134),
    ('2018-04-20', 1100.75, 135),
    ('2025-04-19', 1450.00, 136),
    ('2017-04-18', 1600.25, 137),
    ('2025-04-17', 1750.50, 138),
    ('2015-04-16', 950.00, 139),
    ('2025-04-15', 2200.75, 140),
    ('2015-04-14', 1950.00, 141),
    ('2025-04-13', 800.50, 142),
    ('2010-04-12', 1550.00, 143),
    ('2025-04-11', 2400.25, 144),
    ('2010-04-10', 1250.75, 145),
    ('2025-04-09', 1750.00, 146),
    ('2021-04-08', 1300.50, 147),
    ('2021-04-07', 1400.00, 148),
    ('2025-04-06', 2100.25, 149),
    ('2019-04-05', 1850.75, 150);

alter table orders add column order_month int;

select * from orders

update orders set order_month = extract(month from order_date);

select count(*),extract(year from order_date) as order_year from orders group by order_year;

select * from orders where extract(year from order_date)=2023;

select
extract(year from order_date) as order_year,
extract(month from order_date) as order_month,
count(*) as total_order,
sum(amount) as total_amount
from orders
group by order_year, order_month, order_date
order by order_year desc, order_month desc, order_date;

select
	extract(year from order_date) as order_year,
	sum(amount) as total_amount
from orders
group by order_year
order by order_year;

select
	extract(year from order_date) as order_year,
	sum(amount) as total_amount,
	COUNT(DISTINCT order_id) AS order_volume
from orders
group by order_year
order by order_year;

select
	extract(year from order_date) as order_year,
	sum(amount) as total_amount,
	COUNT(DISTINCT order_id) AS order_volume
from orders
WHERE EXTRACT(YEAR FROM order_date) = 2025
group by order_year
order by order_year;
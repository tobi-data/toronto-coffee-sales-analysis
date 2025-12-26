-- Insert customers
INSERT INTO customers (name, city) VALUES
('Mary', 'Toronto'),
('Alex', 'Toronto'),
('John', 'Toronto');

-- Insert orders
INSERT INTO orders (customer_id, amount, order_date) VALUES
(1, 450, '2025-12-01'),
(2, 325, '2025-12-02'),
(3, 500, '2025-12-03'),
(1, 475, '2025-12-05');

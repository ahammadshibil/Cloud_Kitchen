-- Inserting data into the 'city' table
INSERT INTO city (city_id, city_name) VALUES 
('C1', 'Banglore'),
('C2', 'Hydrabad'),
('C3', 'Delhi');

-- Inserting data into the 'Customers' table
INSERT INTO Customers (TransactionID, CustomerID, Password, cus_name, PhoneNumber, EmailAddress, DOB, Gender, address) VALUES 
(1001, 1, 'password123', 'Ahammad Shibil', 1234567890, 'ahammad.shibil@example.com', '1990-01-01', 'M', '123 Street, Banglore'),
(1002, 2, 'mypassword', 'Srihari', 2345678901, 'srihari@example.com', '1992-02-02', 'F', '456 Avenue, Los Angeles');

-- Inserting data into the 'branch' table
INSERT INTO branch (branch_id, location, kitchen_capacity, manager_id, city_id) VALUES 
('B1', 'Indiranagar', 100, 'S1', 'C1'),
('B2', 'Whitefeild', 150, 'S2', 'C2');

-- Inserting data into the 'staff' table
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob, branch_id, staff_gender, salary) VALUES 
('S1', 'Gaurav', 'Manager', 'nirmal@example.com', 1234567890, 'password123', '789 Street, New York', '1990-01-01', 'B1', 'M', 10000.00),
('S2', 'Nirmal', 'Manager', 'gaurav@example.com', 2345678901, 'password234', '012 Avenue, Los Angeles', '1992-02-02', 'B2', 'F', 12000.00);

-- Inserting data into the 'inventory' table
INSERT INTO inventory (ingredient_id, ingredient_name, quantity, unit, branch_id) VALUES 
('I1', 'Tomato', 100, 'kg', 'B1'),
('I2', 'Cheese', 50, 'kg', 'B1'),
('I3', 'Beef', 200, 'kg', 'B2'),
('I4', 'Chicken', 150, 'kg', 'B2');

-- Inserting data into the 'menu' table
INSERT INTO menu (item_id, item_name, description, protein_grams, protein_percentage, further_description, category, price, carbs, fat) VALUES 
(1, 'High-protein breakfast with eggs, ham, and spinach', 31, 330, 15, 10, 20, 'This breakfast is a great way to start your day with plenty of protein and nutrients. The eggs, ham, and spinach are all high in protein, and the spinach is also a good source of vitamins and minerals.'),
(2, 'Jill''s cheese-crusted omelet', 39, 300, 20, 10, 25, 'This omelet is a delicious and filling option that is also high in protein. The cheese crust adds a touch of richness, and the eggs are a good source of protein.'),
(3, 'Keto Caprese omelet', 33, 250, 10, 5, 20, 'This omelet is a great way to get your daily dose of vegetables and protein. The tomatoes, mozzarella, and basil are all low in carbs and high in nutrients, and the eggs are a good source of protein.'),
(4, 'Everything-but-the-bagel omelet', 35, 300, 15, 10, 20, 'This omelet is a great way to get your daily dose of fiber and protein. The bagel is replaced with a bed of spinach, which is a good source of fiber, and the eggs are a good source of protein.'),
(5, 'Capicola egg cups', 36, 320, 15, 10, 20, 'These egg cups are a great way to make a quick and easy breakfast. They are made with eggs, capicola ham, and cheese, and they are a good source of protein.'),
(6, 'Keto egg muffins', 39, 300, 15, 10, 20, 'These egg muffins are a great way to make a quick and easy breakfast. They are made with eggs, cheese, and vegetables, and they are a good source of protein.'),
(7, 'Keto baked eggs', 41, 320, 15, 10, 20, 'These baked eggs are a great way to make a quick and easy breakfast. They are made with eggs, cheese, and vegetables, and they are a good source of protein.'),
(8, 'Crispy bacon and kale with fried egg', 30, 320, 20, 10, 20, 'This dish is a great way to get your daily dose of vegetables and protein. The bacon is a good source of protein, and the kale is a good source of vitamins and minerals. The fried egg adds a touch of richness.'),
(9, 'High protein turkey bacon breakfast burger', 59, 400, 30, 10, 30, 'This burger is a great way to get your daily dose of protein. The turkey bacon is a-- Continued from previous message due to the character limit.


-- Inserting data into the 'ingredient_menu' table
INSERT INTO ingredient_menu (ingredient_id, item_id) VALUES 
('I1', 'M1'),
('I2', 'M1'),
('I3', 'M1'),
('I1', 'M2'),
('I4', 'M2');

-- Inserting data into the 'offers-- Continued from previous message due to the character limit.

```sql
-- Inserting data into the 'offers' table
INSERT INTO offers (offer_id, description, valid_from, valid_to, discount_percentage, applicable_items) VALUES 
('O1', '10% off on Protein Shake', '2023-06-01', '2023-06-30', 10.00, 'M1'),
('O2', '15% off on all salads', '2023-07-01', '2023-07-31', 15.00, 'M2');

-- Inserting data into the 'transactions' table
INSERT INTO transactions (transaction_id, total_amount, card_number, card_type, customer_id) VALUES 
('T1', 100, 1234567812345678, 'Visa', 1),
('T2', 200, 2345678923456789, 'MasterCard', 2);

-- Inserting data into the 'orders' table
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, item_type, customer_id, branch_id) VALUES 
('O1', 'Completed', 'Cheese Burger', 2, '2023-06-15 12:00:00', 'Dine-in', 1, 'B1'),
('O2', 'Completed', 'Chicken Salad', 3, '2023-06-15 13:00:00', 'Takeaway', 2, 'B2');

-- Inserting data into the 'payment' table
INSERT INTO payment (payment_id, transaction_id, payment_method, payment_status, payment_date) VALUES 
('P1', 'T1', 'Card', 'Completed', '2023-06-15'),
('P2', 'T2', 'Card', 'Completed', '2023-06-15');

-- Inserting data into the 'kitchen_staff' table
INSERT INTO kitchen_staff (kitchen_staff_id, staff_id, specialization, work_shift, pay_per_hour) VALUES 
('K1', 'S1', 'Grill', 'Morning', 20.00),
('K2', 'S2', 'Salad', 'Afternoon', 15.00);

-- Inserting data into the 'order_items' table
INSERT INTO order_items (order_id, item_id, quantity) VALUES 
('O1', 'M1', 2),
('O2', 'M2', 3);

-- Inserting data into the 'reviews' table
INSERT INTO reviews (review_id, customer_id, order_id, rating, comments) VALUES 
('R1', 1, 'O1', 4.5, 'The Cheese Burger was delicious!'),
('R2', 2, 'O2', 5.0, 'Loved the Chicken Salad! Keep it up!');

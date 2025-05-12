
-- Sample Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('00000000-0000-0000-0000-000000000001', 'Alice', 'Smith', 'alice@example.com', 'hashedpwd1', '1234567890', 'guest'),
('00000000-0000-0000-0000-000000000002', 'Bob', 'Johnson', 'bob@example.com', 'hashedpwd2', '0987654321', 'host'),
('00000000-0000-0000-0000-000000000003', 'Carol', 'Williams', 'carol@example.com', 'hashedpwd3', NULL, 'admin');

-- Sample Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Sunny Cottage', 'A cozy place near the beach.', 'Los Angeles, CA', 120.00),
('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Mountain Retreat', 'Peaceful cabin in the mountains.', 'Denver, CO', 150.00);

-- Sample Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '2025-07-10', '2025-07-15', 750.00, 'pending');

-- Sample Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 480.00, 'credit_card'),
('30000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000002', 750.00, 'paypal');

-- Sample Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Wonderful stay, very clean and cozy!'),
('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 4, 'Great location, but a bit noisy at night.');

-- Sample Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Hi, is your property available in July?'),
('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Yes, it is available from July 10 to 15.');


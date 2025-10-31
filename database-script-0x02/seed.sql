## Seeding database with sample data using INSERT statements.

INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
   VALUES (1, 'Grace', 'Okoha', 'okohagrace@gmail.com', 'hashed_pass_1', 08107172525, 'host', '22-Feb-2025'),
   	    (2, 'Precious', 'Anyanta', 'anyaprecious@yahoomail.com', 'hashed_pass_2', 08017257251, 'admin', '01-Sept-2016'),
	       (3, 'Kenechi', 'Onuh', 'kenechukwuonu@gmail.com', 'hashed_pass_3', 09133224567, 'guest', '17-May-2025'), 
	       (4, 'Gabriel', 'Onyia', 'onyiagabriel@gmial.com', 'hashed_pass_4', 07020367085, 'host', '27-Dec-2023');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
   VALUES (010, 1, 'De Angelo Suite Enugu', 'Service Apartment with Balcony', 30000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
          (111, 4, 'Ekulu Garden Apartment Lagos', '3-Bedroom Apartment with swimming pool and gym', 80000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at),
   VALUES (222, 010, 3, '30-May-2025', '11-Jun-2025', 360000.00, 'confirmed', CURRENT_TIMESTAMP),
          (223, 111, 2, '12-Sept-2016', '20-Sept-2016', 640000.00, 'pending', CURRENT_TIMESTAMP);


INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method),
   VALUES ('111-222-111', 223, 640000.00, '10-Sept-2016', 'credit_card'),
          ('001-101-201', 222, 360000.00, '06-Jun-2025', 'paypal');


INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
   VALUES ('100-110-111', 010, 3, 4, 'such a serene environment, I love it!', CURRENT_TIMESTAMP),
          ('111-111-112', 111, 2, 5, 'Amazing experience, had a swell time with family, I will visit again!!', CURRENT_TIMESTAMP);

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
   VALUES ('222-225', 2, 4, 'Hello, Ekulu Garden Apartment, do you have a reservation for 3 bedroom apartment', CURRENT_TIMESTAMP),
          ('331-301', 3, 1, 'Hi, De Angelo, Is the hotel pet-friendly?', CUURENT_TIMESTAMP);

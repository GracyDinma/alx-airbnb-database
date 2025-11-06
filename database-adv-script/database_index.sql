# Write SQL CREATE INDEX commands to create appropriate indexes for those columns.
-- USER table indexes
CREATE INDEX idx_user_email ON User(email);

-- BOOKING table indexes
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_status ON Booking(status);

-- PROPERTY table indexes
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);

-- Measuring query performance before and after adding indexes

-- Before adding indexes
-- EXPLAIN ANALYZE SELECT * FROM Booking WHERE status = 'confirmed';

-- After adding indexes
EXPLAIN ANALYZE SELECT *
FROM Booking
WHERE status = 'confirmed';

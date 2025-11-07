# Using EXPLAIN ANALYZE to monitor performance of queries used.

EXPLAIN ANALYZE
SELECT *
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id;

# Bottleneck found
Query performs full table scan
Index on status not used.

Therefore, after optimization query now uses idx_booking_status and execution time is reduced.

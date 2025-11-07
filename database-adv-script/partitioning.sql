-- Implementing Partitioning on Booking table

CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    state_date DATE NOT NUTLL,
    end_date DATE NOT NULL,
    status ENUM ('pending', 'confirmed', 'canceled')
) PARTITION BY RANGE (start_date);


-- Testing performance of queries onthe partitioned table

CREATE TABLE booking_2025 PARTITION OF Booking
FOR VALUES FROM ('2025-10-01') TO ('2026-10-01');

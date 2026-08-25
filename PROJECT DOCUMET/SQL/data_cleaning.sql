-- Uber Driver Supply & Demand Analysis
-- Data cleaning queries

USE uber_supply_demand_analysis;

-- Remove leading/trailing spaces from text fields
UPDATE uber_ride_bookings
SET
    booking_status = TRIM(booking_status),
    vehicle_type = TRIM(vehicle_type),
    pickup_location = TRIM(pickup_location),
    drop_location = TRIM(drop_location),
    payment_method = TRIM(payment_method);

-- Replace invalid negative ride distances
UPDATE uber_ride_bookings
SET ride_distance = NULL
WHERE ride_distance < 0;

-- Replace invalid booking values
UPDATE uber_ride_bookings
SET booking_value = NULL
WHERE booking_value < 0;

-- Keep ratings within the expected 0-5 range
UPDATE uber_ride_bookings
SET driver_rating = NULL
WHERE driver_rating < 0 OR driver_rating > 5;

UPDATE uber_ride_bookings
SET customer_rating = NULL
WHERE customer_rating < 0 OR customer_rating > 5;

-- Replace invalid waiting times
UPDATE uber_ride_bookings
SET avg_vtat = NULL
WHERE avg_vtat < 0;

UPDATE uber_ride_bookings
SET avg_ctat = NULL
WHERE avg_ctat < 0;

-- Check for duplicate booking IDs
SELECT booking_id, COUNT(*) AS duplicate_count
FROM uber_ride_bookings
GROUP BY booking_id
HAVING COUNT(*) > 1;

-- Check missing booking IDs
SELECT COUNT(*) AS missing_booking_ids
FROM uber_ride_bookings
WHERE booking_id IS NULL;

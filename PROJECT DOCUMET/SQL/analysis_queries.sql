-- Uber Driver Supply & Demand Analysis
-- Business analysis queries

USE uber_supply_demand_analysis;

-- 1. Total bookings
SELECT COUNT(*) AS total_bookings
FROM uber_ride_bookings;

-- 2. Booking status distribution
SELECT
    booking_status,
    COUNT(*) AS bookings,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM uber_ride_bookings), 2) AS percentage
FROM uber_ride_bookings
GROUP BY booking_status
ORDER BY bookings DESC;

-- 3. Demand by vehicle type
SELECT
    vehicle_type,
    COUNT(*) AS total_bookings
FROM uber_ride_bookings
GROUP BY vehicle_type
ORDER BY total_bookings DESC;

-- 4. Demand by pickup location
SELECT
    pickup_location,
    COUNT(*) AS total_requests
FROM uber_ride_bookings
GROUP BY pickup_location
ORDER BY total_requests DESC;

-- 5. Top locations where drivers were not found
SELECT
    pickup_location,
    COUNT(*) AS no_driver_found
FROM uber_ride_bookings
WHERE booking_status = 'No Driver Found'
GROUP BY pickup_location
ORDER BY no_driver_found DESC;

-- 6. Driver cancellation reasons
SELECT
    driver_cancellation_reason,
    COUNT(*) AS cancellation_count
FROM uber_ride_bookings
WHERE cancelled_by_driver = 1
GROUP BY driver_cancellation_reason
ORDER BY cancellation_count DESC;

-- 7. Customer cancellation reasons
SELECT
    customer_cancellation_reason,
    COUNT(*) AS cancellation_count
FROM uber_ride_bookings
WHERE cancelled_by_customer = 1
GROUP BY customer_cancellation_reason
ORDER BY cancellation_count DESC;

-- 8. Average waiting time by vehicle type
SELECT
    vehicle_type,
    ROUND(AVG(avg_vtat), 2) AS avg_driver_arrival_time,
    ROUND(AVG(avg_ctat), 2) AS avg_customer_waiting_time
FROM uber_ride_bookings
GROUP BY vehicle_type
ORDER BY avg_customer_waiting_time DESC;

-- 9. Revenue by vehicle type for completed rides
SELECT
    vehicle_type,
    COUNT(*) AS completed_rides,
    ROUND(SUM(booking_value), 2) AS total_revenue,
    ROUND(AVG(booking_value), 2) AS average_booking_value
FROM uber_ride_bookings
WHERE booking_status = 'Completed'
GROUP BY vehicle_type
ORDER BY total_revenue DESC;

-- 10. Average ride distance by vehicle type
SELECT
    vehicle_type,
    ROUND(AVG(ride_distance), 2) AS average_ride_distance
FROM uber_ride_bookings
WHERE ride_distance IS NOT NULL
GROUP BY vehicle_type
ORDER BY average_ride_distance DESC;

-- 11. Average ratings by vehicle type
SELECT
    vehicle_type,
    ROUND(AVG(driver_rating), 2) AS average_driver_rating,
    ROUND(AVG(customer_rating), 2) AS average_customer_rating
FROM uber_ride_bookings
GROUP BY vehicle_type
ORDER BY average_driver_rating DESC;

-- 12. Payment method distribution
SELECT
    payment_method,
    COUNT(*) AS bookings
FROM uber_ride_bookings
GROUP BY payment_method
ORDER BY bookings DESC;

-- 13. Completed vs cancelled rides
SELECT
    booking_status,
    COUNT(*) AS total_rides
FROM uber_ride_bookings
WHERE booking_status IN ('Completed', 'Cancelled by Customer', 'Cancelled by Driver')
GROUP BY booking_status
ORDER BY total_rides DESC;

-- Uber Driver Supply & Demand Analysis
-- Main table creation

USE uber_supply_demand_analysis;

CREATE TABLE uber_ride_bookings (
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_date DATE,
    booking_time TIME,
    booking_status VARCHAR(50),
    customer_id VARCHAR(50),
    vehicle_type VARCHAR(100),
    pickup_location VARCHAR(150),
    drop_location VARCHAR(150),
    avg_vtat DECIMAL(10,2),
    avg_ctat DECIMAL(10,2),
    cancelled_by_customer INT,
    customer_cancellation_reason VARCHAR(255),
    cancelled_by_driver INT,
    driver_cancellation_reason VARCHAR(255),
    incomplete_rides INT,
    incomplete_ride_reason VARCHAR(255),
    booking_value DECIMAL(12,2),
    ride_distance DECIMAL(10,2),
    driver_rating DECIMAL(3,2),
    customer_rating DECIMAL(3,2),
    payment_method VARCHAR(50)
);

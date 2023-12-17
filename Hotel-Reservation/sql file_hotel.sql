
USE hotel_reservation;
SHOW COLUMNS FROM hotel_reservation.`hotel reservation analysis in sql and tableau`;

## COLUMN NAMES
SELECT COLUMN_NAME, DATA_TYPE, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = hotel_reservation.`hotel reservation analysis in sql and tableau`;

## DATA CLEANING , checking for missing values
SELECT *
FROM  hotel_reservation.`hotel reservation analysis in sql and tableau`
WHERE column_name is NULL;

## Checking for Duplicates


## Count of reservations by hotel
SELECT hotel, COUNT(*) AS reservation_count
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;
## 

##% of cancelled reservations
SELECT hotel, 
       AVG(is_canceled) * 100 AS cancellation_percentage
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## AVERAGE METRICS
## Average lead time for reservations
SELECT hotel, AVG(lead_time) AS avg_lead_time
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## Average Daily Rate
SELECT hotel, AVG(adr) AS avg_daily_rate
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## SEASONAL 
## Reservations by arrival month
SELECT hotel, arrival_date_month, COUNT(*) AS reservation_count
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel, arrival_date_month;

## stays in weekend vs stays in weekdays 
SELECT hotel, AVG(stays_in_weekend_nights) AS avg_weekend_nights,
       AVG(stays_in_week_nights) AS avg_week_nights
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## CUSTOMERS
## customer types 
SELECT hotel, customer_type, COUNT(*) AS customer_count
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel, customer_type;

## NUmber of special requests per hotel
SELECT hotel, AVG(total_of_special_requests) AS avg_special_requests
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## Occupancy Rate
SELECT hotel, AVG(occupancy_rate) AS avg_occupancy_rate
FROM (
    SELECT hotel, COUNT(*) / MAX(total_rooms) AS occupancy_rate
    FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
    GROUP BY hotel, arrival_date
) AS subquery
GROUP BY hotel;

## Average number of people
SELECT hotel, AVG(adults) AS avg_adults,
               AVG(children) AS avg_children,
               AVG(babies) AS avg_babies
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## Reserved rooms
SELECT hotel, reserved_room_type, COUNT(*) AS room_count
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel, reserved_room_type;

## Booking Changes
SELECT hotel, AVG(booking_changes) AS avg_booking_changes
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;


## Total Revenue
SELECT hotel, SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## Days in waiting list
SELECT hotel, AVG(days_in_waiting_list) AS avg_days_in_waiting_list
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel;

## Meal Preferences
SELECT hotel, meal, COUNT(*) AS meal_count
FROM hotel_reservation.`hotel reservation analysis in sql and tableau`
GROUP BY hotel, meal;







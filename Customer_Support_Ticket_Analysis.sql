-- ==========================================================
-- Customer Support Ticket Analysis Using SQL
-- Author: Raissa Beckford
-- Project: Customer Support Ticket Analysis
-- Database: SQLite
-- ==========================================================

-------------------------------------------------------------
-- Query 1: Total Number of Support Tickets
-------------------------------------------------------------

SELECT COUNT(*) AS total_tickets
FROM customer_support_tickets;

-------------------------------------------------------------
-- Query 2: Ticket Status Distribution
-------------------------------------------------------------

SELECT
    ticket_status,
    COUNT(*) AS total_tickets
FROM customer_support_tickets
GROUP BY ticket_status
ORDER BY total_tickets DESC;

-------------------------------------------------------------
-- Query 3: Tickets by Priority
-------------------------------------------------------------

SELECT
    ticket_priority,
    COUNT(*) AS total_tickets
FROM customer_support_tickets
GROUP BY ticket_priority
ORDER BY total_tickets DESC;

-------------------------------------------------------------
-- Query 4: Tickets by Type
-------------------------------------------------------------

SELECT
    ticket_type,
    COUNT(*) AS total_tickets
FROM customer_support_tickets
GROUP BY ticket_type
ORDER BY total_tickets DESC;

-------------------------------------------------------------
-- Query 5: Average Customer Satisfaction
-------------------------------------------------------------

SELECT
    ROUND(AVG(customer_satisfa),2) AS average_customer_satisfaction
FROM customer_support_tickets;

-------------------------------------------------------------
-- Query 6: Average Satisfaction by Ticket Type
-------------------------------------------------------------

SELECT
    ticket_type,
    ROUND(AVG(customer_satisfa),2) AS average_satisfaction
FROM customer_support_tickets
GROUP BY ticket_type
ORDER BY average_satisfaction DESC;

-------------------------------------------------------------


-------------------------------------------------------------
-- Query 8: Customer Gender Distribution
-------------------------------------------------------------

SELECT
    customer_gender,
    COUNT(*) AS total_customers
FROM customer_support_tickets
GROUP BY customer_gender
ORDER BY total_customers DESC;

-------------------------------------------------------------
-- Query 9: Average Customer Age
-------------------------------------------------------------

SELECT
    ROUND(AVG(customer_age),1) AS average_customer_age
FROM customer_support_tickets;
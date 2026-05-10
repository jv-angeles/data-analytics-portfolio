-- =========================================
-- Project Title: Top 15 Most Commonly Used Materials
-- Objective:
-- Identify the aircraft materials most frequently used in maintenance operations.
--
-- Business Question:
-- Which materials are consumed most often and may require tighter inventory monitoring?
--
-- Skills Used:
-- SUM
-- GROUP BY
-- ORDER BY
-- LIMIT
-- =========================================

SELECT 
    part_number,
    SUM(quantity_issued) AS total_usage
FROM aircraft_materials
GROUP BY part_number
ORDER BY total_usage DESC
LIMIT 15;

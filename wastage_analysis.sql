-- =========================================
-- Project Title: Material Wastage Analysis
-- Objective:
-- Identify aircraft materials with the highest wastage quantities.
--
-- Business Question:
-- Which materials generate the highest wastage and may require tighter inventory control?
--
-- Skills Used:
-- SUM
-- GROUP BY
-- ORDER BY
-- Arithmetic Operations
-- =========================================

SELECT 
    part_number,
    SUM(quantity_issued - quantity_used) AS total_wastage
FROM aircraft_materials
WHERE quantity_issued > quantity_used
GROUP BY part_number
ORDER BY total_wastage DESC;

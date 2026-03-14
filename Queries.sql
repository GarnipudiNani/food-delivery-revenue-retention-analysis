-- 1. Revenue by City
SELECT city,
  COUNT(order_id)           AS total_orders,
  ROUND(SUM(order_value),2) AS total_revenue,
  ROUND(AVG(order_value),2) AS avg_order_value,
  ROUND(SUM(order_value)*100.0/SUM(SUM(order_value)) OVER(),1) AS revenue_pct
FROM orders
GROUP BY city
ORDER BY total_revenue DESC;

-- 2. Cuisine Retention Rate
WITH first_orders AS (
  SELECT customer_id, cuisine, MIN(order_date) AS first_order_date
  FROM orders GROUP BY customer_id, cuisine
),
repeat_orders AS (
  SELECT o.customer_id, fo.cuisine
  FROM orders o
  JOIN first_orders fo ON o.customer_id = fo.customer_id
    AND o.cuisine = fo.cuisine AND o.order_date > fo.first_order_date
)
SELECT fo.cuisine,
  COUNT(DISTINCT fo.customer_id)   AS total_customers,
  COUNT(DISTINCT ro.customer_id)   AS repeat_customers,
  ROUND(COUNT(DISTINCT ro.customer_id)*100.0
    / COUNT(DISTINCT fo.customer_id),1) AS retention_rate_pct
FROM first_orders fo
LEFT JOIN repeat_orders ro
  ON fo.customer_id = ro.customer_id AND fo.cuisine = ro.cuisine
GROUP BY fo.cuisine ORDER BY retention_rate_pct DESC;

-- 3. Peak Ordering Hours
SELECT EXTRACT(HOUR FROM order_datetime) AS order_hour,
  COUNT(order_id) AS total_orders,
  ROUND(AVG(order_value),2) AS avg_value
FROM orders
GROUP BY order_hour
ORDER BY total_orders DESC LIMIT 10;

# Food Delivery Revenue & Customer Retention Analysis

**Author:** Nani Garnipudi | **Tools:** SQL · Power BI · Python · Excel | **Dataset:** 5,000 orders · FY 2024

---

## Project Overview

A food delivery company wants to understand which cities generate the most revenue, which food categories drive repeat orders, and why some customers order only once. This project analyzes 5,000 food delivery orders across 8 Indian cities to identify revenue drivers, customer retention gaps, and peak hour patterns.

---

## Business Problem

- Which cities and cuisines generate the most revenue?
- Which food categories drive repeat orders vs one-time purchases?
- Why are some customers ordering only once and not returning?
- When are peak ordering hours and how should staffing be optimized?

---

## Tools and Technologies

| Tool | Usage |
|------|-------|
| SQL | Aggregations, window functions, cohort retention analysis |
| Power BI | 3-page interactive dashboard with DAX measures |
| Python | Data generation and cleaning using Pandas and NumPy |
| Excel | KPI summary tables and charts |

---

## Dataset

5,000 food delivery orders generated using Python.

**Fields:** order_id, customer_id, city, cuisine, order_value, delivery_time_min, rating, order_date, order_hour, is_repeat_customer

**8 Cities:** Hyderabad, Bangalore, Mumbai, Delhi, Chennai, Pune, Kolkata, Ahmedabad

**8 Cuisines:** Biryani, South Indian, North Indian, Chinese, Pizza, Burger, Rolls, Desserts

---

## Key Business Insights

**1. Retention Gap** — Biryani drives 22% of revenue but retains only 45% of customers. South Indian retains 76%. Recommendation: post-order voucher program targeting Biryani customers.

**2. City Concentration** — Hyderabad and Bangalore contribute 40% of total revenue. Recommendation: faster delivery SLA and exclusive restaurant partnerships in these cities.

**3. Peak Hour Gap** — 40% of daily orders land between 7 PM and 10 PM. Recommendation: surge pay and pre-positioned delivery staff before 7 PM.

**4. One-Time Customers** — 19% of customers never reordered. Recommendation: 24-hour post-order push notification with 20% discount on second order.

---

## Project Structure
food-delivery-revenue-retention-analysis/
├── Data/
│   └── food_delivery_data.csv
├── Dashboard/
│   └── food_delivery_project.xlsx
├── Sql/
│   └── queries.sql
└── README.md

---

## Resume Bullets

- Analyzed 5,000 food delivery orders across 8 Indian cities using SQL window functions and cohort analysis to identify revenue drivers and customer retention patterns.
- Identified a 30-point retention gap between Biryani and South Indian cuisine, recommending a post-order voucher program projected to recover 30% of churned customers.
- Built a 3-page interactive Power BI dashboard with DAX measures for repeat customer rate, average order value, and delivery SLA compliance.
- Identified peak ordering window 7 to 10 PM accounting for 40% of daily volume, informing a surge-staffing recommendation to reduce delivery times during peak hours.

---

Nani Garnipudi | nanigarnipudi28@gmail.com | [LinkedIn](https://www.linkedin.com/in/nani-garnipudi-534817376) | [GitHub](https://github.com/GarnipudiNani)

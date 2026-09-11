# Sales Trend Analysis Using Aggregations

## Objective

The objective of this project is to analyze sales performance over time by calculating:

- Monthly revenue
- Monthly order volume

## Tools Used

- PostgreSQL
- SQL
- pgAdmin
- Visual Studio Code

## Dataset

The dataset used for this analysis is **Online Sales Data.csv**.

The dataset contains **240 sales transactions** with the following columns:

- Transaction ID
- Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

For the analysis:

- **Transaction ID** was treated as the transaction identifier.
- **Date** was used to determine the sales month.
- **Total Revenue** was used to calculate monthly revenue.

## SQL Concepts Used

- `DATE_TRUNC()` — Used to group transactions by month
- `SUM()` — Used to calculate monthly revenue
- `COUNT(DISTINCT ...)` — Used to calculate order volume
- `GROUP BY` — Used to aggregate monthly data
- `ORDER BY` — Used to sort the results chronologically
- `WHERE` — Used to filter a specific time period

## Monthly Sales Trend Results

| Month | Monthly Revenue | Order Volume |
|---|---:|---:|
| January 2024 | 14,548.32 | 31 |
| February 2024 | 10,803.37 | 29 |
| March 2024 | 12,849.24 | 31 |
| April 2024 | 12,451.69 | 30 |
| May 2024 | 8,455.49 | 31 |
| June 2024 | 7,384.55 | 30 |
| July 2024 | 6,797.08 | 31 |
| August 2024 | 7,278.11 | 27 |

## Key Findings

- The dataset covers the period from **January 2024 to August 2024**.
- **January 2024** recorded the highest monthly revenue at **14,548.32**.
- **July 2024** recorded the lowest monthly revenue at **6,797.08**.
- The highest order volume was **31 transactions**, recorded in January, March, May, and July.
- Overall, monthly revenue declined after January, with a slight increase in August compared with July.

## Project Files

| File | Description |
|---|---|
| `Online Sales Data.csv` | Original sales dataset |
| `task6_sales_trend_analysis.sql` | PostgreSQL SQL script containing table creation, data analysis, and aggregation queries |
| `README.md` | Project documentation |

## Author

**Ramsha**

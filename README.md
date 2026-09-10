# Business Sales Intelligence & Performance Analytics

## Project Overview
This project simulates working as a Junior Data Analyst for a retail company, transforming raw sales transaction data into actionable business insights through an end-to-end analytics pipeline and an interactive Power BI dashboard.

## Dataset
- **Source:** Sample Superstore Dataset (Kaggle)
- **Size:** 9,994 rows, 21 columns
- **Fields:** Order ID, Order Date, Ship Date, Customer info, Segment, Region, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit

## Tools Used
- **Python** (Pandas, NumPy, Matplotlib, Seaborn) — data cleaning and EDA
- **SQL Server** — data storage and business analysis queries
- **Power BI Desktop** — data modeling, DAX, and dashboard reporting
- **GitHub** — version control and documentation

## Methodology
Raw Dataset → Data Understanding → Data Cleaning (Python) → EDA → SQL Database → SQL Analysis → Power BI Dashboard → Business Insights → Recommendations

## Data Cleaning
- No missing values or duplicate records found
- Converted Order Date and Ship Date to proper date format
- Verified no negative/invalid values in Sales, Quantity, or Discount
- Confirmed consistent category values across all categorical fields

## Analysis Highlights
- Total Sales: $2,297,200 | Total Profit: $286,397 | Profit Margin: 12.47%
- Technology is the most profitable category (17.4% margin); Furniture the weakest (2.5%)
- Discounts above 20-30% are strongly associated with unprofitable orders
- Sales grew 51% from 2014 to 2017

## Dashboard
The Power BI dashboard contains 4 pages:
1. **Executive Overview** — KPIs, Sales/Profit Trend, Sales by Region
2. **Product Analysis** — Category/Sub-Category performance, Top/Bottom Products, Slicers
3. **Customer Analysis** — Top Customers, Orders per Customer, Segment breakdown
4. **Regional & Time Analysis** — Regional comparison, Monthly/Quarterly/Yearly trends, YoY Growth

(See `/screenshots` folder for dashboard images)

## Key Insights
1. Technology drives profitability with a 17.4% margin; Furniture lags at 2.5% despite similar sales volume to Office Supplies.
2. Discounts above 20-30% consistently produce losses, reaching -$310 average loss per order at 50% discount.
3. Revenue doesn't always mean value — the top customer by sales has negative total profit, while a mid-ranked customer delivers the highest profit.
4. The West region leads in sales and profit, while Central has the weakest profit margin (7.9%) despite solid sales volume.
5. A small number of products drive outsized losses — one product alone lost over $8,800.
6. Sales grew 51% from 2014 to 2017, despite a dip in 2015.
7. Some best-selling products are not the most profitable, indicating excessive discounting on specific items.
8. The Consumer segment makes up roughly half of the customer base by count.

## Recommendations
1. Cap discounts at 20-25% on most products to protect margins.
2. Review pricing/cost structure for the Furniture category, especially Tables and Bookcases.
3. Discontinue or renegotiate terms for chronic loss-making products.
4. Investigate Central region's cost structure to improve profit margin.
5. Shift loyalty/marketing focus toward high-profit customers, not just high-revenue ones.

## How to Run
1. Clone this repository
2. Install dependencies: `pip install -r requirements.txt`
3. Open `notebook/EDA.ipynb` to view the Python analysis
4. Run SQL scripts in `SQL/queries.sql` against a SQL Server instance
5. Open `powerbi/sales_dashboard.pbix` in Power BI Desktop to view the dashboard

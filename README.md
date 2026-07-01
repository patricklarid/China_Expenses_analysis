# 🇨🇳 18 Days in China: A Personal Spending Dashboard

**Built with:** Power BI | SQL | Excel  
**Data:** My actual spending from an 18-day trip to China (Nov 2024)

---

## 📊 Project Overview

This project is a complete data pipeline, from messy raw data to a polished interactive dashboard.

I tracked every yuan I spent across 18 days and 5 Chinese cities (Beijing, Zhangjiajie, Shanghai, Chongqing, and Chengdu). The final result is a 5-slide Power BI dashboard that tells the story behind the numbers: where my money went, what surprised me, and what I'll remember.

---

## 🧠 The Data Journey (How I Built This)

### 1. Data Collection
I downloaded **3 separate payment history files** from the platforms I used:
- **Alipay**
- **WeChat Pay**
- **Revolut**

I also manually added **cash transactions** that I tracked during the trip.

### 2. Data Cleaning (Excel)
I combined the 3 files into a single CSV and cleaned the data by:
- Filtering out irrelevant columns (keeping only: City, Category, Subcategory, Description, Amount, and Payment Method)
- Standardizing category names across all payment methods
- Manually entering cash transactions

### 3. Data Validation (SQL)
Once the data was clean, I used **SQL** to run a few sanity checks and explore the data:
- Global overview (total spend, average transaction, top purchase, transaction count)
- Spend breakdown by category

*I did not build the dashboard directly from SQL, I used it to verify the data before visualizing.*

### 4. Visualization (Power BI)
I imported the cleaned CSV into Power BI and built a dashboard to explore the story:
- Executive Summary
- Where Did My Money Go?
- Food Breakdown
- Transport Breakdown
- City Comparison
*(A 6th slide —> Key Takeaways, is available on my LinkedIn post/project section for those interested in the full narrative.)*
---

## 🛠️ SQL Queries (Data Aggregation)

I used SQL to aggregate and explore the raw CSV data before building the dashboard. 

**1. Global Overview** (`1_Global_Overview.sql`)
- Total spend, average transaction, top purchase, transaction count  
- Includes currency conversion: CNY → USD, EUR, RON

**2. Spend by Category** (`2_Spend_By_Category.sql`)
- Breakdown by Food, Transport, Attractions, Shopping, etc.

*The SQL queries reference the expenses.csv file, ensure it is in the same directory or update the file path.*
*Screenshots of the queries and results are included in the `/SQL/` folder.*


## 📥 How to Explore the Dashboard

1. Download the `.pbix` file from the `/PowerBI Dashboard/` folder.
2. Open it in Power BI Desktop (free to download).
3. Interact with the slicers to filter by city or category.

---

## 🙋 About Me

I'm Patrick, a guy passionate about numbers and visual stories.  
This project combines my love for travel with my technical skills.

**Connect with me:**  
[LinkedIn](https://www.linkedin.com/in/patrick-rosca-185b08151 )  

---

## 📄 License

Feel free to use this as a reference for your own travel dashboards! 😉

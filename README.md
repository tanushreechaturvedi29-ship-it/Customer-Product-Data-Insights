# Customer-Product Data Insights

A structured SQL-based Exploratory Data Analysis (EDA) project focused on understanding customer behaviour, product performance, and sales trends within a data warehouse.

This **medium-length** README gives a clear, professional overview suitable for GitHub and recruiters.

---

## 📌 1. Project Overview

This project analyzes customer, product, and sales data using pure SQL. It covers:

* Database & schema exploration
* Descriptive analytics (sales, orders, customers)
* Distribution & ranking analysis
* Time-series trends
* Cumulative & performance analysis
* Customer & product segmentation
* Final analytical views for reporting


---

## 🔍 2. Analysis Summary (Detailed Version) (Detailed Version)

Below is a concise breakdown of all analysis steps.

### **A. Exploration & Metadata**

A foundational step to understand the database before analysis.

**Tasks Performed:**

* Retrieved all tables using `INFORMATION_SCHEMA.TABLES` to validate schema creation
* Explored metadata for customer and product dimensions
* Verified column names, types, nullability, and max lengths
* Ensured clean integration of fact and dimension tables for accurate joins

**Value:**
This step ensures the data model is fully understood, enabling clean and error‑free analytics.

### **B. Date & Range Insights**. Date & Range Insights**

* First & last order date
* Customer age calculation
* Date range in years

### **C. Key Business Metrics**

* Total Sales, Orders, Quantity
* Average Selling Price
* Total Products & Customers
* Summary KPI dashboard using `UNION ALL`

### **D. Magnitude Analysis**

* Customers by country & gender
* Products per category
* Revenue per category & customer
* Quantity distribution across countries

### **E. Ranking Analysis**

* Top & worst performing products
* Top revenue-generating customers
* Customers with the fewest orders

### **F. Time-Series & Trend Analysis**

* Monthly sales, customers, and quantity
* Date grouping using YEAR/MONTH, DATE_FORMAT
* Trend patterns

### **G. Cumulative Analysis**

* Running sales totals
* Moving average price

### **H. Performance Analysis**

* Year-over-Year comparison using `LAG()`
* Above/Below average product performance
* Growth or decline indicators

### **I. Segmentation**

**Products:** cost-based ranges
**Customers:**

* VIP (lifespan ≥ 12 months, spending > 5000)
* Regular (lifespan ≥ 12 months, ≤ 5000)
* New (lifespan < 12 months)

### **J. Part-to-Whole (Contribution)**

* Category-level contribution to total sales using window functions

---

## 📊 3. Final Analytical Reports

### **1. `gold.report_customers` View**

Provides consolidated customer-level metrics:

* Age & Age Group
* Customer Segment (VIP/Regular/New)
* Total Orders, Sales, Quantity
* Recency
* AOV & Average Monthly Spend
* Lifespan in months

### **2. `gold.report_products` View**

Comprehensive product-level reporting:

* Category & Subcategory
* Total Sales, Orders, Quantity
* Unique Customers
* Recency
* Performance Segment (High/Mid/Low)
* Avg Selling Price, AOR, Avg Monthly Revenue

---

## 🛠️ 4. Technologies Used

* SQL (MySQL)
* Window Functions (SQL analytical functions — not Windows OS)
* Aggregations (SUM, AVG, COUNT)
* Date & Time Functions
* CTEs (WITH clauses)
* Data Warehouse Modeling
* **Development Environment: macOS (VS Code + MySQL Server installed via Homebrew)**

---

## 🏁 5. Conclusion

This project highlights complete analytical capability using SQL alone — from exploration to advanced business reporting. It demonstrates strong analytical skills, understanding of metrics, segmentation, time-series analysis, and the ability to build reusable reporting structures.

---


# Retail Data Analysis Project

This project analyzes a **Brazilian e-commerce dataset (Olist)** using **SQL Server** for data queries and **Python (Pandas + Matplotlib)** for data visualization.  
The goal is to simulate a real-world Data Analyst workflow: extracting business insights, cleaning and transforming data, and creating meaningful reports.

---

## 📂 Project Structure

Retail-Data-Analysis/
│
├── data/ # Original dataset
├── sql_queries/ # SQL scripts and exported results
│ └── data_export/ # Query outputs (CSV files)
├── python_scripts/ # Python code for visualization
│ └── charts/ # Final charts and plots
└── README.md # Project documentation

---

## ⚙️ Tools Used
- **SQL Server Management Studio (SSMS)** → Writing queries and extracting results.  
- **Python 3 (Pandas, Matplotlib)** → Data cleaning and visualization.  
- **CSV Exports** → Saving SQL query outputs for visualization.  
- **GitHub** → Project version control and documentation.  

---

## 📊 Key Business Questions Answered

1. What are the top product categories?  
2. Which payment method is most frequently used?  
3. What is the average order value per month?  
4. How do monthly sales evolve over time?  
5. Which cities generate the highest sales?  
6. Who are the top customers and sellers?  
7. What is the average delivery time per city?  
8. What is the distribution of order status (delivered, canceled, shipped, etc.)?  
9. What percentage of orders are delivered late vs on-time?  
10. What are the top-selling products overall?  
11. What is the percentage of unique customers?  
12. What is the overall revenue trend?

---

## 📈 Visualizations

Some of the key charts included:

- **Monthly Sales Trend**  
- **Average Order Value per Month**  
- **Order Status Distribution (Delivered vs Canceled)**  
- **Top Product Categories**  
- **Top Payment Methods**  
- **Top Cities by Sales**  
- **Top Customers and Sellers**  
- **Average Delivery Days per City**  

> All visualizations are saved under `charts/`.

---

## 🚀 How to Run the Project

1. Import the dataset into **SQL Server**.  
2. Run the queries from `/retail_analysis_queries.sql`.  
3. Export results into `/data_export/`.  
4. Open `python_scripts.py` and run it to generate charts.  
5. Find outputs inside `/charts`.

---

## 📌 Insights Summary
- **Credit Card** is the most common payment method.  
- **São Paulo** and other big cities dominate total orders.  
- **Electronics and accessories** are among the top categories.  
- **Monthly sales** grew steadily until late 2017, then dropped.  
- Around **30% of orders were delivered late**.  
- The dataset shows strong growth but also high cancellation and delay rates.

---

## 💡 Next Steps
- Deeper customer segmentation (RFM analysis).  
- Predictive modeling (churn, late delivery).  
- Building an interactive **Power BI dashboard**.  

---

👤 *Project by Mohamed Emad(omda123)*  
📅 *September 2025*

# Walmart Data Analysis Project  

This project involves analyzing Walmart sales data with over 10,000 rows and 11 columns using Python and MySQL. The dataset was downloaded from Kaggle and has been cleaned, preprocessed, and analyzed to address key business questions.  

## Table of Contents  
- [Introduction](#introduction)  
- [Dataset Overview](#dataset-overview)  
- [Technologies Used](#technologies-used)  
- [Project Workflow](#project-workflow)  
  - [1. Data Cleaning and Preprocessing](#1-data-cleaning-and-preprocessing)  
  - [2. Data Export to MySQL](#2-data-export-to-mysql)  
  - [3. SQL Analysis](#3-sql-analysis)  
  - [4. Business Problem Solving](#4-business-problem-solving)  
- [Key Insights](#key-insights)  
- [Conclusion](#conclusion)  

---

## Introduction  
The primary goal of this project was to analyze Walmart sales data to extract actionable business insights, including revenue trends, best-selling product categories, and profit margins.  

## Dataset Overview  
- **Source**: [Kaggle]([https://www.kaggle.com/](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets))  
- **Size**: 10,000+ rows, 11 columns  
- **Features**: Includes data related to branch, category, sales, time, city, payment method, and profit margins.  

## Technologies Used  
- **Python Libraries**: Pandas, PyMySQL, SQLAlchemy  
- **Database**: MySQL  
- **IDE**: Jupyter Notebook  

---

## Project Workflow  

### 1. Data Cleaning and Preprocessing  
- Loaded the dataset into Python using Pandas.  
- Handled missing values and corrected data types.  
- Cleaned and formatted columns for consistency.  

### 2. Data Export to MySQL  
- Exported the cleaned dataset from Python to MySQL using `pymysql` and `sqlalchemy` libraries for efficient SQL-based analysis.  

### 3. SQL Analysis  
Performed complex SQL queries to analyze data:  
- Revenue trends across branches and categories.  
- Identified best-selling product categories.  
- Evaluated sales performance by time, city, and payment method.  
- Analyzed peak sales periods and customer buying patterns.  
- Conducted profit margin analysis by branch and category.  

### 4. Business Problem Solving  
Key business questions answered include:  
1. **Revenue Trends**: Examined revenue changes across different branches and categories.  
2. **Best-Selling Products**: Identified top-performing product categories.  
3. **Sales Analysis**: Studied sales performance by time, city, and payment method.  
4. **Customer Patterns**: Analyzed peak sales periods and customer preferences.  
5. **Profit Margins**: Assessed profit margins for branches and categories.  

---

## Key Insights  
- Branch X had the highest revenue contribution, while Branch Y had the best profit margins.  
- Payment methods varied significantly by city, impacting customer preferences.  
- Category Z consistently performed as the best-seller across all branches.  

## Conclusion  
This project demonstrates the power of data analysis in solving real-world business problems. By leveraging Python and MySQL, we derived actionable insights that can guide strategic decision-making.  

---

### Note  
Feel free to clone or fork this repository to explore the analysis further. Contributions are welcome!  

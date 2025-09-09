# 📊 MyBankDB – Banking Database Project

## 📌 Project Overview

This project simulates a **banking database system** for learning and practicing SQL queries.
It includes **7 CSV files** representing core entities of a banking system. The database can be used for:

* Querying and analyzing customer, account, and transaction details.
* Performing joins and aggregations to extract meaningful insights.
* Practicing advanced SQL queries (subqueries, grouping, string functions, date functions, etc.).
* Understanding real-world banking data structures.

---

## 📂 Dataset (CSV Tables)

The following CSV files are included in the repository:

1. **customers.csv** – Contains customer information (ID, name, age, etc.).
2. **accounts.csv** – Holds details about bank accounts (account number, type, balance, status, open date, etc.).
3. **transactions.csv** – Records financial transactions (transaction ID, date, type, amount, description).
4. **loans.csv** – Stores loan details (amount, interest rate, start & end dates, status).
5. **creditcards.csv** – Includes credit card details (credit limit, balance, customer ID).
6. **branches.csv** – Contains branch information (branch ID, name, location).
7. **atms.csv** – Represents ATM details (ATM ID, location, status).

---

## ⚙️ Features Demonstrated

* **Basic Queries**: Viewing and filtering customer, account, and transaction data.
* **Aggregations**: Summing loans, credit card limits, and transaction amounts.
* **Filtering Conditions**: Active vs inactive accounts, date-based queries, age grouping.
* **Joins**: Combining data across multiple tables (customers ↔ accounts ↔ transactions).
* **Advanced SQL**:

  * Subqueries (finding second highest loan, distinct amounts).
  * String functions (substring, splitting names).
  * Date functions (days remaining on loans, latest transactions).
  * Grouping and having clauses (customers with multiple accounts).
* **Data Management**: Creating clone tables, inserting, and deleting records.

---

## 🚀 How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/mybankdb.git
   cd mybankdb
   ```

2. Import the CSV files into your preferred database system (e.g., MySQL, PostgreSQL, SQLite, etc.).

3. Create a database named **`mybankdb`**.

4. Load the CSVs as tables (`customers`, `accounts`, `transactions`, `loans`, `creditcards`, `branches`, `atms`).

5. Run SQL queries to explore and analyze the data.

---

## 🎯 Example Use Cases

* Find customers with multiple accounts.
* Identify the top loan holders.
* Calculate total loan amount and credit card limits.
* Track inactive accounts and ATMs.
* Analyze transaction patterns by month or year.
* Categorize customers by age groups.

---

## 🛠️ Tools & Technologies

* **SQL (MySQL/PostgreSQL/SQLite compatible)**
* **CSV files** for data storage
* **GitHub** for project versioning

---

## 📌 Future Enhancements

* Add more real-world attributes (e.g., employee records, fixed deposits).
* Create dashboards for data visualization (using Python, Power BI, or Tableau).
* Implement stored procedures and triggers for automation.
* Design ER diagrams for better schema understanding.

---

## 👨‍💻 Author

Developed by **PIYUSH THOOL** ✨
This project is for **educational purposes**, focusing on SQL practice with a realistic banking dataset.


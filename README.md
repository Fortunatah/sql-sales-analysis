📌 Project Overview
This project focuses on extracting business insights from the classicmodels relational database. The goal was to solve specific data gaps regarding sales performance, inventory management, and customer engagement using advanced querying techniques.

🛠️ Tech Stack & Skills
Database: MySQL

Tool: MySQL Workbench

Core Skills: * Multi-table Joins: Navigating complex relationships across 3+ tables.

Data Gap Analysis: Identifying "missing" records using Outer Joins.

Pattern Matching: Auditing large text fields using Regular Expressions (REGEXP).

Reporting: Transforming raw database tables into readable, aliased business reports.

🗺️ Database Schema
To visualize the data flow, I reverse-engineered the database to map how customers, orders, and employees are linked.

🔍 Key Analysis & Business Solutions
1. Sales Representative Performance Mapping
The Problem: The company lacked a direct way to see which employee was responsible for specific customer orders because the connection was indirect.
The Solution: I successfully bridged the orders, customers, and employees tables. This produced a master report linking every order number to a specific sales representative's name.


2. Specialized Inventory Search
The Problem: The warehouse team required a list of products containing specific technical components for a new catalog.
The Solution: I implemented a specialized search using REGEXP logic to audit thousands of product descriptions. This isolated all items related to "interior" and "dashboard" components with a single pass.


3. Identifying Inactive Customer Accounts
The Problem: Marketing needed to identify "leads" that signed up but never actually completed a purchase.
The Solution: By applying a LEFT JOIN with NULL filtering, I isolated the exact list of customers with no order history. This list is now ready for targeted re-engagement campaigns.

💡 Key Takeaways
Relational Logic: Demonstrated the ability to trace data across multiple levels of a schema.

Accuracy: Refined join logic to ensure inactive data wasn't accidentally filtered out during analysis.

Documentation: All technical SQL scripts used to generate these results are in the scripts/ folder of this repository.

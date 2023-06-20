# Cloud_Kitchen
Cloud Kitchen Database Repository for healthy food kitchen. 
# Cloud Kitchen Database Repository

This repository contains SQL and DBML files for setting up and managing a cloud kitchen database. The database is designed to handle various aspects of a cloud kitchen business including customers, orders, branches, inventory, and staff.

## Contents

- `cloud_kitchen_schema.sql`: Contains the SQL statements to create the database schema.
- `cloud_kitchen_inserts.sql`: Contains SQL statements for inserting sample data into the database.
- `cloud_kitchen.dbml`: Contains the database schema in DBML (Database Markup Language) format.

## Getting Started

### Prerequisites

- MySQL Server
- A DBML viewer or editor (optional)

### Setting Up the Database

1. Start your MySQL server.
2. Create a new database for the cloud kitchen:

    ```sql
    CREATE DATABASE cloud_kitchen;
    USE cloud_kitchen;
    ```

3. Run the SQL statements from `cloud_kitchen_schema.sql` to create the tables:

    ```sh
    mysql -u username -p cloud_kitchen < cloud_kitchen_schema.sql
    ```

4. (Optional) Insert sample data into the tables by running the SQL statements from `cloud_kitchen_inserts.sql`:

    ```sh
    mysql -u username -p cloud_kitchen < cloud_kitchen_inserts.sql
    ```

### Visualizing the Schema using DBML

You can visualize the database schema using a DBML viewer or editor. Load the `cloud_kitchen.dbml` file into the DBML viewer to see the structure of the database.

## Sample Queries

Here are some sample queries you can run on the database:

```sql
-- Get all customers
SELECT * FROM Customers;

-- Get the total number of orders for each customer
SELECT customer_id, COUNT(*) as total_orders FROM orders GROUP BY customer_id;

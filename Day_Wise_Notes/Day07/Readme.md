# Day 07 - Morning Session

## 📌 Learning Virtual Environments

- Creating a new virtual environment to install modules, as third-party modules can affect existing ones.
- Commands:
  ```bash
  pip install virtualenv  # Installing virtual environment
  python -m venv myenv  # Naming the virtual environment
  .\myenv\Scripts\activate  # Activate virtual environment (myenv is the name of environment)
  .\myenv\Scripts\deactivate  # Deactivate virtual environment
  ```
- Additional commands:
  ```bash
  pip freeze  # Check installed modules
  pip install requests  # Install requests module
  pip show requests  # Show details about requests module
  ```
- Virtual environments will be used for data analytics.

---

## 🕒 Prebuilt Module: `datetime`

Operations performed:
- Importing required modules
- Getting the current date and time
- Extracting year, month, and day
- Getting only the current date
- Formatting the date using `strftime()`
- Getting current time components
- Getting a future date (e-commerce delivery estimation)

---

## 🛢️ Introduction to MySQL

- **Relational Database**: MySQL
- **Structured Data**: Data is an asset
- **Architecture Discussion**: For product development

### 📝 MySQL Data Types
- **Numbers:** `BIGINT`, `INT`, `SMALLINT`, `TINYINT`
- **Strings:** `CHAR()`, `VARCHAR()`, `TEXT`
- **Boolean:** `TRUE`, `FALSE`
- **Date & Time:** `DATETIME`, `DATE`

### 🔐 MySQL Constraints
| Constraint | Description | Can be NULL? |
|------------|-------------|--------------|
| PRIMARY KEY | Uniquely identifies each row | ❌ No |
| UNIQUE | Ensures unique values | ✅ Yes (if not combined with NOT NULL) |
| FOREIGN KEY | Ensures referential integrity | ✅ Yes (unless NOT NULL applied) |
| NOT NULL | Prevents NULL values | ❌ No |
| CHECK | Restricts values based on condition | ✅ Yes (if not combined with NOT NULL) |
| DEFAULT | Assigns default value | ✅ Yes |
| AUTO_INCREMENT | Generates unique numeric values | ❌ No |

---

## 🛠️ MySQL Commands

### 🔧 Types of Commands
- **DDL (Data Definition Language)**: `CREATE`, `TRUNCATE`, `DROP`, `ALTER`
- **DML (Data Manipulation Language)**: `INSERT`, `UPDATE`, `DELETE`
- **DQL (Data Query Language)**: `SELECT`
- **DCL (Data Control Language)**: `GRANT`, `REVOKE`
- **TCL (Transaction Control Language)**: `COMMIT`, `ROLLBACK`, `SAVEPOINT`

### ⚙️ Setting up MySQL in CMD
```bash
mysql -u root -p  # Login to MySQL
# Enter password
```

### 📂 Database Commands
```sql
SHOW DATABASES;
CREATE DATABASE database_name;
USE database_name;
```

### 🏗️ Creating Tables
```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
    [table_constraints]
);
```

### 📋 Query Examples
```sql
SHOW TABLES;  -- List all tables in database
DESC table_name;  -- Show table structure
ALTER TABLE student ADD COLUMN Id INT PRIMARY KEY FIRST;
ALTER TABLE student MODIFY age INT CHECK(age<=20);
INSERT INTO studentdata(Id, first_name, age) VALUES (11, 'Hey', 16);
UPDATE studentdata SET last_name="hello" WHERE Id = 11;
SELECT * FROM employee WHERE name LIKE 'A%';
SELECT MAX(salary) FROM employee;
SELECT salary FROM employee ORDER BY salary DESC LIMIT 2,1;
```

---

## 🔗 MySQL Joins
- **Right Join**: Returns all rows from the right table and matching rows from the left.
- **Left Join**: Returns all rows from the left table and matching rows from the right.
- **Outer Join**: Returns all rows from both tables, whether they match or not.
- **Inner Join**: Returns only matching rows from both tables.
- **Full Outer Join**: Done using UNION operator.
- **Self Join**: A table joins itself.
- **Natural Join**: Automatically joins tables using common columns.

---

## 🛒 Case Study: E-Commerce Website Database

### 💡 Features:
- **Cart** (Connected to `user` and `product` tables)
- **Product** and **User** tables (Independent)
- **Order** (Connected to `user`, `product`, `cart`, and `payment`)
- **Payment** (Connected to `product` and `user` via `uid`)
- **Address** (Connected to `user` and `order`)

### 🏗️ Approach:
```sql
CREATE TABLE user (
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(200) NOT NULL
);
CREATE TABLE product (
    pid INT PRIMARY KEY AUTO_INCREMENT,
    ppname VARCHAR(200),
    pprice FLOAT
);
CREATE TABLE cart (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    uid INT,
    FOREIGN KEY (pid) REFERENCES product(pid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (uid) REFERENCES user(uid)
);
CREATE TABLE payment (
    payid INT PRIMARY KEY AUTO_INCREMENT,
    amount FLOAT,
    pid INT,
    uid INT,
    FOREIGN KEY(pid) REFERENCES product(pid),
    FOREIGN KEY(uid) REFERENCES user(uid)
);
CREATE TABLE shaddress (
    aid INT PRIMARY KEY AUTO_INCREMENT,
    full_address VARCHAR(255),
    uid INT,
    FOREIGN KEY(uid) REFERENCES user(uid)
);
CREATE TABLE orderr (
    oid INT PRIMARY KEY AUTO_INCREMENT,
    payid INT,
    pid INT,
    uid INT,
    aid INT,
    FOREIGN KEY(payid) REFERENCES payment(payid),
    FOREIGN KEY(pid) REFERENCES product(pid),
    FOREIGN KEY(uid) REFERENCES user(uid),
    FOREIGN KEY(aid) REFERENCES shaddress(aid)
);
```

### 🔍 Queries for E-Commerce Case Study:
```sql
SELECT * FROM user INNER JOIN cart ON user.uid = cart.uid;
SELECT user.uid, user.uname, product.ppname, product.pprice FROM user
INNER JOIN cart ON user.uid = cart.uid
INNER JOIN product ON cart.pid = product.pid;
SELECT * FROM user
INNER JOIN payment ON user.uid = payment.uid
INNER JOIN product ON product.pid = payment.pid
INNER JOIN orderr ON orderr.payid = payment.payid
INNER JOIN shaddress ON orderr.aid = shaddress.aid;
```

### 🎯 Conclusion
At the end, we obtained:
- `uid, uname, payid, amount, ppname, full_address`

---

🎉 **End of Session!** 🚀

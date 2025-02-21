# 📚 SQL & Python Training Notes Day08

## 🚀 Overview
This repository contains detailed notes on SQL queries, database management, joins, user creation, and integrating SQL with Python. These notes were taken during my training sessions and cover everything from basic SQL operations to advanced queries and Python integration.

---

## 🛠️ SQL Joins
Joins in SQL are used to combine rows from two or more tables based on a related column. Here are the different types of joins:

1. **INNER JOIN**: Returns only the matching rows between tables.
2. **LEFT JOIN (LEFT OUTER JOIN)**: Returns all records from the left table and matching records from the right.
3. **RIGHT JOIN (RIGHT OUTER JOIN)**: Returns all records from the right table and matching records from the left.
4. **FULL JOIN (FULL OUTER JOIN)**: Returns all records from both tables.
5. **CROSS JOIN**: Returns the Cartesian product of both tables.
6. **SELF JOIN**: Joins a table with itself.
7. **NATURAL JOIN**: Automatically matches columns with the same name.

🔍 **Example of INNER JOIN:**
```sql
SELECT emp.ename, emp.designation, dept.dname
FROM emp
INNER JOIN dept ON emp.dept_id = dept.dept_id;
```

📝 **Key Takeaways:**
- Use **INNER JOIN** for matching rows.
- Use **OUTER JOINs** to include unmatched rows.
- **NATURAL JOIN** can be risky if column names change.

---

## 🔐 Creating & Managing Users in MySQL

### ✅ Create a New User
```sql
CREATE USER 'user12'@'localhost' IDENTIFIED BY 'user12';
```
### ✅ Grant Privileges
```sql
GRANT SELECT ON wit.emp TO 'user12'@'localhost';
GRANT SELECT, DELETE ON wit.* TO 'user12'@'localhost';
```
### ❌ Revoke Privileges
```sql
REVOKE SELECT, DELETE ON wit.* FROM 'user12'@'localhost';
```

📝 **Key Takeaways:**
- Use `GRANT` to give permissions.
- Use `REVOKE` to remove access.
- Be cautious while granting `ALL PRIVILEGES`.

---

## 🔄 Transaction Control Language (TCL)
TCL commands manage database transactions:
1. **START TRANSACTION** – Begins a transaction.
2. **SAVEPOINT** – Creates a rollback point.
3. **ROLLBACK** – Rolls back to a savepoint.
4. **COMMIT** – Saves all changes permanently.

🔍 **Example:**
```sql
START TRANSACTION;
UPDATE emp SET salary = salary * 1.1 WHERE dept_id = 101;
SAVEPOINT before_bonus;
ROLLBACK TO before_bonus;
COMMIT;
```

📝 **Key Takeaways:**
- Always `COMMIT` transactions when done.
- Use `SAVEPOINT` to mark critical rollback points.

---

## 🏥 Case Study: Hospital Management System
A hospital management system performs operations like:
- Displaying which patients are admitted.
- Showing hospitals with no patients.
- Identifying unassigned doctors.

Example Query:
```sql
SELECT p.pname, h.hname FROM patients p
LEFT JOIN hospitals h ON p.hosp_id = h.hosp_id;
```

---

## 🐍 Connecting MySQL to Python
To connect MySQL with Python, install the required libraries:
```bash
pip install mysql-connector-python
pip install pymysql
```
### ✅ Establish Connection
```python
import pymysql
myconn = pymysql.connect(
    host='localhost',
    user='root',
    password='your_password'
)
print(myconn)
```
### ✅ Creating a Cursor
```python
cur = myconn.cursor()
print(cur)
```
### ✅ Creating a Database
```python
cur.execute('CREATE DATABASE pywit')
```
### ✅ Listing Databases
```python
cur.execute('SHOW DATABASES')
for db in cur:
    print(db)
```

### ✅ Using a Database
```python
myconn = pymysql.connect(
    host='localhost',
    user='root',
    password='your_password',
    database='pywit'
)
```

### ✅ Creating & Checking Tables
```python
cur.execute('SHOW TABLES')
for table in cur:
    print(table)
```

### ✅ Inserting Values
```python
cur.execute('INSERT INTO students(id, name, age) VALUES(%s, %s, %s)', (1, 'Sakshi', 20))
query = 'INSERT INTO students(id, name, age) VALUES(%s, %s, %s)'
values = (2, 'Avira', 22)
cur.execute(query, values)
```
### ✅ Committing Changes
```python
myconn.commit()
```
### ❌ Closing Connection (IMPORTANT)
```python
myconn.close()
```

📝 **Key Takeaways:**
- Always close the connection after execution.
- Use parameterized queries to prevent SQL injection.
- Commit changes using `myconn.commit()`.

---

## 🎯 Summary & Important Notes
- **Joins** help merge data from multiple tables efficiently.
- **User Management** in MySQL allows access control.
- **TCL Commands** ensure data integrity with rollback and commit.
- **SQL + Python Integration** enables automation of database operations.
- **ALWAYS close the database connection (`myconn.close()`) after executing queries!**

---

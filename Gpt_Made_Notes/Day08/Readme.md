# 💻 SQL & Python - Fun & Engaging Learning Notes 🎉

Welcome, fellow code warriors! 🚀 Ever wondered how to make SQL and Python dance together like an awkward couple at prom? Well, buckle up because this ride will be as fun as debugging at 2 AM! Let's jump into the world of databases, queries, joins, subqueries, and Python integration with a sprinkle of humor! 

---

## 🔮 SQL Joins - The "Matchmaker" of Databases

Joins in SQL are like Tinder but for tables – they help us match rows from different tables based on related columns. Here are the different types:

1. **INNER JOIN** - The "Common Interests" join. Only shows rows that have a match in both tables.
2. **LEFT JOIN (LEFT OUTER JOIN)** - The "Always Picks the Left Side" join. Shows all rows from the left table and matches from the right.
3. **RIGHT JOIN (RIGHT OUTER JOIN)** - The "Always Picks the Right Side" join. Opposite of LEFT JOIN.
4. **FULL JOIN (FULL OUTER JOIN)** - The "Everyone's Invited" join. Shows all rows from both tables.
5. **CROSS JOIN** - The "Match Everything" join. Pairs each row from one table with every row from another (great for chaos lovers).
6. **SELF JOIN** - The "Talking to Yourself" join. A table joins with itself (just like we do when debugging).
7. **NATURAL JOIN** - The "Magic Match" join. Automatically matches columns with the same name.

### 🔨 Example - Employee & Manager Relationship (SELF JOIN)

```sql
CREATE TABLE emp (
    eid INT PRIMARY KEY,
    ename VARCHAR(20),
    designation VARCHAR(200),
    bid INT
);

INSERT INTO emp VALUES 
(1, 'John', 'Dev', 6), 
(2, 'Abc', 'Dev', 6),
(3, 'Rocky', 'Dev', 6),
(4, 'Bhai', 'Dev', 6), 
(5, 'Rahul', 'Tester', 8), 
(6, 'Xyz', 'D-Manager', 9), 
(7, 'Shelar', 'Tester', 8), 
(8, 'Tom', 'T-Manager', 9),
(9, 'Akshay', 'CEO', NULL);
```

Find employees and their managers:

```sql
SELECT a.ename AS employee, a.designation, b.ename AS manager, b.designation 
FROM emp AS a 
JOIN emp AS b ON a.bid = b.eid;
```

---

## 🔍 Subqueries - "Inception in SQL"

A subquery is like an SQL query inside another SQL query—just like a dream within a dream! They are used when a query depends on another query for its results. 😵‍💫

### 📌 Types of Subqueries:
1. **Scalar Subquery** - Returns a single value. Like a "magic crystal ball" that predicts only one answer.
2. **Single-row Subquery** - Returns one row. Like asking, "Who's the top student in the class?"
3. **Multi-row Subquery** - Returns multiple rows. Like asking, "Who got more than 90 marks?"
4. **Correlated Subquery** - Runs once per row processed by the outer query. Like checking "Is this product the most expensive in its category?"

### 🔥 Example - Finding the Second-Highest Salary (The Classic)

```sql
SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
```

Here, the inner query finds the highest salary, and the outer query finds the max salary that is **less than** the highest salary, making it the second-highest salary. 🔥

---

## 🔑 Creating New Users in MySQL (a.k.a Giving People Database Passes)

So you want to create a new user? Here's how you do it:

```sql
CREATE USER 'user12'@'localhost' IDENTIFIED BY 'user12';
```

👉 *This creates a user named `user12` with password `user12` (feel free to use a more secure password unless you enjoy hackers).* 

**Granting Permissions:** (So the user doesn’t just stare at an empty database)

```sql
GRANT SELECT ON wit.emp TO 'user12'@'localhost';
GRANT SELECT, DELETE ON wit.emp TO 'user12'@'localhost';
GRANT SELECT, DELETE ON wit.* TO 'user12'@'localhost';
```

**Taking Away Permissions:** (Because power should be taken responsibly)

```sql
REVOKE SELECT, DELETE ON wit.* FROM 'user12'@'localhost';
REVOKE SELECT, DELETE ON wit.emp FROM 'user12'@'localhost';
```

---

## 🧪 SQL Meets Python - The "Odd Couple"

SQL and Python work together like Sherlock and Watson. Python is the brain, SQL is the database. Here's how to make them talk:

### Step 1: Install Dependencies (or nothing will work!)

```bash
pip install mysql-connector-python
pip install pymysql
```

### Step 2: Establish Connection (Don't ghost your database!)

```python
import pymysql

myconn = pymysql.connect(
    host='localhost',
    user='root',
    password='yourpassword'
)

print(myconn)  # If this prints something other than an error, congrats, you're connected!
```

### Step 3: Create a Cursor (Like an Intern That Runs SQL Queries)

```python
cur = myconn.cursor()
cur.execute('CREATE DATABASE pywit')
```

### Step 4: Use the Database

```python
myconn = pymysql.connect(
    host='localhost',
    user='root',
    password='yourpassword',
    database='pywit'
)
cur = myconn.cursor()
cur.execute('SHOW TABLES')
for i in cur:
    print(i)
```

### Step 5: Insert Data (Like Filling Out Forms, But Less Boring)

```python
cur.execute('INSERT INTO newhaha(id, name, age) VALUES(%s, %s, %s)', (1, 'Sakshi', 20))
myconn.commit()  # Don't forget this, or your data will disappear faster than free snacks at work!
```

---

## 🔍 Key Takeaways (a.k.a. "Don't Forget This, Seriously!")

- **Always close your database connection!**
  ```python
  myconn.close()
  ```
- **Use `commit()` after insert/update/delete operations.**
- **Always handle exceptions, or your code will cry.**
  ```python
  try:
      cur.execute('SELECT * FROM users')
  except Exception as e:
      print("Oops!", e)
  ```
- **Use parameterized queries to avoid SQL Injection.**
- **Natural Join is like a blind date; it assumes things will match!**
- **SELF JOIN is like looking in the mirror and talking to yourself.**
- **Grant only necessary permissions to users!**
- **INNER JOIN is the VIP section – only matching records get in.**

---

## 🚀 Final Words

If you made it this far, congrats! You're now on your way to mastering SQL and Python like a boss! 😎 Keep practicing, break some queries (intentionally, of course), and happy coding! 

> "A database is only as smart as the queries you run on it!" 

---

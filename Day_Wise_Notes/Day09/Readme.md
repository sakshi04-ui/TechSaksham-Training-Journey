# 📌 Day 09 - Python & MySQL Integration

## 🚀 Fetching Data in Python
- 🔹 **Fetching one record:** `.fetchone()`
- 🔹 **Fetching multiple records:** `.fetchall()`

## 🛠️ Dynamic Table Creation
- ✅ Initially, table creation had predefined parameters ❌ (Not future-proof)
- ✅ Upgraded to take column names dynamically as a list 🏗️
- ✅ Used `join()` to format column names with `,` ➡️ Now fully dynamic ⚡

## 🏷️ Table Modifications
- ✏️ **Rename Table** using a function
- ➕ **Add a new column** dynamically
- 🔄 **Rename a column** dynamically
- 🔄 **Modify column datatype** (e.g., `INT` ➡️ `VARCHAR`)
- ❌ **Delete (Drop) a Table**
- 🚮 **Truncate Table** (Delete values but keep structure)

## 📥 Inserting & Deleting Data
- ✅ **Insert Data (Single Record)** 📝
- ✅ **Delete Row using `id` or `name`** 🗑️
- ✅ **Update a single value in a row** 🔄
- ✅ **Insert multiple records dynamically** 🔥 (Modified in afternoon session)

## 🔍 Filtering Data
- 📌 **Apply conditions on Name Column** (Start/End filtering)

---

# 🎯 **Case Study: Student Marks Evaluation System**
### 🏆 **Goal:** Retrieve student marks from MySQL, calculate the average, and classify performance.

## 📌 **Approach:**
1️⃣ **🔗 Establish Database Connection**
   - Use `pymysql` to connect to MySQL (`pywit` database) and initialize a cursor.

2️⃣ **📥 Take User Input**
   - Accept **Name** (for display) and **Seat Number** (for fetching records).

3️⃣ **📊 Fetch Data from Database**
   - Query the `marks` table to retrieve subject-wise marks for the given seat number.

4️⃣ **📈 Process & Compute Average**
   - Extract individual subject marks, display them, and compute the **average score**.

5️⃣ **🎯 Classify Performance**
   - Categorize based on predefined thresholds:
     - 🏅 **Extraordinary** (Score > 90)
     - 🌟 **Excellent** (Score 75-90)
     - 📊 **Average** (Score 50-75)
     - ✅ **Pass** (Score 35-50)
     - ❌ **Fail** (Score < 35)

💡 **Why automate table creation?**
> Instead of manually creating tables repeatedly, this dynamic function allows us to create and modify tables efficiently in the future! 🔄⚡

## 🤔 Why Solve This Problem?
- At first, creating functions for table operations may seem unnecessary.
- However, writing the logic once makes future tasks much simpler!
- This approach reduces redundancy and ensures scalability in database management. 🚀


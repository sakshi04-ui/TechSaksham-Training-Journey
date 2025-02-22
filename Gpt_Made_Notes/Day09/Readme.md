# 📌 Day 09 - Python & MySQL Integration

## 🚀 Fetching Data in Python
- 🔹 **Fetching one record:** `.fetchone()` (Like sneaking a cookie from the jar 🍪, hoping no one notices!)
- 🔹 **Fetching multiple records:** `.fetchall()` (Like grabbing the whole cookie jar 😋 and hoping for no consequences!)

## 🛠️ Dynamic Table Creation
- ✅ **Initially, table creation had predefined parameters** ❌ (Not future-proof, like making a sandwich but only allowing cheese and no other fillings 🥪—what if I want pickles?!)
- ✅ **Upgraded to take column names dynamically as a list** 🏗️ (Now, you can add extra toppings to your sandwich as per your choice! 🥓🥑)
- ✅ **Used `join()` to format column names with `,`** ➡️ Now fully dynamic ⚡ (Like auto-filling your shopping list 🛒 so you never forget chocolate again!)

## 🏷️ Table Modifications
- ✏️ **Rename Table** using a function (Like renaming a WhatsApp group after a wild weekend 🏖️—"Study Group" ➡️ "Legends of Last Night")
- ➕ **Add a new column** dynamically (Like adding an extra seat to your dinner table 🍽️ because your friend brought a plus-one unannounced!)
- 🔄 **Rename a column** dynamically (Like giving your pet a new name after realizing "Fluffy" doesn’t suit a Rottweiler 🐶—welcome, "Brutus!")
- 🔄 **Modify column datatype** (e.g., `INT` ➡️ `VARCHAR`) (Like switching from 2G to 5G 🚀—because slow speeds are so last decade!)
- ❌ **Delete (Drop) a Table** (Like throwing away an old pair of torn shoes 👟—out with the old, in with the new!)
- 🚮 **Truncate Table** (Delete values but keep structure, like cleaning your fridge but keeping the shelves intact 🧽—because some things deserve a fresh start!)

## 📥 Inserting & Deleting Data
- ✅ **Insert Data (Single Record)** 📝 (Like adding one contact to your phone ☎️—"Mom" is always first, obviously!)
- ✅ **Delete Row using `id` or `name`** 🗑️ (Like removing that ex's number from your phone 📵—goodbye, regret!)
- ✅ **Update a single value in a row** 🔄 (Like changing your social media bio to something cooler 😎—"Aspiring astronaut" sounds better than "Binge-watcher")
- ✅ **Insert multiple records dynamically** 🔥 (Modified in afternoon session - Bulk shopping spree 🛍️—because why buy one when you can buy five?)

## 🔍 Filtering Data
- 📌 **Apply conditions on Name Column** (Start/End filtering, like searching your Netflix watchlist 🎬 for that show you swear you saved but never actually did!)

---

# 🎯 **Case Study: Student Marks Evaluation System**
### 🏆 **Goal:** Retrieve student marks from MySQL, calculate the average, and classify performance.

## 📌 **Approach:**
1️⃣ **🔗 Establish Database Connection**
   - Use `pymysql` to connect to MySQL (`pywit` database) and initialize a cursor. (Like opening the door to the treasure vault 🏦—just without the lasers!)

2️⃣ **📥 Take User Input**
   - Accept **Name** (for display) and **Seat Number** (for fetching records). (Like a teacher calling roll numbers 📢—except this time, your fate is in a database!)

3️⃣ **📊 Fetch Data from Database**
   - Query the `marks` table to retrieve subject-wise marks for the given seat number. (Like checking your exam scores online 📜—praying that your WiFi doesn’t crash at the suspenseful moment!)

4️⃣ **📈 Process & Compute Average**
   - Extract individual subject marks, display them, and compute the **average score**. (Like calculating how many pizzas you ate in a month 🍕—only to realize you should probably eat more salad 🥗)

5️⃣ **🎯 Classify Performance**
   - Categorize based on predefined thresholds:
     - 🏅 **Extraordinary** (Score > 90) (Like being the superhero of exams 🦸‍♂️—"Did you even study?" "No, I just paid attention!")
     - 🌟 **Excellent** (Score 75-90) (Like the top performer in a talent show 🎤—"I may not be #1, but I nailed it!")
     - 📊 **Average** (Score 50-75) (Like passing but knowing you could’ve done better 😅—"Next time, less Netflix, more notes!")
     - ✅ **Pass** (Score 35-50) (Like barely making it through airport security 🛂—"You’re lucky they didn’t check your suitcase twice!")
     - ❌ **Fail** (Score < 35) (Like trying to bake a cake and ending up with charcoal 🔥🎂—"At least you tried… kind of.")

💡 **Why automate table creation?**
> Instead of manually creating tables repeatedly, this dynamic function allows us to create and modify tables efficiently in the future! 🔄⚡ (Like setting up a smart home that does all the work for you 🤖—except this one doesn’t nag you about the lights!)

## 🤔 Why Solve This Problem?
- At first, creating functions for table operations may seem unnecessary. (Like bringing an umbrella on a sunny day ☀️☂️—but wait until the storm hits!)
- However, writing the logic once makes future tasks much simpler! (Like meal prepping for the entire week 🍱—effort now, rewards later!)
- This approach reduces redundancy and ensures scalability in database management. 🚀 (Like setting up autopay for bills so you never forget 💰—or worse, pay late fees!)


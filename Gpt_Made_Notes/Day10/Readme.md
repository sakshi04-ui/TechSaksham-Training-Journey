# 🚀 Day 10: Data Analytics Adventure 🎢

## 🎉 The Countdown Begins
Today, we embarked on our final module: **Data Analytics!** Only **2 days left** in our training, and the excitement is REAL! 😍

---

## 🤔 What is Data Analytics & Why Do We Need It?

- Simply put, **data analytics** = visualizing data 📊 to get insights in an easier & more attractive way!
- Also involves **cleaning data** 🧹 so unwanted things don’t mess up our results.
- **Key library needed:** `numpy` 💡

---

## 📦 Installing & Playing with NumPy

### 🛠 Installation:
```sh
pip install numpy
```

### 🔢 Creating & Playing with Arrays
1. **1D-Array:**
   - Print array 🖨️
   - Find length 📏
   - Check type 🔍
   - Positive & Negative Indexing 🔄
   - Find Dimension 📐

2. **2D-Array:**
   - **Heads up!** 🚨 Each bracket must contain **same number** of elements, or BOOM 💥 - ERROR!
   - Access index like a pro: `b[0,1]` ➡️ Prints value from 1st bracket, 2nd index!
   - Dimension? `.ndim`

3. **3D-Array:**
   - Print 🖨️
   - Length 📏
   - Dimension 📐
   - Update values (yes, you can change the world! 🌍)

🚀 **Challenge:** Find & update `13` in this wild array:
```python
a=np.array([[[[[[[[[[[[[[1,2,3],[11,22,33],[12,13,14]]]]]]]]]]]]]])
```
💡 **Hint:** You got this! 💪

---

## 📏 The Mighty `.shape` Method
**What does it do?** 🧐
- It tells **length of the array in each bracket**.
- Example:
  ```python
  b = np.array([[1,2,3],[11,22,33]])
  ```
  Here:
  - First bracket has **2** arrays → `2`
  - Second bracket has **3** elements each → `3`

---

## 🧩 `.reshape()` - Because Shape Matters!
- Think of `.reshape()` as **Lego blocks** 🏗️ – we rearrange the structure!
- **First value** → Parts we divide into 🔪
- **Second value** → Elements per part 🧩

---

## 🔗 Copy vs View – The Great Battle 🥊

- **Copy (`.copy()`)**: Once copied, they are **independent twins** 👯‍♂️ – changing one won’t affect the other!
- **View (`.view()`)**: More like **shadow clones** 🌀 – changes in one reflect in the other!

---

## 🎡 Iterating Through Arrays
- Use any loop! 🏁
- Example:
  ```python
  for i in a:
      print(i)
  ```

---

## 🛠 Combining Arrays – Concatenate FTW!
- Merge arrays like **Voltron 🤖** using `concatenate()`!

---

## 🎨 Data Visualization: Matplotlib Magic! ✨
### 📌 First, Install It:
```sh
pip install matplotlib
```

### 🖌️ Line Plot – First Steps:
- Define **Markers, Colors & Line Styles!** 🎨
- Example marker styles:
  - `o` → 🔵 Circle
  - `*` → ⭐ Star
  - `s` → 🔳 Square

- Example line styles:
  - `--` → Dashed 📏
  - `:` → Dotted 🎯

- **Customize further:**
  - `alpha` → Transparency 🌫️
  - `label` → Adds legends 🏷️
  - `zorder` → Layering control 📊

### 📊 Adding **Grid** for Better Readability
```python
plt.grid(color='gray', linestyle='--', linewidth=0.5)
```

### 🏷️ Add Title & Labels
```python
plt.title("Awesome Graph!", loc='left')
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
```

---

## 📊 Bar Charts – Because Bars Aren’t Just for Drinks 🍻
- **Vertical Bars:** `plt.bar()` 📏
- **Horizontal Bars:** `plt.barh()` 📐
- Customization:
  - `color`, `edgecolor`, `alpha`, `width` ⚡

---

## 🎯 Scatter Plot – Dot-to-Dot Magic 🎇
- **Customization:**
  - `marker`, `size (s)`, `color`, `alpha`, `edgecolor` 🎨

---

## 🥧 Pie Chart – Because Who Doesn’t Love Pie? 🥧
- **Add Legend for better clarity!** 📜

---

## 📈 Histograms – Understanding Distributions 📊
- **Customize bins, colors, transparency, line styles!** 🏗️
- **Example:**
  ```python
  plt.hist(data, bins=10, color='skyblue', edgecolor='black')
  ```

---

## 🐼 Pandas – The Ultimate Data Wrangler 📜
### Installation:
```sh
pip install pandas
```

### Creating **Pandas Series**
```python
s = pd.Series([1, 2, 3], index=['a', 'b', 'c'])
```
- Access elements using **position** (`s[0]`) or **labels** (`s['a']`) 🔎

### **DataFrames – Tabular Awesomeness** 📋
```python
df = pd.DataFrame({'Col1': [1, 2], 'Col2': [3, 4]})
```
- `df.info()` – Shows data insights 📜
- `df.describe()` – Summarizes stats 🏆
- `df.value_counts()` – Frequency analysis 📊

### 🧹 Handling Missing Values
```python
df.dropna()`   # Remove missing values ❌
df.fillna(0)`  # Fill missing values 🛠️
```

---

## 📂 CSV Files – The Real-World Data Store 🏢
- **Load CSV:** `pd.read_csv('file.csv')` 📥
- **Display rows:** `.head()` & `.tail()`
- **View full dataset:** `.to_string()`

---

## 🚗 CarDekho Dataset – Data Analytics in Action! 🏎️
📌 **Insights from CarDekho Analysis:**
- **Fuel Type Distribution** 🛢️ → Pie Chart
- **Transmission Type (Manual vs. Auto)** 🚗 → Bar Chart
- **Year-wise Car Sales** 📅 → Trends in Bar Chart
- **Seller Type Analysis** 🏢 → Who sells more, dealers or individuals?

---

## 🏆 Final Challenge: SQL Test! ⚔️
Did you survive the **Data Analytics Madness?** 🤯 Let me know how you felt about it! 🎉🚀

---

💡 **Remember:** Learning is FUN when you experiment! 🎮 So, try these out and become a **Data Science Wizard!** 🔮


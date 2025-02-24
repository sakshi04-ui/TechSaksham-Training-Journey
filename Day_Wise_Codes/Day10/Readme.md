# 📅 DAY 10

## 🎯 Data Analytics Training

### 🏁 Introduction
- Today started with **Data Analytics**, the last module in our training. Only **2 more days** were left, and we were **too excited**!
- **Discussion Point:** What is **Data Analytics**, and why do we need it?
  - **Answer:** Data analytics means **visualizing data** to get insights in a **simpler and attractive way** and cleaning data to remove **unwanted elements** that might affect the output.
  - **Required Library:** `numpy`

### 🔧 Installing Numpy
```bash
pip install numpy
```
- **Created 1D-array** using `numpy`
- Performed operations:
  - ✅ Print array
  - ✅ Find length
  - ✅ Type of array
  - ✅ Positive & Negative Indexing
  - ✅ Find dimension of array

### 🔹 2D-Array
- **Important:** Number of elements in each bracket **must be the same** to avoid errors.
- Operations performed:
  - ✅ Length of array
  - ✅ Access index using: `b[0,1]` *(prints value from the 1st bracket, 2nd index)*
  - ✅ Find dimension using `.ndim`

### 🔹 3D-Array
- Operations performed:
  - ✅ Print array
  - ✅ Find length
  - ✅ Find dimension
  - ✅ Update value: `print(a[0,1,1])` *(prints 22)*

### 🤔 Problem Solved
```python
# Find 13 and update it
a = np.array([[[[[[[[[[[[[[1,2,3],[11,22,33],[12,13,14]]]]]]]]]]]]]])
```

### 🔍 `.shape` Method
- Returns the **length of the array** in each bracket.
```python
b = np.array([[1,2,3],[11,22,33]])
```
- Here, **first bracket** has `2` brackets, and **second bracket** has `3` elements.

### 🔄 `.reshape()` Method
- **First value** = How much part to divide.
- **Second value** = How many elements per part.

### 🔃 Copy & View
- **Copy:** Independent instances; changes in one **do not affect** the other.
- **View:** Both are linked; changes in one **reflect** in the other.

### 🔁 Iterate through Arrays
```python
for i in a:
    print(i)
```

### 🔗 Combine Two Arrays
```python
np.concatenate((arr1, arr2))
```

## 📊 Data Visualization with Matplotlib
### 🛠 Installing Matplotlib
```bash
pip install matplotlib
```
- **Basic Line Plot** 🖊️
- Customizations:
  - **marker**: Defines marker shape *(o, d, h, p, s, *)*
  - **markerfacecolor**: Colors the inner part of the marker.
  - **markeredgecolor**: Defines the border color.
  - **linestyle**: Defines line pattern *(dotted, dashed, solid)*.
  - **linewidth**: Adjusts thickness.
  - **color**: Defines line color.

### 📏 Grid Customization
- **axis:** `x`, `y`, `both`
- **linestyle:** Solid, Dashed, Dotted, Dash-dot
- **color:** Named, Hex, RGB
- **linewidth:** Adjusts thickness
- **alpha:** Transparency (0 - 1)
- **which:** Major, Minor, Both
- **visible:** `True` or `False`

### 📌 Adding Titles & Labels
```python
plt.title("Graph Title", loc='center')
plt.xlabel("X-Axis")
plt.ylabel("Y-Axis")
```

### 📊 Bar Graph
1️⃣ **bar()** - Vertical Bar Chart
2️⃣ **barh()** - Horizontal Bar Chart
- Customizations:
  - `color`, `edgecolor`, `linewidth`, `alpha`
  - `width` for bar width, `height` for bar height
  - `align` = `center` (default) or `edge`
- **Titles & Labels:** `plt.title()`, `plt.xlabel()`, `plt.ylabel()`

### 🎯 Scatter Plot
- **Purpose:** Visualize data points
- **Customizations:** `color`, `marker`, `s` (size), `edgecolor`, `linewidths`, `alpha`, `cmap`

### 🥧 Pie Chart
```python
plt.pie(data, labels=labels, autopct='%1.1f%%')
plt.legend()
```

## 🕛 Afternoon Session
### 📈 Histogram
- **Purpose:** Shows data distribution
- **Customization:**
  - `bins`, `color`, `edgecolor`, `linewidth`, `alpha`
  - `histtype` *(bar, step, stepfilled)*
  - `rwidth` (relative width of bars)
  - `cumulative=True` *(for cumulative frequency)*

## 📊 Pandas Library
### 🔧 Installing Pandas
```bash
pip install pandas
```

### 🔹 Pandas Series
- Create a **Series** from a list:
```python
pd.Series(a)
```
- Default index = **numeric (0,1,2...)**
- Custom index: `index=['a','b','c']`
- Access by position or label (`series['a']`)

### 🔹 DataFrames
- **Create DataFrame** from dictionary
```python
df = pd.DataFrame(data)
```
- Access column: `df['column_name']`
- Access row-column value: `df['column'][index]`
- **Display DataFrame Info:**
```python
df.info()  # Structure and missing values
df.describe()  # Statistical summary
df.value_counts()  # Count unique values
df.isnull()  # Find missing values
```
- **Handling Missing Data**
  - `.dropna()` → Removes NaN values
  - `.fillna(value)` → Replaces NaN with a value
  - `.drop(columns='col_name')` → Removes a column

### 📑 Working with CSV Files
```python
pd.read_csv('file.csv')  # Load CSV file
df.head(n)  # First n rows
df.tail(n)  # Last n rows
df.to_string()  # Display all rows
```

### 🔎 Data Analysis on `car_dekho.csv`
📌 **Insights from Analysis:**
1️⃣ **Fuel Type Distribution** (Pie Chart) - Petrol dominates.
2️⃣ **Transmission Type Analysis** (Bar Chart) - Manual vs. Automatic.
3️⃣ **Year-wise Car Sales** (Bar Chart) - Sales trends over the years.
4️⃣ **Seller Type Analysis** (Bar Chart + Grid) - Dealers vs. Individuals.

### ✅ Final Task: SQL Test Attempted 🎯

📢 **Try out the dataset analysis & let me know how you felt about it!** 🚀


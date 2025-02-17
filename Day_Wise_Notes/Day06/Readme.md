# Day 06 - Python Learning Journey 🚀

## 🌅 Morning Session

### 🔒 Encapsulation & Access Specifiers
- Learned about access specifiers: `private`, `public`, and `protected`.
- Trick to access private variables outside the class: `_ClassName__variableName` (e.g., `_A__amt`).
- Python is **loosely typed**.
- Declaring and calling private methods inside and outside the class.

### ⚠️ Debugging & Learning Moment
#### What happened in the original code?
```python
class A:
    def __init__(self, name):
        self.name = name
        print(self.name)

    def __show():  # ❌ Missing self, incorrect definition
        print("This is a private method…")
    
    __show()  # ❌ Calling a method without self

obj = A("Sakshi")
```
#### ❓ Unexpected Output:
```
This is private method…
Sakshi
```
#### 📌 Why did "This is private method…" print first?
- Python **executes class-level code immediately** when reading the class definition.
- `__show()` was called at the class level, causing it to run **before** any object was created.

#### ✅ Corrected Code:
```python
class A:
    def __init__(self, name):
        self.name = name
        print(self.name)
        self.__show()  # ✅ Now, it runs when an object is created

    def __show(self):  # ✅ Added self
        print("This is a private method…")

obj = A("Sakshi")
```
#### ✅ Corrected Output:
```
Sakshi
This is a private method…
```
### 🔑 Key Takeaways
1. **Class body code runs immediately** upon definition.
2. **Methods need `self`** for proper execution.
3. **Private methods should be called inside instance methods.**

### 🏇 Polymorphism & Operator Overloading
- Learned about **operator overloading** and **magic methods**:
  - `__mul__` (Multiplication ✖️)
  - `__truediv__` (Division ➗)
  - `__sub__` (Subtraction ➖)
  - `__gt__` (Greater Than ➕)
  - `__lt__` (Less Than 🔽)
  - `__eq__` (Equal to ✅)
  - `__add__` (Addition ➕)

### 🎭 Abstraction (Not useful for future projects)

### 🛑 Exception Handling

### 🚗 Mini Project: **CarDekho Clone (Basic Version)**
- **Car search** based on price range 💰
  - **Inputs:**
    - Minimum price 🔽
    - Maximum price 🔼

### 📂 File Handling (Modes & Operations)

---

## 🌇 Afternoon Session

### 📜 File Operations on `.txt` files
- Count **vowels** 🅰️
- Count **consonants** 🅱️
- Count **total words** 📖
- Count **total characters** 🔤
- Count **total lines** 📄
- **How to delete a file** 🗑️

### 📦 Packages, Modules & Libraries
- Learned how to **import user-defined modules** 📂

### 🎤 **Live Coding Challenge** (Students solving problems on stage)
- **Pattern Printing** 🎨
- **Perfect Number** 🔢
- **Kite Pattern** 🪁
- **Calendar Printing** 📆
- **Building Pattern Printing** 🏢
- **Find Area using Arnold's Formula** 📏
- **Generate Password using `random` function** 🔑
- **Password Strength Checker** 🔥

---

## 🎯 Summary
**Overall, the session was great!** 🤩
- **Gained deeper insights into file handling** 📄
- **Hands-on practice with real-world problems** 🔥
- **Explored object-oriented programming in-depth** 👨‍💻

💡 **Excited for the next session!** 🚀

# 🚀 Day 06: Python Adventures - OOP, File Handling & More! 🐍

## 🌞 Morning Session: Deep Dive into OOP 🏊‍♂️

### 🎭 Encapsulation - The Art of Hiding Secrets 🤫
- Learnt about **access specifiers**:
  - `public` - Anyone can access! Like an open fridge 🍕.
  - `protected` - Only family members (subclasses) can access! 🏡.
  - `private` - Top-secret, hidden vault 🔐!
- Trick to access private variables **(Shh... Don’t tell Python! 🤫)**: Use `_ClassName__variableName` like `_A__amt`.
- Python is **loosely typed** – It’s chill, no need to declare types explicitly! 😎
- Private methods - Can be called **inside** the class but are hidden outside. 🔒

### 🤯 Debugging Shock - "Why is my method running before I even create an object?!" 🧐

💥 **What Happened?**
```python
class A:
    def __init__(self, name):
        self.name = name
        print(self.name)
    
    def __show():  # ❌ Missing self!
        print("This is a private method…")
    
    __show()  # ❌ This runs at class level, oops!

obj = A("Sakshi")
```

😱 **Unexpected Output:**
```
This is private method…
Sakshi
```

🔍 **Why?**
- Python executes the class body **before** creating objects.
- `__show()` was **called at class level**, so it ran before any object was even made! 🤦‍♂️

✅ **Fixed Code:**
```python
class A:
    def __init__(self, name):
        self.name = name
        print(self.name)
        self.__show()  # ✅ Call private method properly
    
    def __show(self):  # ✅ Add 'self' to make it work inside class
        print("This is a private method…")

obj = A("Sakshi")
```
**Correct Output:**
```
Sakshi
This is a private method…
```

🔑 **Takeaways:**
1. **Code inside a class runs immediately** - Python doesn’t wait for you! 🏃‍♂️💨
2. **Methods need `self`** or they won’t behave like instance methods.
3. **Private methods should be called within other methods** (not in the class body!).

---

### 🎭 Polymorphism - Python’s Shape-Shifter! 🦸‍♂️
Learnt about **operator overloading** using magic methods:
| Operator | Magic Method | Funny Example 😆 |
|----------|--------------|-----------------|
| `*` | `__mul__()` | `obj1 * obj2` (Multiply two objects like magic! ✨) |
| `/` | `__truediv__()` | `obj1 / obj2` (Slice objects like a cake 🎂) |
| `-` | `__sub__()` | `obj1 - obj2` (Subtract objects, like canceling weekend plans 😭) |
| `>` | `__gt__()` | `if obj1 > obj2:` (Compare like "Am I taller than you? 🤔") |
| `<` | `__lt__()` | `if obj1 < obj2:` (Compare like "Who’s younger? 🎂") |
| `==` | `__eq__()` | `if obj1 == obj2:` (Check if objects are twins! 👯) |
| `+` | `__add__()` | `obj1 + obj2` (Like merging two ice creams 🍦 + 🍫 = 😋!) |

---

### 🎭 Abstraction - "Not Useful for Now, But Sounds Cool!" 😆

---

### 🚨 Exception Handling - Saving Our Code from Exploding 💥
- Learnt how to handle errors like a pro using `try-except` blocks. 🛠️

---

### 🚗 Project: Mini **Car Search App** - Like CarDekho, but Basic 🚙
🔍 **Features:**
1. **Input:**
   - Minimum price
   - Maximum price
2. **Output:**
   - List of cars in the given range! 🚘

---

## 🌞 Afternoon Session: File Handling - "Let's Mess with Some Text Files!" 📂📝

### 🏗️ File Operations:
✅ Open & Read a File 📖  
✅ Write & Append Data ✍️  
✅ Close the File (Because we are well-mannered! 😇)  
✅ Delete a File (Poof! Gone! 🎩✨)

🔍 **Cool File Tasks We Did:**
- Count **vowels** 🅰️
- Count **consonants** 🅱️
- Count **words** 📖
- Count **characters** 🔤
- Count **lines** 📜

---

### 📦 Packages, Modules & Libraries - "Python’s ToolBox!" 🛠️
- Learnt how to **import user-defined modules** like a wizard! 🧙‍♂️

---

### 🎤 Student Code-Solving Session - "Live Coding Battle!" ⚔️
- **Pattern Printing** 🏛️
- **Perfect Number** 🔢
- **Kite Shape Printing** 🪁
- **Calendar Printing** 📅
- **Building Pattern Printing** 🏗️
- **Find Area using Arnold’s Formula** 🤓
- **Generate Random Password & Check Strength** 🔐

---

### 🎯 **Final Thoughts:**
🚀 Today was packed with learning - **Encapsulation, Polymorphism, File Handling, and Fun Projects!**  
💡 Best part? **Debugging a weird issue & learning execution order!**

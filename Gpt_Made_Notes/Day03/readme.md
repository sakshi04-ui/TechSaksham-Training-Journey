### **Day 03: Python Learning**

#### **Morning Session**

**Introduction to Python**  
- **Founder**: Guido Van Rossum  
- **Year of Creation**: 1991  

**Key Features of Python**:  
1. **Open-source**: Free to use and distribute, with active community support.  
2. **Platform-independent**: Code runs on multiple platforms without modification.  
3. **Object-Oriented Programming (OOP)**: Enables structured and reusable code.  
4. **Interpreted**: Code is executed line-by-line, which simplifies debugging.  
5. **Dynamically Typed**: No need to declare variable types; Python infers them.  
6. **Versatile**: Used in web development, data science, automation, and more.  

---

#### **Understanding Data Types and Memory Allocation**  

In Python:  
- Variable names are stored in the **stack**.  
- Their **IDs (addresses)**, which point to the actual values, are stored in the **heap**.  

Example:  
```python
a = 1  
b = 1  
print(id(a))  # Example Output: 140730087762360  
print(id(b))  # Example Output: 140730087762360  

c = 3  
print(id(c))  # Example Output: 140730087762424  
```
**Observation**:  
- `a` and `b` have the same memory location because they share the same value.  
- `c` points to a different memory location since its value is unique.  

---

#### **Installing Jupyter Notebook Without Anaconda**  

1. Install **Python3** from [python.org](https://www.python.org).  
2. Open Command Prompt and run: `pip install notebook`.  
3. Start Jupyter Notebook with: `jupyter notebook`.  

---

#### **Basic Python Operations**

**Hello World in Jupyter**:  
```python
print("Hello, World!")
```  

**Printing Stars Using Multiplication**:  
```python
print(100 * "*")  # Output: 100 stars  
print(1000 * "*")  # Output: 1000 stars  
```  

**Printing in a Single Line**:  
```python
print("*", end="")  
print("*", end="")  
print("*", end="")  
# Output: ***  
```  

---

#### **String Slicing and Methods**  

**String Slicing Syntax**:  
```python
variable[start:end:step]
```  

**Common String Methods**:  
1. `lower()` – Converts all characters to lowercase.  
2. `upper()` – Converts all characters to uppercase.  
3. `title()` – Capitalizes the first letter of each word.  
4. `capitalize()` – Capitalizes the first letter of the string.  

---

#### **Multi-Collection Data Types**

**1. List**  
- Stores multiple values of different types.  
- Allows duplicate values.  
- Mutable (can be modified).  
- Supports both positive and negative indexing.  
- Defined using square brackets `[]`.  

**Common Operations on Lists**:  
- **Create**: `a = [1, 2, 3]` or `list([1, 2, 3])`  
- **Update**: `a[0] = 10`  
- **Delete**: `del a[0]`, `a.remove(value)`, `a.pop(index)`  
- **Add**: `a.append(value)`, `a.insert(index, value)`  

**Advanced Problems Solved**:  
1. Accessing and updating deeply nested values:  
   ```python
   a = [[["a", [1, 2, [[0, 2, "bb", [12, 11, 33]]]]]]]
   ```  
2. Transforming nested structures with custom logic.

---

**2. Tuple**  
- Immutable (cannot be changed).  
- Allows duplicate values.  
- Can store multiple values of different types.  
- Defined using round brackets `()`.  

**Key Operations**:  
- Access elements using indexing.  
- Combine two tuples using the `+` operator.  

---

**3. Dictionary**  
- Stores data in key-value pairs.  
- Keys must be unique, but values can be duplicated.  
- Defined using curly braces `{}`.  

**Common Methods**:  
- `.values()` – Retrieves all values.  
- `.keys()` – Retrieves all keys.  
- `.items()` – Retrieves key-value pairs as tuples.  
- `len(dict)` – Finds the number of key-value pairs.  
- Update values: `dict.update({"key": "new_value"})`  
- Add new key-value pair: `dict["new_key"] = value`  
- Delete: `del dict["key"]`  

---

**4. Set**  
- Unordered collection of unique values.  
- Defined using curly braces `{}`.  

**Key Properties**:  
- Does not allow duplicate elements.  
- Elements appear in random order when printed.  
- Pop operation removes an unpredictable element.  

---

#### **Conditional Statements**  

**1. If-Else Statement**  
```python
if condition:  
    expression  
else:  
    expression  
```  

**2. If-Elif-Else Statement**  
```python
if condition:  
    expression  
elif condition:  
    expression  
else:  
    expression  
```  

---

#### **Loops**  

**1. While Loop**  
- Syntax:  
  ```python
  initialization  
  while condition:  
      expression  
      increment  
  ```  

**2. For Loop**  
- Syntax:  
  ```python
  for variable in range(start, end, step):  
      expression  
  ```  
- Defaults:  
  - Start = 0  
  - Step = 1  
  - End is exclusive (`end - 1`).  

---

#### **Problems Solved on Loops**

1. Print only even values from a list and return them as a new list.  
2. Implement bubble sort to sort a list.  
3. Find the second smallest number in a list with duplicates.  
4. Print a pattern:  
   ```
   A  
   B B  
   C C C  
   D D D D  
   ```  
5. Create a dynamic result generator using OOP.  
6. Build an ATM program with:  
   - PIN verification.  
   - Three attempts before account blocking.  
   - Display of notes distribution (500, 200, 100).  


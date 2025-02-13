**Day 03**  

**Morning Session**  

**Introduction to Python**  
- **Founder**: Guido Van Rossum (1991)  

**Definition and Features**:  
1. Open-source  
2. Platform-independent  
3. Object-Oriented Programming (OOP)  
4. Interpreted  
5. Dynamically typed  
6. Versatile  

**Understanding Data Types and Memory Allocation**  
- Var name is stored in stack and infront of it its id is present we can say that id means address of the var value in heap
- Example:  
  ```  
  a = 1  
  b = 1  
  print(id(a))  # Output: 140730087762360  
  print(id(b))  # Output: 140730087762360  
  c = 3  
  print(id(c))  # Output: 140730087762424  
  ```  
- `a` and `b` share the same memory location as they hold the same value, while `c` points to a different location.  

**Installing Jupyter Notebook**  
1. Install Python3 from python.org.  
2. Open Command Prompt and run: `pip install notebook`.  
3. Start Jupyter Notebook with: `jupyter notebook`.  

**Basic Examples in Python**  
- Printing 100 stars:  
  `print(100 * "*")`  

- Printing in the same line:  
  ```  
  print("*", end="")  
  print("*", end="")  
  print("*", end="")  
  # Output: ***  
  ```  

**String Slicing Syntax**:  
`variable[start:end:step]`  

**String Methods**:  
- `lower()`  
- `upper()`  
- `title()`  
- `capitalize()`  

**Multi-Collection Data Types**  

**1. List**  
- Stores multiple values of different types.  
- Allows duplicate values.  
- Mutable and supports both positive and negative indexing.  
- Defined using square brackets `[]`.  
- Operations:  
  - Create: `a = [1, 2, 3]` or `list([1, 2, 3])`  
  - Update: `a[0] = 10`  
  - Delete: `del a[0]`, `a.remove(value)`, `a.pop(index)`  
  - Add: `a.append(value)`, `a.insert(index, value)`  
- Solved nested list problems to access and update deeply nested values.  

**2. Tuple**  
- Immutable, allows duplicate values.  
- Accessed via index but cannot be modified.  
- Defined using round brackets `()`.  
- Operations:  
  - Create: `t = (1, 2, 3)`  
  - Combine: `t1 + t2`  

**3. Dictionary**  
- Stores data in key-value pairs.  
- Keys must be unique, values can be duplicated.  
- Defined using curly braces `{}`.  
- Operations:  
  - Access: `dict[key]`  
  - Add: `dict['new_key'] = value`  
  - Delete: `del dict[key]`, `dict.clear()`  
  - Get length: `len(dict)`  
  - Methods: `.values()`, `.keys()`, `.items()`.  

**Afternoon Session**  

**4. Set**  
- Unordered, does not allow duplicate values.  
- Defined using `{}` with elements separated by commas.  
- Pop removes an unpredictable element.  

**Conditional Statements**  
1. If-Else:  
   ```  
   if condition:  
       expression  
   else:  
       expression  
   ```  

2. If-Elif-Else:  
   ```  
   if condition:  
       expression  
   elif condition:  
       expression  
   else:  
       expression  
   ```  

**Loops**  

**1. While Loop**  
- Syntax:  
  ```  
  initialization  
  while condition:  
      expression  
      increment  
  ```  

**2. For Loop**  
- Syntax:  
  ```  
  for variable in range(start, end, step):  
      expression  
  ```  
- Defaults:  
  - Start = 0  
  - Step = 1  
  - End is exclusive (`end - 1`).  

**Problems on Loops**  
1. Print even numbers from a list as a new list.  
2. Sort a list using bubble sort.  
3. Find the second smallest number in a list (with duplicates allowed).  
4. Print a pattern:  
   ```  
   A  
   B B  
   C C C  
   D D D D  
   ```  
5. Create a dynamic result generator using OOP.  
6. Build an ATM program with:  
   - User PIN verification.  
   - Three attempts before blocking the account.  
   - Display of notes distribution (500, 200, 100).  

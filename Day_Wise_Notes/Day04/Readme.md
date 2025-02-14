# Python Workshop - Day 04

## Morning Session

### Focus: Solving Problems Using `while` Loop

Today, we focused exclusively on solving problems using the `while` loop, as it is often more challenging to understand compared to other loops.

#### Problem 1: Palindrome Number Checker

**Constraints:**

- Use `while` loop.
- No type casting allowed.
- No inbuilt functions for reversing.
- Constant space.

#### Problem 2: Armstrong Number Checker

**Approach:**

1. Find the length of the number using a `count` variable.
2. Raise each digit to the power of the length and add the results.
3. If the sum equals the original number, it is an Armstrong number.

#### Problem 3: Prime Number Checker

**Approach:**

1. Use two variables:
   - One to track whether the number is divisible.
   - Another for iteration.
2. Use a `while` loop to iterate up to `num - 1`.
3. If the number is divisible (tracked by `c = 1`), it is not prime; otherwise, it is prime.

#### Problem 4: Prime and Non-Prime Numbers (1 to 100)

- Separate prime and non-prime numbers into two lists.

#### Problem 5: Even Numbers from 1 to 1000 in 2 Lines

**Approach:**

- Use list comprehension to generate even numbers.

**What is List Comprehension?**

- List comprehension is a concise syntax to create lists.
- It generates a new list by applying an expression to each item in an existing iterable.

### Developing a Game: Word-Matching Challenge

#### **Game Overview:**

- **Objective:** Rearrange the letters of a randomly chosen word to form a valid word from a predefined list.
- **Challenge:** Validate the user’s input and assign points for correct matches.

#### **My Approach:**

1. Maintain two aligned lists: `original_words` and `rearranged_words`.
2. Use `random.choice()` to select a random word from `original_words`.
3. Take user input for the rearranged version.
4. Validate the input:
   - Check if the input exists in `rearranged_words`.
   - Compare indices to ensure it matches the correct pair.
5. Award points for correct matches (+3 points).
6. Continue the game in a loop until the user decides to stop.
7. Display the final score at the end.

#### **Instructor Approach:**

1. **Random Word Generation:**
   - Use a predefined list to ensure valid words.
   - Shuffle letters for the challenge.
2. **User Interaction:**
   - Display scrambled letters.
   - Allow the user to guess and quit anytime.
3. **Validation Logic:**
   - **Letter Matching:** Ensure each letter in the input can be "removed" from the scrambled list.
   - **Word Existence:** Verify the input word exists in the predefined list.
4. **Scoring Mechanism:**
   - **Reward:** +3 points for valid words different from the scrambled word.
   - **Penalty:** -3 points if the word matches the scrambled word.
   - **Attempts:** Deduct one attempt for incorrect matches.
5. **Game Continuation:**
   - Loop until the user quits or uses all attempts.
   - Introduce a new word each round.
6. **End Conditions:**
   - End the game gracefully with a final score summary.

---

## Afternoon Session

### Pattern Printing Problems

#### Problem 6: Print the Pattern

```
      a
    b b b
  c c c c c
 d d d d d d d
```

**Formula Used:**

- Spaces: `row - i - 1`
- Characters: `2 * i + 1` (using ASCII values)

### Restaurant Order System

#### **Overview:**

Create a simple menu-based ordering system for a restaurant.

#### **Logic:**

1. **Greeting:**
   - Display a welcome message and ask for the user’s name.
2. **Menu Storage:**
   - Store veg and non-veg menus in a dictionary as lists of strings in the format: `Item = Price`.
3. **Category Selection:**
   - Prompt the user to choose a category (veg or non-veg).
4. **Display Menu:**
   - Use a loop to display items from the selected category with indices.
5. **Order Input:**
   - Prompt the user to select an item by its index.
6. **Confirmation:**
   - Confirm the order and display the selected item with its price.

---

## Concepts Covered: Functions in Python

### What is a Function?

A function is a reusable block of code that performs a specific task. Functions must be called to execute.

### **Syntax:**

```python
def function_name():
    # expression
```

### **Naming Rules:**

- Function names are case-sensitive.
- Use `camelCase` or `snake_case` for naming.
- Avoid spaces in function names.

# Functions in Python

## Overview
A function is a block of reusable code that performs a specific task. Without calling or invoking a function, it cannot be executed. Functions in Python are defined using the `def` keyword.

### Syntax
```python
def function_name():
    # expression
```

### Naming Rules
- Function names are case-sensitive.
- Use camelCase or snake_case for naming functions.
- Avoid spaces in function names.

---

## Types of Functions

### 1. Simple Function
- **Definition**: A function without parameters that performs a task when called.
- **Example**:
  ```python
  def greet():
      print("Hello, welcome to Python!")
  greet()  # Output: Hello, welcome to Python!
  ```

---

### 2. Function with Parameter
- **Definition**: Accepts parameters to process specific data during its execution.
- **Example**:
  ```python
  def greet_user(name):
      print(f"Hello, {name}!")
  greet_user("Alice")  # Output: Hello, Alice!
  ```

---

### 3. Function with Positional Arguments
- **Definition**: Arguments are passed based on their position in the function call.
- **Example**:
  ```python
  def add(a, b):
      print(a + b)
  add(5, 3)  # Output: 8
  ```

---

### 4. Function with Keyword Arguments
- **Definition**: Arguments are passed with the parameter names for clarity.
- **Example**:
  ```python
  def introduce(name, age):
      print(f"My name is {name} and I am {age} years old.")
  introduce(age=25, name="Bob")  # Output: My name is Bob and I am 25 years old.
  ```

---

### 5. Default Parameterized Function
- **Definition**: Provides default values for parameters if none are passed during the call.
- **Example**:
  ```python
  def greet(name="Guest"):
      print(f"Hello, {name}!")
  greet()  # Output: Hello, Guest!
  greet("Alice")  # Output: Hello, Alice!
  ```

---

### 6. Arbitrary Function
#### a. Variable-Length Arguments (`*args`)
- **Definition**: Accepts any number of positional arguments as a tuple.
- **Example**:
  ```python
  def sum_all(*numbers):
      print(sum(numbers))
  sum_all(1, 2, 3, 4)  # Output: 10
  ```

#### b. Keyword Variable-Length Arguments (`**kwargs`)
- **Definition**: Accepts any number of keyword arguments as a dictionary.
- **Example**:
  ```python
  def display_info(**details):
      for key, value in details.items():
          print(f"{key}: {value}")
  display_info(name="Alice", age=25)  
  # Output:
  # name: Alice
  # age: 25
  ```

---

### 7. Lambda Function
- **Definition**: A short, anonymous function defined with the `lambda` keyword.
- **Example**:
  ```python
  square = lambda x: x * x
  print(square(5))  # Output: 25
  ```

---

### 8. Recursion Function
- **Definition**: A function that calls itself to solve a smaller sub-problem.
- **Example**:
  ```python
  def factorial(n):
      if n == 0:
          return 1
      else:
          return n * factorial(n - 1)
  print(factorial(5))  # Output: 120
  ```

---

### 9. Generator Function
- **Definition**: A function that yields values one at a time using `yield` instead of returning all at once.
- **Example**:
  ```python
  def generate_numbers():
      for i in range(1, 4):
          yield i
  for num in generate_numbers():
      print(num)  
  # Output:
  # 1
  # 2
  # 3
  ```


---

### Practice Problems

1. Create an addition function for `n` inputs.
2. Create a function to calculate the length of a list or tuple.
3. Create a function to convert lowercase to uppercase.
4. Create a function to capitalize a string.
5. Create a function to title-case a string.
6. Create a function to print numbers from 1 to 10.
7. Create a function to print tables from 1 to 10.
8. Square all numbers in a list.

---

## Additional Topics Learned:

- Lambda Functions
- Generator Functions




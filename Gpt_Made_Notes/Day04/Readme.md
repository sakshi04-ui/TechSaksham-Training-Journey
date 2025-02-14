### **Day 04** 📝

#### **Morning Session** 🌅  
Today’s goal: Solve all problems using **while loops** only, as they are slightly tricky to understand.  

---

#### **Problem-1**: Palindrome Number Checker 🔄  
**Constraints:**  
- Use only `while` loop.  
- **No typecasting allowed**.  
- Avoid using inbuilt functions like `reverse`.  
- Use **constant space**.  

---

#### **Problem-2**: Armstrong Number Checker ✨  
**Approach:**  
1. Use a `count` variable to determine the length of the number.  
2. Calculate the power of each digit by the length of the number.  
3. Sum these powered values.  
4. If the sum equals the original number, it is an **Armstrong number**.

---

#### **Problem-3**: Prime Number Checker 🔢  
**Approach:**  
1. Use two variables:  
   - One (`c`) to check if the number satisfies the conditions for primality.  
   - Another (`i`) for iteration.  
2. Use a `while` loop where `i` increments up to `num-1`.  
3. If the number enters the conditional block (`if` case), mark it as non-prime (`c=1`).  
4. If no conditions are met, the number is **prime**.

---

#### **Problem-4**: Classify Numbers from 1 to 100 into Prime and Non-Prime 📋  
- Generate two lists: one for prime numbers and another for non-prime numbers.  

---

#### **Problem-5**: Generate Even Numbers from 1 to 1000 Using Only 2 Lines 🟦  
**Approach:**  
- **List Comprehension**  
  **What is it?**  
  - A concise way to create lists by applying an expression to each item in an iterable (e.g., list, range).  
  **Example:**  
  ```python  
  even_numbers = [x for x in range(1, 1001) if x % 2 == 0]  
  ```  

---

### **Game Development** 🎮  

#### **Objective:**  
Create a **word-matching game** where players rearrange letters of a randomly chosen word to form a valid match from a predefined list.  

#### **Your Approach:**  
- Use two aligned lists (`original_words` and `rearranged_words`) to store the original and scrambled versions of words.  
- Use `random.choice()` to select a word.  
- Validate user input and compare with the correct scrambled word.  
- Scoring system:  
  - **+3 points** for correct matches.  
  - The game continues in a loop until the user decides to quit.  

#### **Instructor's Approach:**  
- Adds layers like:  
  - **Penalty (-3 points)** for reproducing the scrambled word.  
  - **Attempts system** for added challenge.  
  - Ensures validation includes letter matching and dictionary checks.  

---

#### **Afternoon Session** 🌇  

#### **Problem-6**: Print Alphabet Pattern 📖  
```plaintext  
      a  
    b b b  
  c c c c c  
d d d d d d d  
```  
**Formula Used:**  
1. For spaces: `row - i - 1`  
2. For characters: Use `chr(ascii_value)` and calculate `2 * i + 1`.  

---

#### **Problem-7**: Restaurant Order System 🍽️  

**Objective:**  
Create a menu-based system for a restaurant with the following:  
1. **Greet** the user and ask for their name.  
2. Provide categories: **Veg** and **Non-Veg**.  
3. Display menu items and prices.  
4. Allow the user to order via index selection.  
5. Confirm and display the selected order.  

**Logic:**  
- Store menu as dictionaries.  
- Use loops to display and process user input.  
- Confirm order with price.

---

#### **Learned Concept**: **Functions in Python** 🔧  
**Overview:**  
A reusable block of code that performs specific tasks. Functions must be called to execute.  

---

#### **Types of Functions:**  
1. **Simple Function:** Perform tasks without parameters.  
2. **Functions with Parameters:** Accept specific inputs.  
3. **Positional Arguments:** Based on input order.  
4. **Keyword Arguments:** Arguments passed with parameter names.  
5. **Default Parameters:** Provide default values.  
6. **Arbitrary Functions:** Handle variable-length arguments.  
   - `*args` for positional arguments.  
   - `**kwargs` for keyword arguments.  
7. **Lambda Function:** Anonymous, short functions.  
8. **Recursive Function:** Call themselves for sub-problems.  
9. **Generator Function:** Yield values one by one.  

---

#### **Additional Problems Solved:** 🧩  
- **Problem-8:** Function for addition of `n` inputs.  
- **Problem-9:** Function to calculate the length of a list/tuple.  
- **Problem-10:** Function to convert lowercase to uppercase.  
- **Problem-11:** Function to capitalize strings.  
- **Problem-12:** Function to title-case strings.  
- **Problem-13:** Function to print numbers from 1 to 10.  
- **Problem-14:** Function to print tables from 1 to 10.  
- **Problem-15:** Function to find the square of numbers in a list.  

---

### **Key Learnings:** 🌟  
- Mastered **while loops**.  
- Learned about **list comprehensions**.  
- Explored **functions** in-depth, including **lambda** and **generator functions**.  
